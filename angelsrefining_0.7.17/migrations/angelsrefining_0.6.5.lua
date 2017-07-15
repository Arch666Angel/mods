game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
	if force.technologies["water-treatment"].researched and game.fluid_prototypes["water-green-waste"] then
		force.recipes["yellow-waste-water-purification"].enabled = true
		force.recipes["red-waste-water-purification"].enabled = true
		force.recipes["green-waste-water-purification"].enabled = true
		force.recipes["greenyellow-waste-water-purification"].enabled = true
	end
end