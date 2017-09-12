game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
	if force.technologies["fluid-handling"] then
	force.technologies["fluid-handling"].enabled = true
		if force.technologies["fluid-handling"].researched then
			force.recipes["barreling-pump"].enabled = true
		end
	end
end