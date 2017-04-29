game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
		if force.technologies["angels-advanced-chemistry-1"].researched then
			force.recipes["liquifier-2"].enabled = true
		end
		if force.technologies["angels-advanced-chemistry-2"].researched then
			force.recipes["liquifier-3"].enabled = true
		end
		if force.technologies["angels-advanced-chemistry-3"].researched then
			force.recipes["liquifier-4"].enabled = true
		end
end