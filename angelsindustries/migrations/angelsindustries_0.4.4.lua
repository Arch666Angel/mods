if settings.startup["angels-enable-tech"].value then
  for index, force in pairs(game.forces) do
    for _, technology in pairs(force.technologies) do
      if technology.enabled then
        force.technologies["tech-specialised-labs"].researched = true
        break
      end
    end

    force.reset_recipes()
    force.reset_technologies()
    force.reset_technology_effects()
  end
end
