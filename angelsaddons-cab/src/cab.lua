-------------------------------------------------------------------------------
-- convert settings to usable data
-------------------------------------------------------------------------------
local energyInterfaceSettings = require("prototypes/settings").equipment["energy-interface"]
local energyInterfaceTransferRates = {}
for tier, rate in pairs(energyInterfaceSettings.transferRates) do
  energyInterfaceTransferRates[string.format(energyInterfaceSettings.name, "-" .. tier)] = rate
end

-------------------------------------------------------------------------------
-- internal cab functions                                                    --
-------------------------------------------------------------------------------
local tick_getEnergyInterface = function(deployedCabData)
  for _, interfaceName in pairs({
    "angels-cab-energy-interface-mk1",
  }) do
    if deployedCabData[interfaceName] then
      return interfaceName, deployedCabData[interfaceName]
    end
  end
  return nil, nil
end

local tick_updateDeployedCab = function(deployedCabData)
  --log("------------------------------------------------------------------------------------------")
  local energyInterfaceName, energyInterface = tick_getEnergyInterface(deployedCabData)
  if energyInterface and energyInterface.valid then
    --log("Found a valid energy interface entity!")
    --log(string.format("    Interface name: %q", energyInterfaceName))
    --log(string.format("    Interface current energy: %i J", energyInterface.energy))
    local energyRequired = energyInterfaceTransferRates[energyInterfaceName] -- max energy here (500 kJ)
    --log(string.format("    Interface max energy    : %i J", energyRequired))

    if energyInterface.energy < energyRequired then -- needs more energy
      --log(string.format("        Interface requires more energy! Missing %i J (%i W)", energyRequired - energyInterface.energy, (energyRequired - energyInterface.energy)*60))
      local angelsCab = deployedCabData["angels-cab"]
      if angelsCab and angelsCab.valid and angelsCab.grid.count(energyInterfaceName) > 0 then
        --log("        There are modules to recharge this interface...")
        local energyRequired = energyRequired - energyInterface.energy -- will be a positive number (and never 0)

        for _, equipment in pairs(angelsCab.grid.equipment) do
          if equipment.name == energyInterfaceName then -- found the equipment grid module!
            --log("        Found a valid module to recharge this interface!")
            if equipment.energy >= energyRequired then
              equipment.energy = equipment.energy - energyRequired
              energyInterface.energy = energyInterface.energy + energyRequired
            else
              energyInterface.energy = energyInterface.energy + equipment.energy
              energyRequired = energyRequired - equipment.energy
              equipment.energy = 0
            end
            --log(string.format("    Interface current energy: %i J", energyInterface.energy))
            return
          end
        end -- end of finding the equipment grid modules
      end
    end -- end of requiring more energy
  end
end

