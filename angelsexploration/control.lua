local gathering_turret = require("src.gathering-turret")
local turbo_bike = require("src.turbo-bike")
local tips_and_tricks_triggers = require("src.tips-and-tricks-triggers")
local debug_info = require("src.debug-info")

-- config changes
local on_configuration_changed = require("src.mod-config")
script.on_configuration_changed(on_configuration_changed)

-- initialisation
script.on_init(function()
  gathering_turret:on_init()
  turbo_bike:on_init()
  tips_and_tricks_triggers:on_init()
  debug_info:on_init()
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
  gathering_turret:on_damaged_entity(event.entity, event.cause, event.original_damage_amount)
  turbo_bike:on_damaged_entity(event.entity, event.cause, event.original_damage_amount)
end, {
  -- Event raise filter 1: damage to (inactive) gathering turret with 0 health remaining
  { mode = "or", filter = "name", name = "angels-gathering-turret" },
  { mode = "and", filter = "final-health", comparison = "=", value = 0 },
  -- Event raise filter 2: gathering damage to a potential gathering target
  { mode = "or", filter = "type", type = "land-mine" },
  { mode = "and", filter = "damage-type", type = "angels-gathering" },
  -- Event raise filter 3: turbo-bike taking damamge
  { mode = "or", filter = "type", type = "car" },
  { mode = "and", filter = "name", name = "angels-turbo-bike" },
  { mode = "and", filter = "damage-type", type = "impact" },
})
script.on_event(defines.events.on_entity_died, function(event)
  gathering_turret:on_entity_died(event.entity, event.loot)
  tips_and_tricks_triggers:on_entity_died(event.entity, event.cause)
end, {
  -- Event raise filter 1: gathering turret dies
  { mode = "or", filter = "name", name = "angels-gathering-turret" },
  -- Event raise filter 2: unit died
  { mode = "or", filter = "type", type = "unit" },
  -- Event raise filter 3: unit-spawner died
  { mode = "or", filter = "type", type = "unit-spawner" },
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
    gathering_turret:on_loot_dropped(
      event.surface_index,
      event.target_position or (event.target_entity and event.target_entity.position) or nil
    )
  end
end)

-- player created event
script.on_event(defines.events.on_player_created, function(event)
  debug_info:on_player_created(event.player_index)
end)

-- technology events
script.on_event(defines.events.on_research_finished, function(event)
  gathering_turret:on_tech_research_finished(event.research.force.name, event.research.name)
  tips_and_tricks_triggers:on_tech_research_finished(event.research.force.name, event.research.name)
end)
script.on_event(defines.events.on_research_reversed, function(event)
  gathering_turret:on_tech_research_reversed(event.research.force.name, event.research.name)
end)
script.on_event(defines.events.on_technology_effects_reset, function(event)
  gathering_turret:on_tech_research_reset(event.force.name)
  tips_and_tricks_triggers:on_tech_research_reset(event.force.name)
end)
