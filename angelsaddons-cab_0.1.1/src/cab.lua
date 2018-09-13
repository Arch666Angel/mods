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
    if not global.vehicleData.deployedCabs[identifier] then -- not deployed yet

      -- check if the vehicle is moving
      if deployedCab["angels-cab"].speed ~= 0 then
        -- inform player(s)
        for _,entity in pairs{
          deployedCab["angels-cab"].get_driver(),
          deployedCab["angels-cab"].get_passenger(),
        } do
          if entity and entity.valid then
            if entity.is_player() then
              entity.print{"messages.angels-cab-deploy-driveSpeed"}
            elseif entity.type == "player" and entity.player and entity.player.valid then
              entity.player.print{"messages.angels-cab-deploy-driveSpeed"}
            end
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

    else -- already deployed

      -- inform player(s)
      for _,entity in pairs{
        deployedCab["angels-cab"].get_driver(),
        deployedCab["angels-cab"].get_passenger(),
      } do
        if entity and entity.valid then
          if entity.is_player() then
            entity.print{"messages.angels-cab-deployspeed"}
          elseif entity.type == "player" and entity.player and entity.player.valid then
            entity.player.print{"messages.angels-cab-deploy-alreadyDeployed"}
          end
        end
      end

      -- give unused charge back
      deployedCab["angels-cab"].insert{
        name = "angels-cab-deploy-charge",
        count = 1,
      }
      return false
    end
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
    
    return false
  end,

}
