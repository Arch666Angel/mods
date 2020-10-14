for _, force in pairs(game.forces) do
  if force.technologies["angels-cooling"] and force.technologies["angels-coolant-1"] then
    force.technologies["angels-cooling"].researched = force.technologies["angels-coolant-1"].researched
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end
