for index, force in pairs(game.forces) do
  local technologies = force.technologies

  if technologies["sodium-processing-1"].researched then
    technologies["sodium-processing-2"].researched = true
  end
end
