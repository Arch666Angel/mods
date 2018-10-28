local cab = require 'src.cab'

---[[-- DEBUG ONLY --
script.on_event(defines.events.on_player_joined_game, function(event)
  local player_index = event.player_index
  if player_index then
    local player = game.players[event.player_index]
    if player and player.valid and (player.name == "lovely_santa" or player.name == "Arch666Angel") then
      player.insert("angels-cab")
      player.insert("angels-cab-deploy-charge")
      player.insert("angels-cab-undeploy-charge")
      player.insert("angels-cab-energy-interface-vequip")
      player.insert("fusion-reactor-equipment")

      player.insert("medium-electric-pole")
      player.insert("rocket-fuel")
    end
  end
end)
--]]--

script.on_init(function()
  if not global.vehicleData then global.vehicleData = {} end
  global.vehicleData.version = 1.0
  global.vehicleData.onTickActive = false
  global.vehicleData.entityName = "angels-cab"
  global.vehicleData.positionIdentifier = "%u(%gx%g)"
end)

function setOnTickState(status)
  if status == true then -- activate onTick
    if global.vehicleData.deployedCabs and next(global.vehicleData.deployedCabs) then
      script.on_event(defines.events.on_tick, cab.tick)
      global.vehicleData.onTickActive = true
    end

  else -- status == false -- deactivate onTick
    if (not global.vehicleData.deployedCabs) or (not next(global.vehicleData.deployedCabs)) then
      script.on_event(defines.events.on_tick, nil)
      global.vehicleData.onTickActive = false
    end
  end
end

script.on_load(function()
  -- sync mod status when player joins map
  setOnTickState(global.vehicleData.onTickActive)
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
        --game.print("undeployed")
        setOnTickState(false)
      end

    end
  end
end)

script.on_event(defines.events.on_entity_died, function(event)
  if event.entity.name == "angels-cab" then
    if cab.destroyed(event.entity) then
      setOnTickState(false)
    end
  end
end)

--[[
script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity and
     event.created_entity.valid and
     event.created_entity.name == global.vehicleData.entityName then
  end
end)
]]--
