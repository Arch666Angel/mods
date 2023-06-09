for _, force in pairs(game.forces) do
  --left-overs from misfiring past migrations
  for _, tech_name in pairs({
    "water-washing-1",
    "water-washing-2",
  }) do
    local tech_prototype = game.technology_prototypes[tech_name]
    if tech_prototype and tech_prototype.hidden ~= true and tech_prototype.enabled ~= false then
      if force.technologies[tech_name] then
        force.technologies[tech_name].enabled = true
      end
    end
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end
