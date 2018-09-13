
---[[-- DEBUG ONLY --
script.on_event(defines.events.on_player_joined_game, function(event)
  local player_index = event.player_index
  if player_index then
    local player = game.players[event.player_index]
    if player and player.valid and (player.name == "lovely_santa" or player.name == "Arch666Angel") then
      player.insert("angels-cab")
      player.insert("angels-cab-deploy-charge")
      player.insert("angels-cab-undeploy-charge")

      player.insert("medium-electric-pole")
      player.insert("rocket-fuel")
    end
  end
end)
--]]--

script.on_init(function()
  if not global.vehicleData then global.vehicleData = {} end
  global.vehicleData.onTickActive = false
  global.vehicleData.entityName = "angels-cab"
end)

script.on_event(defines.events.on_trigger_created_entity, function(event)
  if event.entity and event.entity.valid then
    if event.entity.name == "angels-cab-deploy-trigger" then
      -- vehicle wants to get deployed

      -- get info out of the trigger
      local surface = event.entity.surface
      local position = {
        x = math.floor(event.entity.position.x) + .5,
        y = math.floor(event.entity.position.y) + .5,
      }
      local force = event.entity.force
      event.entity.destroy()

      -- build vehicle interface
      for _, entityName in pairs{
        "angels-cab-energy-interface",
        "angels-cab-electric-pole",
      } do
        surface.create_entity{
          name = entityName,
          position = position,
          force = force,
        }
      end

      game.print(string.format("deployed at (%g, %g)", position.x, position.y))

    elseif event.entity.name == "angels-cab-undeploy-trigger" then

      -- get info out of the trigger
      local surface = event.entity.surface
      local position = {
        x = math.floor(event.entity.position.x) + .5,
        y = math.floor(event.entity.position.y) + .5,
      }
      local force = event.entity.force
      event.entity.destroy()

      game.print(string.format("undeployed at (%g, %g)", position.x, position.y))

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
