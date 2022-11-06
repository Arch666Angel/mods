-- re-enable washing technology
for _, tech_name in pairs({
  "water-washing-1",
  "water-washing-2",
}) do
  local tech_prototype = game.technology_prototypes[tech_name]
  if tech_prototype and tech_prototype.enabled then
    for index, force in pairs(game.forces) do
      force.technologies[tech_name].enabled = true
    end
  end
end

-- enable ground water bore
for _, force in pairs(game.forces) do
  force.reset_technology_effects()
end
