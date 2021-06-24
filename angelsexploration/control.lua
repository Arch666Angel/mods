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
  gathering_turret:on_damaged_entity(event.entity, event.cause)
end, {
  -- Event raise filter 1: damage to (inactive) gathering turret with 0 health remaining
  {mode = "or", filter = "name", name = "angels-gathering-turret"},
  {mode = "and", filter = "final-health", comparison = "=", value = 0},
  -- Event raise filter 2: gathering damage to a potential gathering target
  {mode = "or", filter = "type", type = "land-mine"},
  {mode = "and", filter = "damage-type", type = "gathering"},
})
script.on_event(defines.events.on_entity_died, function(event)
  gathering_turret:on_entity_died(event.entity, event.loot)
end, {
  -- Event raise filter 1: gathering turret dies
  {mode = "or", filter = "name", name = "angels-gathering-turret"},
})
script.on_event(defines.events.on_player_mined_entity, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)
script.on_event(defines.events.on_robot_mined_entity, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)
script.on_event(defines.events.script_raised_destroy, function(event)
  gathering_turret:on_remove_entity(event.entity)
end)

-- custom script events
script.on_event(defines.events.on_script_trigger_effect, function(event)
  if event.effect_id == "angels_gathering_turret_start_collecting_trigger" then
    gathering_turret:on_loot_dropped(event.surface_index, event.target_position or (event.target_entity and event.target_entity.position) or nil)
  end
end)