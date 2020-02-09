game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
		if force.technologies["angels-nitrogen-processing-1"].researched then
			force.recipes["gas-nitrogen-dioxide"].enabled = true
		end
end