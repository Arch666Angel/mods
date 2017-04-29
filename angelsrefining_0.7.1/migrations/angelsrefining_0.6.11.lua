game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  	if force.technologies["angels-fluid-barreling"].researched then
		force.recipes["empty-barrel"].enabled = true
	end
end