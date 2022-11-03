game.reload_script()

for index, force in pairs(game.forces) do
  if not force.technologies["rocket-fuel"].enabled then
    force.technologies["rocket-fuel"].enabled = true
  end
end
