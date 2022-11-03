local starting_items = require("src.starting_items")
local welcome_dialog = require("src.welcome_dialog")
local ground_water_pump = require("src.ground_water_pump")

script.on_init(function()
  starting_items:on_init()
end)

script.on_event(defines.events.on_cutscene_cancelled, function(event)
  welcome_dialog:on_cutscene_cancelled(event.player_index)
end)

script.on_event(defines.events.on_gui_click, function(event)
  welcome_dialog:on_gui_click(event.element.name, event.player_index)
end)

script.on_event(defines.events.on_player_rotated_entity, function(event)
  ground_water_pump:on_player_rotated_entity(event.entity, event.previous_direction, event.player_index)
end)
