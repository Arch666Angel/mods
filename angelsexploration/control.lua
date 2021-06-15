local gathering_turret = require "src.gathering-turret"

-- initialisation
script.on_init(function()
  gathering_turret:on_init()
end)

-- behaviour events
script.on_event(defines.events.on_tick, function()
  gathering_turret:on_tick_update()
end)

-- built events
script.on_event(defines.events.on_built_entity, function(event)
  gathering_turret:on_build_entity(event.created_entity)
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
  gathering_turret:on_build_entity(event.created_entity)
end)
script.on_event(defines.events.script_raised_built, function(event)
  gathering_turret:on_build_entity(event.entity)
end)
script.on_event(defines.events.script_raised_revive, function(event)
  gathering_turret:on_build_entity(event.entity)
end)

-- destroy events
script.on_event(defines.events.on_entity_damaged, function(event)
  gathering_turret:on_damaged_entity(event.entity, event.final_health)
end, {
  {filter = "name", name = "gathering-turret"},
  {filter = "final-health", comparison = "=", value = 0},
})
script.on_event(defines.events.on_entity_died, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)
script.on_event(defines.events.on_player_mined_entity, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)
script.on_event(defines.events.on_robot_mined_entity, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)
script.on_event(defines.events.script_raised_destroy, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)

