local starting_items = require("src.starting_items")
local welcome_dialog = require("src.welcome_dialog")
local ground_water_pump = require("src.ground_water_pump")
local sea_pump = require("src.sea-pump")

-- initialisation
local on_configuration_changed = require("src.mod-config")
script.on_configuration_changed(on_configuration_changed)
script.on_init(function()
  starting_items:on_init()
  sea_pump:on_init()
end)

script.on_event(defines.events.on_cutscene_cancelled, function(event)
  welcome_dialog:on_cutscene_cancelled(event.player_index)
end)

-- built events
script.on_event(defines.events.on_built_entity, function(event)
  sea_pump:on_build_entity(event.created_entity, {})
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
  sea_pump:on_build_entity(event.created_entity, event.tags or {})
end)
script.on_event(defines.events.script_raised_built, function(event)
  sea_pump:on_build_entity(event.entity, {})
end)
script.on_event(defines.events.script_raised_revive, function(event)
  sea_pump:on_build_entity(event.entity, {})
end)
script.on_event(defines.events.on_post_entity_died, function(event)
  sea_pump:on_build_entity(event.ghost, {})
end)

script.on_event(defines.events.on_player_rotated_entity, function(event)
  ground_water_pump:on_player_rotated_entity(event.entity, event.previous_direction, event.player_index)
end)

-- destroy events
script.on_event(defines.events.on_entity_died, function(event)
  sea_pump:on_remove_entity(event.entity)
end)
script.on_event(defines.events.on_player_mined_entity, function(event)
  sea_pump:on_remove_entity(event.entity)
end)
script.on_event(defines.events.on_robot_mined_entity, function(event)
  sea_pump:on_remove_entity(event.entity)
end)
script.on_event(defines.events.script_raised_destroy, function(event)
  sea_pump:on_remove_entity(event.entity)
end)

-- blueprint events
script.on_event(defines.events.on_player_setup_blueprint, function(event)
  sea_pump:on_blueprint_setup(event.player_index)
end)
script.on_event(defines.events.on_player_configured_blueprint, function(event)
  sea_pump:on_blueprint_setup(event.player_index)
end)

-- gui events
script.on_event(defines.events.on_gui_click, function(event)
  welcome_dialog:on_gui_click(event.element.name, event.player_index)
end)
