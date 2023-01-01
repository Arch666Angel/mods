game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
end
