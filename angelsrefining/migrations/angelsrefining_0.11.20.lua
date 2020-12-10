for _, force in pairs(game.forces) do
  if force.technologies["geode-crystallization-2"] and force.technologies["geode-processing-3"] then
    force.technologies["geode-crystallization-2"].researched = force.technologies["geode-processing-3"].researched
    force.technologies["geode-crystallization-2"].researched = false
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end