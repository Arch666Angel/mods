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
      for techToResearch, techToCheck in pairs({
        ["angels-bio-swamp-farming-2"] = "angels-bio-swamp-farming-1",
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
