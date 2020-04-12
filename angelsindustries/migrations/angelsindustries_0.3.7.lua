game.reload_script()

for index, force in pairs(game.forces) do
  if force.technologies["cargo-robots"].enabled and force.technologies["cargo-robots"].researched then
    force.technologies["angels-construction-robots"].researched = true
  end
  if force.technologies["cargo-robots-2"].enabled and force.technologies["cargo-robots-2"].researched then
    force.technologies["angels-construction-robots-2"].researched = true
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end
