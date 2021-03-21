for _, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	force.reset_technology_effects()
	local nobobelectronics = true
	for name, _ in pairs(game.active_mods) do
		if name == "bobelectronics" then nobobelectronics = false
		end
	end
	if nobobelectronics == true then
		force.technologies["resin-1"].enabled = false
		force.technologies["resin-2"].enabled = false
		force.technologies["resin-3"].enabled = false
		force.technologies["resins"].enabled = false
		force.technologies["rubber"].enabled = false
		force.technologies["rubbers"].enabled = false
	end
end
