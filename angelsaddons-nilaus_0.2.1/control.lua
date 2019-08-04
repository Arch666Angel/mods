script.on_event(defines.events.on_player_created, function(event)
local iteminsert = game.players[event.player_index].insert
iteminsert{name="nilaus-truck", count=1}
end)

remote.add_interface("nilaustruck", { hauler_types = function() return {"nilaus-truck"} end, } )

