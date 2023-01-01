for _, force in pairs(game.forces) do
  if force.technologies["geode-crystallization-2"] and force.technologies["geode-crystallization-1"] then
    force.technologies["geode-crystallization-2"].researched = force.technologies["geode-crystallization-1"].researched
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end
