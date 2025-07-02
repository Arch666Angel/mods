game.reload_script()

--Enable recipes
for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  for techToResearch, techToCheck in pairs({
    ["angels-thermal-water-extraction-2"] = "angels-thermal-water-extraction",
    ["angels-thermal-water-processing"] = "angels-thermal-water-extraction",
  }) do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
        or force.technologies[techToResearch].researched
    end
  end
end
