game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
		if force.technologies["angels-advanced-chemistry-1"].researched then
			force.recipes["solid-calcium-chloride"].enabled = true
		end
end