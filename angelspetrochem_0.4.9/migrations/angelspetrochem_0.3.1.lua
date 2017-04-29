game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["angels-fluid-control"].researched then
		force.recipes["heavy-pump"].enabled = true
    end
end