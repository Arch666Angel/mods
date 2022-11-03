game.reload_script()

--Enable recipes
for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  for techToResearch, techToCheck in pairs({
    ["thermal-water-extraction-2"] = "thermal-water-extraction",
    ["thermal-water-processing"] = "thermal-water-extraction",
  }) do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
        or force.technologies[techToResearch].researched
    end
  end
end
