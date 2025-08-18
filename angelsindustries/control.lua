local tech_archive = require("src.tech-archive")

script.on_event(defines.events.on_player_created, function(event)
  tech_archive:on_player_created()
end)

script.on_event(defines.events.on_pre_player_died, function(event)
  tech_archive:on_pre_player_died(event.player_index)
end)

script.on_event(defines.events.on_player_respawned, function(event)
  tech_archive:on_player_respawned(event.player_index)
end)

script.on_event(defines.events.on_entity_died, function(event)
  tech_archive:on_entity_died(event.entity)
end)
