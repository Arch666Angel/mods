return {

  deploy = function(entity)
    -- get info out of the trigger entity
    local surface = entity.surface
    local surfaceIndex = surface.index
    local position = {
      x = math.floor(entity.position.x) + .5,
      y = math.floor(entity.position.y) + .5,
    }
    entity.destroy()

    -- find vehicle that wants to get deployed
    local deployedCab = {}
    deployedCab["angels-cab"] = surface.find_entities_filtered{
      name = "angels-cab",
      type = "car",
      area = {{x = position.x - 1, y = position.y - 1},{x = position.x + 1, y = position.y + 1}},
      limit = 1,
    }[1]
    if (not deployedCab["angels-cab"]) or (not deployedCab["angels-cab"].valid) then
      game.print("Unknown error: Could not not find vehicle.")
      return false
    end

    local function cannotDeploy(cab, localisedMessage)
      -- inform player(s)
      for _,entity in pairs{
        cab.get_driver(),
        cab.get_passenger(),
      } do
        if entity.is_player() then -- player in godmode
          entity.print{localisedMessage}
        elseif entity.type == "player" and entity.player then -- player in character
          entity.player.print{localisedMessage}
        end
      end

      -- give unused charge back
      cab.insert{
        name = "angels-cab-deploy-charge",
        count = 1,
      }
      return false
    end

    -- check if this vehicle is already deployed
    local identifier = string.format(global.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)
    if not global.vehicleData.deployedCabs then global.vehicleData.deployedCabs = {} end
    if global.vehicleData.deployedCabs[identifier] then
      return cannotDeploy(deployedCab["angels-cab"], "angels-cab-messages.deploy-alreadyDeployed")
    end

    -- check if the vehicle is moving
    if math.abs(deployedCab["angels-cab"].speed) >= 0.1/216 then
      return cannotDeploy(deployedCab["angels-cab"], "angels-cab-messages.deploy-driveSpeed")
    else
      deployedCab["angels-cab"].speed = 0
      deployedCab["angels-cab"].effectivity_modifier = 0
      deployedCab["angels-cab"].consumption_modifier = 0
    end

    -- check if the vehicle has at least one interface equipment
    if not deployedCab["angels-cab"].grid.get_contents()["angels-cab-energy-interface-vequip"] then
      return cannotDeploy(deployedCab["angels-cab"], "angels-cab-messages.deploy-noVequip")
    end

    -- deploy the vehicle
    local force = deployedCab["angels-cab"].force
    for _, entityName in pairs{
      "angels-cab-energy-interface",
      "angels-cab-electric-pole",
    } do
      deployedCab[entityName] = surface.create_entity{
        name = entityName,
        position = position,
        force = force,
      }
    end
    deployedCab["angels-cab"].minable = false
    global.vehicleData.deployedCabs[identifier] = deployedCab
    return true
  end,

  undeploy = function(entity)
    -- get info out of the trigger entity
    local surface = entity.surface
    local surfaceIndex = surface.index
    local position = {
      x = math.floor(entity.position.x) + .5,
      y = math.floor(entity.position.y) + .5,
    }
    entity.destroy()

    -- find vehicle that wants to get undeployed
    local deployedCab = surface.find_entities_filtered{
      name = "angels-cab",
      type = "car",
      area = {{x = position.x - 1, y = position.y - 1},{x = position.x + 1, y = position.y + 1}},
      limit = 1,
    }[1]
    if (not deployedCab) or (not deployedCab.valid) then
      game.print("Unknown error: Could not not find vehicle.")
      return false
    end

    local function cannotUndeploy(cab, localisedMessage)
      -- inform player(s)
      for _,entity in pairs{
        cab.get_driver(),
        cab.get_passenger(),
      } do
        if entity.is_player() then -- player in godmode
          entity.print{localisedMessage}
        elseif entity.type == "player" and entity.player then -- player in character
          entity.player.print{localisedMessage}
        end
      end

      -- give unused charge back
      cab.insert{
        name = "angels-cab-undeploy-charge",
        count = 1,
      }
      return false
    end

    -- check if this vehicle is deployed
    local identifier = string.format(global.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)
    if not global.vehicleData.deployedCabs then global.vehicleData.deployedCabs = {} end
    if not global.vehicleData.deployedCabs[identifier] then -- not deployed yet
      return cannotUndeploy(deployedCab, "angels-cab-messages.undeploy-notDeployed")
    end

    -- undeploy the vehicle
    deployedCab = global.vehicleData.deployedCabs[identifier]
    for _, entityName in pairs{
      "angels-cab-energy-interface",
      "angels-cab-electric-pole",
    } do
      if deployedCab[entityName] and deployedCab[entityName].valid then
        deployedCab[entityName].destroy()
      end
    end
    deployedCab["angels-cab"].minable = true
    deployedCab["angels-cab"].effectivity_modifier = 1
    deployedCab["angels-cab"].consumption_modifier = 1
    global.vehicleData.deployedCabs[identifier] = nil
    return true
  end,

  tick = function()
    --game.print("tick tock")
    for _,deployedCab in pairs(global.vehicleData.deployedCabs) do
      local energyInterface = deployedCab["angels-cab-energy-interface"]
      if energyInterface and energyInterface.valid then

        local energyRequired = 100000000-1 -- max energy here (100 MJ)
        if energyInterface.energy < energyRequired then -- needs more energy
          local angelsCab = deployedCab["angels-cab"]
          if angelsCab and angelsCab.valid and angelsCab.grid.get_contents()["angels-cab-energy-interface-vequip"] then

            local energyRequired = energyRequired - energyInterface.energy -- will be a positive number
            for _,equipment in ipairs(angelsCab.grid.equipment) do
              if equipment.name == "angels-cab-energy-interface-vequip" then
                print(energyInterface.energy)
                if equipment.energy >= energyRequired then
                  equipment.energy = equipment.energy - energyRequired
                  energyInterface.energy = energyInterface.energy + energyRequired
                  break
                else
                  energyInterface.energy = energyInterface.energy + equipment.energy
                  energyRequired = energyRequired - equipment.energy
                  equipment.energy = 0
                end
              end
            end

          end
        end

      end
    end
  end,

  destroyed = function(entity)
    if not global.vehicleData.deployedCabs then return false end

    -- get info out of the entity
    local surfaceIndex = entity.surface.index
    local position = {
      x = math.floor(entity.position.x) + .5,
      y = math.floor(entity.position.y) + .5,
    }
    local identifier = string.format(global.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)

    local deployedCab = global.vehicleData.deployedCabs[identifier]
    if not deployedCab then return false end

    -- destroy the other entities
    for _, entityName in pairs{
      "angels-cab-energy-interface",
      "angels-cab-electric-pole",
    } do
      if deployedCab[entityName] and deployedCab[entityName].valid then
        deployedCab[entityName].destroy()
      end
    end

    -- remove the destroyed cab from the list
    global.vehicleData.deployedCabs[identifier] = nil
    return true
  end,

}
