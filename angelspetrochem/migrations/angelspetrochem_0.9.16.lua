for _, force in pairs(game.forces) do
  if force.technologies["angels-sulfur-processing-4"] and force.technologies["angels-sulfur-processing-3"] then
    force.technologies["angels-sulfur-processing-4"].researched =
      force.technologies["angels-sulfur-processing-3"].researched
    force.technologies["angels-sulfur-processing-3"].researched =
      force.technologies["angels-sulfur-processing-2"].researched
  end

  if force.technologies["angels-coal-processing-3"] and force.technologies["angels-coal-processing-2"] then
    force.technologies["angels-coal-processing-3"].researched =
      force.technologies["angels-coal-processing-2"].researched
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end
