game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["chlorine-processing-3"].researched then
		force.recipes["gas-hydrogen-chloride-separation"].enabled = true
    end
end