if settings.startup["angels-enable-tech"].value or settings.startup["angels-enable-components"].value then
  for index, force in pairs(game.forces) do
    force.reset_recipes()
    force.reset_technology_effects()
  end
end
