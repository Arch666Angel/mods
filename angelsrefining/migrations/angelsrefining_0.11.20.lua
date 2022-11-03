for _, force in pairs(game.forces) do
  if force.technologies["geode-crystallization-2"] and force.technologies["geode-processing-3"] then
    force.technologies["geode-processing-3"].researched = force.technologies["geode-crystallization-2"].researched
    if force.technologies["gem-processing-1"] then
      force.technologies["geode-crystallization-2"].researched = force.technologies["gem-processing-1"].researched
    else
      force.technologies["geode-crystallization-2"].researched = false
    end
  end

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
