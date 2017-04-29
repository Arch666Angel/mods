game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  		if force.technologies["angels-oil-processing"].researched then
			force.recipes["mineral-oil-lubricant"].enabled = true
		end
end