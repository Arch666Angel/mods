game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
	if force.technologies["angels-fluid-control"] and force.technologies["angels-fluid-control"].researched then
		force.recipes["storage-tank"].enabled = true
	end
end