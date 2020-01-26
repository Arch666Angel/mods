game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["basic-chemistry"].researched then
		force.recipes["dirt-water-separation"].enabled = true
    end
	if force.technologies["basic-chemistry-2"].researched then
		force.recipes["chemical-plant"].enabled = true
    end
	if force.technologies["angels-advanced-chemistry-2"].researched then
		force.recipes["chemical-plant-2"].enabled = true
    end
	if force.technologies["angels-advanced-chemistry-3"].researched then
		force.recipes["chemical-plant-3"].enabled = true
    end
	if force.technologies["angels-advanced-chemistry-4"].researched then
		force.recipes["chemical-plant-4"].enabled = true
    end
end