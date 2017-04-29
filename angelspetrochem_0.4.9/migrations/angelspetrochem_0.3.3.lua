game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["angels-nitrogen-processing-1"].researched then
		force.recipes["angels-air-filter"].enabled = true
		force.recipes["angels-air-filtering"].enabled = true
    end
    if force.technologies["angels-nitrogen-processing-2"].researched then
		force.recipes["angels-air-filter-2"].enabled = true
    end
    if force.technologies["gas-steam-cracking-2"].researched then
		force.recipes["steam-cracking-gas-residual"].enabled = true
    end
end