script.on_event(defines.events.on_player_created, function(event)
local iteminsert = game.players[event.player_index].insert
iteminsert{name="burner-ore-crusher", count=1}
end)
