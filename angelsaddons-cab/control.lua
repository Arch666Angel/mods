local cab = require("src.cab")

--[[ DEBUG ONLY --
script.on_event(defines.events.on_player_joined_game, function(event)
  local player_index = event.player_index
  if player_index then
    local player = game.players[event.player_index]
    if player and player.valid and (player.name == "lovely_santa" or player.name == "Arch666Angel") then
      player.insert("angels-cab")
      player.insert("angels-cab-deploy-charge")
      player.insert("angels-cab-undeploy-charge")
      player.insert("angels-cab-energy-interface-mk1")
      player.insert("fission-reactor-equipment")

      player.insert("medium-electric-pole")
      player.insert("rocket-fuel")
    end
  end
end)
--]]

script.on_init(function()
  cab.init()
end)

local onConfigChanged = require("src.cab-config-changes")
script.on_configuration_changed(onConfigChanged)

function setOnTickState(status)
  if status == true then -- activate onTick
    if storage.vehicleData.deployedCabs and next(storage.vehicleData.deployedCabs) then
      script.on_event(defines.events.on_tick, cab.tick)
      storage.vehicleData.onTickActive = true
    end
  else -- status == false -- deactivate onTick
    if not storage.vehicleData.deployedCabs or (not next(storage.vehicleData.deployedCabs)) then
      script.on_event(defines.events.on_tick, nil)
      storage.vehicleData.onTickActive = false
    end
  end
end

script.on_load(function()
  -- sync mod status when player joins map
  setOnTickState(storage.vehicleData.onTickActive)
end)

script.on_event(defines.events.on_trigger_created_entity, function(event)
  if event.entity and event.entity.valid then
    if event.entity.name == "angels-cab-deploy-trigger" then
      -- vehicle wants to get deployed
      if cab.deploy(event.entity) then
        --game.print("Deployed")
        setOnTickState(true)
      end
    elseif event.entity.name == "angels-cab-undeploy-trigger" then
      -- vehicle wants to get undeployed
      if cab.undeploy(event.entity) then
        --game.print("Undeployed")
        setOnTickState(false)
      end
    end
  end
end)

script.on_event(defines.events.on_entity_died, function(event)
  if event.entity.name == "angels-cab" then
    if cab.destroyed(event.entity) then
      --game.print("Deployed")
      setOnTickState(false)
    end
  end
end)

--[[
script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity and
     event.created_entity.valid and
     event.created_entity.name == storage.vehicleData.entityName then
  end
end)
]]

script.on_event(defines.events.on_gui_opened, function(event)
  if event.entity and event.entity.name == "angels-cab" then
    cab.player_opened_cab(event.player_index, event.entity)
  end
end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
  if event.grid.prototype.name == "angels-cab" then
    if event.equipment == "angels-cab-energy-interface-mk1" then
      local player = game.get_player(event.player_index)
      local openedEntity = cab.get_opened_cab(event.player_index)
      if openedEntity and cab.is_deployed(openedEntity) then
        -- remove the item from the player
        local equipment = game.equipment_prototypes[event.equipment]
        if player.clear_cursor() then
          player.get_main_inventory().remove({ name = equipment.take_result.name, count = event.count })
        end
        -- put the item back
        for _ = 1, event.count do
          event.grid.put({ name = event.equipment })
        end
        -- inform the player
        player.print({ "angels-cab-messages.grid-noEnergyInterfaceRemoval", equipment.localised_name })
      end
    end
  end
end)

script.on_event(defines.events.on_player_placed_equipment, function(event)
  local function invalidPlacement(localisedMessage)
    -- give item back to the player
    local player = game.get_player(event.player_index)
    player.insert({ name = event.equipment.prototype.take_result.name, count = 1 })
    -- remove the item from the grid
    event.grid.take({ equipment = event.equipment })
    -- inform the player
    player.print(localisedMessage)
  end

  if event.equipment.name == "angels-cab-energy-interface-mk1" then
    if event.grid.count(event.equipment.name) > 1 then
      return invalidPlacement({
        "angels-cab-messages.grid-noSecondEnergyInterfaceInsertion",
        event.equipment.prototype.localised_name,
      })
    end
  elseif event.equipment.name == "angels-cab-energy-interface-mk2" then
    if event.grid.count(event.equipment.name) > 1 then
      return invalidPlacement({
        "angels-cab-messages.grid-noSecondEnergyInterfaceInsertion",
        event.equipment.prototype.localised_name,
      })
    elseif event.grid.count("angels-cab-energy-interface-mk1") < 1 then
      return invalidPlacement({
        "angels-cab-messages.grid-noPreviousEnergyInterfacePresent",
        event.equipment.prototype.localised_name,
      })
      -- TODO: check position of mk1 versus mk2
    end
  end
end)
