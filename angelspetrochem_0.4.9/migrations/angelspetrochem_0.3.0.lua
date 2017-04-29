game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["chlorine-processing-3"].researched then
		force.recipes["solid-salt-separation"].enabled = true
    end
    if force.technologies["oil-steam-cracking-2"].researched then
		force.recipes["steam-cracking-oil-residual"].enabled = true
    end
end