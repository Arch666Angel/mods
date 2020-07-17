game.reload_script()

--Enable recipes
for index, force in pairs(game.forces) do
  force.reset_technology_effects()
end
