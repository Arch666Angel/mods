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

    -- check if this vehicle is already deployed
    local identifier = string.format(global.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)
    if not global.vehicleData.deployedCabs then global.vehicleData.deployedCabs = {} end
    if global.vehicleData.deployedCabs[identifier] then

      -- inform player(s)
      for _,entity in pairs{
        deployedCab["angels-cab"].get_driver(),
        deployedCab["angels-cab"].get_passenger(),
      } do
        if entity.is_player() then -- player in godmode
          entity.print{"angels-cab-messages.deploy-alreadyDeployed"}
        elseif entity.type == "player" and entity.player then -- player in character
          entity.player.print{"angels-cab-messages.deploy-alreadyDeployed"}
        end
      end

      -- give unused charge back
      deployedCab["angels-cab"].insert{
        name = "angels-cab-deploy-charge",
        count = 1,
      }
      return false
    end

    -- check if the vehicle is moving
    if deployedCab["angels-cab"].speed ~= 0 then
      -- inform player(s)
      for _,entity in pairs{
        deployedCab["angels-cab"].get_driver(),
        deployedCab["angels-cab"].get_passenger(),
      } do
        if entity.is_player() then -- player in godmode
          entity.print{"angels-cab-messages.deploy-driveSpeed"}
        elseif entity.type == "player" and entity.player then -- player in character
          entity.player.print{"angels-cab-messages.deploy-driveSpeed"}
        end
      end

      -- give unused charge back
      deployedCab["angels-cab"].insert{
        name = "angels-cab-deploy-charge",
        count = 1,
      }
      return false
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

    -- check if this vehicle is already deployed
    local identifier = string.format(global.vehicleData.positionIdentifier, surfaceIndex, position.y, position.x)
    if not global.vehicleData.deployedCabs then global.vehicleData.deployedCabs = {} end
    if not global.vehicleData.deployedCabs[identifier] then -- not deployed yet
      -- inform player(s)
      for _,entity in pairs{
        deployedCab.get_driver(),
        deployedCab.get_passenger(),
      } do
        if entity.is_player() then -- player in godmode
          entity.print{"angels-cab-messages.undeploy-notDeployed"}
        elseif entity.type == "player" and entity.player then -- player in character
          entity.player.print{"angels-cab-messages.undeploy-notDeployed"}
        end
      end

      -- give unused charge back
      deployedCab.insert{
        name = "angels-cab-undeploy-charge",
        count = 1,
      }
      return false
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
    global.vehicleData.deployedCabs[identifier] = nil
    return true
  end,

}
