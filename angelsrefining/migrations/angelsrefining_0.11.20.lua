for _, force in pairs(game.forces) do
  if force.technologies["geode-crystallization-2"] and force.technologies["geode-processing-3"] then
    force.technologies["geode-processing-3"].researched = force.technologies["geode-crystallization-2"].researched
    if force.technologies["gem-processing-1"] then
      force.technologies["geode-crystallization-2"].researched = force.technologies["gem-processing-1"].researched
    else
      force.technologies["geode-crystallization-2"].researched = false
    end
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end