-------------------------------------------------------------------------------
-- external cab functions, used in control.lua                               --
-------------------------------------------------------------------------------
return {

  init = function()
    if not storage.vehicleData then
      storage.vehicleData = {}
    end

    storage.vehicleData.version = 1.2
    storage.vehicleData.entityName = "angels-cab"
    storage.vehicleData.positionIdentifier = "%u(%gx%g)"

    storage.vehicleData.openedCabs = {}
    storage.vehicleData.onTickActive = false
  end,

  deploy = function(entity)
    -- get info out of the trigger entity
    local surface = entity.surface
    local surfaceIndex = surface.index
    local position = {
      x = math.floor(entity.position.x) + 0.5,
      y = math.floor(entity.position.y) + 0.5,
    }
    entity.destroy()

    -- find vehicle that wants to get deployed
    local deployedCab = {}
    deployedCab["angels-cab"] = surface.find_entities_filtered({
      name = "angels-cab",
      type = "car",
      area = { { x = position.x - 1, y = position.y - 1 }, { x = position.x + 1, y = position.y + 1 } },
      limit = 1,
    })[1]
    if not deployedCab["angels-cab"] or not deployedCab["angels-cab"].valid then
      game.print("Unknown error: Could not not find vehicle.")
      return false
    end

    local function cannotDeploy(cab, localisedMessage)
      -- inform player(s)
      for _, entity in pairs({
        cab.get_driver(),
        cab.get_passenger(),
      }) do
        if entity.is_player() then -- player in godmode
          entity.print(localisedMessage)
        elseif entity.type == "character" and entity.player then -- player in character
          entity.player.print(localisedMessage)
        end
      end

      -- give unused charge back
      cab.insert({
        name = "angels-cab-deploy-charge",
        count = 1,
      })
      return false
    end

    -- check if this vehicle is already deployed
    local identifier = string.format(storage.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)
    if not storage.vehicleData.deployedCabs then
      storage.vehicleData.deployedCabs = {}
    end
    if storage.vehicleData.deployedCabs[identifier] then
      return cannotDeploy(deployedCab["angels-cab"], { "angels-cab-messages.deploy-alreadyDeployed" })
    end

    -- check if the vehicle is moving
    if math.abs(deployedCab["angels-cab"].speed) >= 0.1 / 216 then
      return cannotDeploy(deployedCab["angels-cab"], { "angels-cab-messages.deploy-driveSpeed" })
    else
      deployedCab["angels-cab"].speed = 0
    end

    -- check if the vehicle has at least one interface equipment
    if deployedCab["angels-cab"].grid.count("angels-cab-energy-interface-mk1") == 0 then
      return cannotDeploy(
        deployedCab["angels-cab"],
        { "angels-cab-messages.deploy-noEnergyInterface", { "equipment-name.angels-cab-energy-interface", "MK1" } }
      )
    end

    -- deploy the vehicle
    local force = deployedCab["angels-cab"].force
    for _, entityName in pairs({
      "angels-cab-energy-interface-mk1",
      "angels-cab-electric-pole",
    }) do
      deployedCab[entityName] = surface.create_entity({
        name = entityName,
        position = position,
        force = force,
      })
    end
    deployedCab["angels-cab"].minable = false
    deployedCab["angels-cab"].effectivity_modifier = 0
    deployedCab["angels-cab"].consumption_modifier = 0
    storage.vehicleData.deployedCabs[identifier] = deployedCab
    return true
  end,

  undeploy = function(entity)
    -- get info out of the trigger entity
    local surface = entity.surface
    local surfaceIndex = surface.index
    local position = {
      x = math.floor(entity.position.x) + 0.5,
      y = math.floor(entity.position.y) + 0.5,
    }
    entity.destroy()

    -- find vehicle that wants to get undeployed
    local deployedCab = surface.find_entities_filtered({
      name = "angels-cab",
      type = "car",
      area = { { x = position.x - 1, y = position.y - 1 }, { x = position.x + 1, y = position.y + 1 } },
      limit = 1,
    })[1]
    if not deployedCab or not deployedCab.valid then
      game.print("Unknown error: Could not not find vehicle.")
      return false
    end

    local function cannotUndeploy(cab, localisedMessage)
      -- inform player(s)
      for _, entity in pairs({
        cab.get_driver(),
        cab.get_passenger(),
      }) do
        if entity.is_player() then -- player in godmode
          entity.print({ localisedMessage })
        elseif entity.type == "character" and entity.player then -- player in character
          entity.player.print({ localisedMessage })
        end
      end

      -- give unused charge back
      cab.insert({
        name = "angels-cab-undeploy-charge",
        count = 1,
      })
      return false
    end

    -- check if this vehicle is deployed
    local identifier = string.format(storage.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)
    if not storage.vehicleData.deployedCabs then
      storage.vehicleData.deployedCabs = {}
    end
    if not storage.vehicleData.deployedCabs[identifier] then -- not deployed yet
      return cannotUndeploy(deployedCab, "angels-cab-messages.undeploy-notDeployed")
    end

    -- undeploy the vehicle
    deployedCab = storage.vehicleData.deployedCabs[identifier]
    for _, entityName in pairs({
      "angels-cab-energy-interface",
      "angels-cab-electric-pole",
    }) do
      if deployedCab[entityName] and deployedCab[entityName].valid then
        deployedCab[entityName].destroy()
      end
    end
    deployedCab["angels-cab"].minable = true
    deployedCab["angels-cab"].effectivity_modifier = 1
    deployedCab["angels-cab"].consumption_modifier = 1
    storage.vehicleData.deployedCabs[identifier] = nil
    return true
  end,

  is_deployed = function(entity)
    if not storage.vehicleData.deployedCabs then
      return false
    end

    local identifier = string.format(
      storage.vehicleData.positionIdentifier,
      entity.surface.index,
      math.floor(entity.position.y) + 0.5,
      math.floor(entity.position.x) + 0.5
    )

    return (storage.vehicleData.deployedCabs[identifier] and true or false)
  end,

  tick = function()
    for _, deployedCab in pairs(storage.vehicleData.deployedCabs) do
      tick_updateDeployedCab(deployedCab)
    end
  end,

  destroyed = function(entity)
    if not storage.vehicleData.deployedCabs then
      return false
    end

    -- get info out of the entity
    local surfaceIndex = entity.surface.index
    local position = {
      x = math.floor(entity.position.x) + 0.5,
      y = math.floor(entity.position.y) + 0.5,
    }
    local identifier = string.format(storage.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)

    local deployedCab = storage.vehicleData.deployedCabs[identifier]
    if not deployedCab then
      return false
    end

    -- destroy the other entities
    for _, entityName in pairs({
      "angels-cab-energy-interface-mk1",
      "angels-cab-electric-pole",
    }) do
      if deployedCab[entityName] and deployedCab[entityName].valid then
        deployedCab[entityName].destroy()
      end
    end

    -- remove the destroyed cab from the list
    storage.vehicleData.deployedCabs[identifier] = nil
    return true
  end,

  player_opened_cab = function(playerIndex, entity)
    storage.vehicleData.openedCabs[playerIndex] = entity
  end,

  get_opened_cab = function(playerIndex)
    local entity = storage.vehicleData.openedCabs[playerIndex]
    if entity.valid then
      return entity
    else
      storage.vehicleData.openedCabs[playerIndex] = nil
      return nil
    end
  end,
}
