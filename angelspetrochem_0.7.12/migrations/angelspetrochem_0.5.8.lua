game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["angels-nitrogen-processing-3"].researched then
		force.recipes["gas-nitrogen-monoxide"].enabled = true
    end
    if force.technologies["angels-nitrogen-processing-4"].researched then
		force.recipes["gas-dinitrogen-tetroxide"].enabled = true
		force.recipes["rocket-oxidizer-capsule"].enabled = true
		force.recipes["rocket-fuel-capsule"].enabled = true
		force.recipes["rocket-fuel"].enabled = true
    end
end