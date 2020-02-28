local techs = {"angels-platinum-smelting-1",
      	       "angels-platinum-smelting-2",
	       "angels-platinum-smelting-3"}

game.reload_script()

for index, force in pairs(game.forces) do
    force.reset_recipes()
    force.reset_technology_effects()

    for _, tech in ipairs(techs) do
    	if force.technologies[tech] then
	   force.technologies[tech].enabled = true
	end
    end
end
