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
      for techToResearch, techToCheck in pairs({
        ["bio-swamp-farming-2"] = "bio-swamp-farming-1",
      }) do
        if force.technologies[techToResearch] and force.technologies[techToCheck] then
          force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
            or force.technologies[techToResearch].researched
        end
      end
      break
    end
  end
end
