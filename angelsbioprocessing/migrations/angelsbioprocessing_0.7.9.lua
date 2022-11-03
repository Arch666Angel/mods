game.reload_script()

--Enable recipes
for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  local researched = false
  for _, techName in pairs({
    "bio-arboretum-2",
    "bio-arboretum-desert-2",
    "bio-arboretum-temperate-2",
    "bio-arboretum-swamp-2",
    "bio-desert-farm",
    "bio-temperate-farm",
    "bio-swamp-farm",
  }) do
    if (force.technologies[techName] or {}).researched then
      researched = true
      break
    end
  end
  if researched then
    force.technologies["bio-farm-2"].researched = true
    force.technologies["bio-farm-alien"].researched = true
    force.technologies["gardens-2"].researched = true

    for techToResearch, techToCheck in pairs({
      ["bio-temperate-farming-2"] = "bio-temperate-farming-1",
      ["bio-desert-farming-2"] = "bio-desert-farming-1",
      ["bio-swamp-farming-2"] = "bio-swamp-farming-1",
    }) do
      if force.technologies[techToResearch] and force.technologies[techToCheck] then
        force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
          or force.technologies[techToResearch].researched
      end
    end
  end

  for techToResearch, techToCheck in pairs({
    ["bio-processing-crystal-splinter-2"] = "bio-processing-crystal-splinter-1",
    ["bio-processing-crystal-splinter-3"] = "bio-processing-crystal-splinter-1",
    ["bio-processing-crystal-shard-2"] = "bio-processing-crystal-shard-1",
    ["bio-processing-crystal-shard-3"] = "bio-processing-crystal-shard-1",
    ["bio-processing-alien-2"] = "bio-refugium-biter-2",
  }) do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
        or force.technologies[techToResearch].researched
    end
  end
end
