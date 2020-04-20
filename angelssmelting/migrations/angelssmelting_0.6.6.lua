for _, surface in pairs(game.surfaces) do
	local tiles = surface.find_tiles_filtered({name = "tutorial-grid"})
	local replace = {}
	for _, tile in pairs(tiles) do
		if not tile.hidden_tile then
			table.insert(replace, {name = "grass-1", position = tile.position})
		end
		table.insert(replace, {name = "tile-concrete-brick", position = tile.position})
	end
	surface.set_tiles(replace)
end
