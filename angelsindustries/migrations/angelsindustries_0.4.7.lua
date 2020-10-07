for _, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	force.reset_technology_effects()
end

if settings.startup["angels-enable-industries"].value or game.active_mods["bobplates"] then -- overhaul enabled
	for _, force in pairs(game.forces) do
		if force.technologies["deuterium-fuel-cell-2"] then
			force.technologies["deuterium-fuel-cell-2"].researched = false
			force.technologies["deuterium-fuel-cell-2"].enabled = false
		end
	end
end
