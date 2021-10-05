local debug_info = require "src.debug-info"

-- initialisation
script.on_init(function()
  debug_info:on_init()
end)

-- player created event
script.on_event(defines.events.on_player_created, function(event)
  debug_info:on_player_created(event.player_index)
end)