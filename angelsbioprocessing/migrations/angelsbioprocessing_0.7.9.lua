game.reload_script()

--Enable recipes
for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  local researched = false
  for _, techName in pairs({
    "angels-bio-arboretum-2",
    "angels-bio-arboretum-desert-2",
    "angels-bio-arboretum-temperate-2",
    "angels-bio-arboretum-swamp-2",
    "angels-bio-desert-farm",
    "angels-bio-temperate-farm",
    "angels-bio-swamp-farm",
  }) do
    if (force.technologies[techName] or {}).researched then
      researched = true
      break
    end
  end
  if researched then
    force.technologies["angels-bio-farm-2"].researched = true
    force.technologies["angels-bio-farm-alien"].researched = true
    force.technologies["angels-gardens-2"].researched = true

    for techToResearch, techToCheck in pairs({
      ["angels-bio-temperate-farming-2"] = "angels-bio-temperate-farming-1",
      ["angels-bio-desert-farming-2"] = "angels-bio-desert-farming-1",
      ["angels-bio-swamp-farming-2"] = "angels-bio-swamp-farming-1",
    }) do
      if force.technologies[techToResearch] and force.technologies[techToCheck] then
        force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
          or force.technologies[techToResearch].researched
      end
    end
  end

  for techToResearch, techToCheck in pairs({
    ["angels-bio-processing-crystal-splinter-2"] = "angels-bio-processing-crystal-splinter-1",
    ["angels-bio-processing-crystal-splinter-3"] = "angels-bio-processing-crystal-splinter-1",
    ["angels-bio-processing-crystal-shard-2"] = "angels-bio-processing-crystal-shard-1",
    ["angels-bio-processing-crystal-shard-3"] = "angels-bio-processing-crystal-shard-1",
    ["angels-bio-processing-alien-2"] = "angels-bio-refugium-biter-2",
  }) do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
        or force.technologies[techToResearch].researched
    end
  end
end
