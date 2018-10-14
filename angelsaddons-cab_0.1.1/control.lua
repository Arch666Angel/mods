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

script.on_event(defines.events.on_trigger_created_entity, function(event)
  if event.entity and event.entity.valid then
    if event.entity.name == "angels-cab-deploy-trigger" then
      -- vehicle wants to get deployed
      if cab.deploy(event.entity) then
        game.print("Deployed")
      end

    elseif event.entity.name == "angels-cab-undeploy-trigger" then
      -- vehicle wants to get undeployed
      if cab.undeploy(event.entity) then
        game.print("undeployed")
      end

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
