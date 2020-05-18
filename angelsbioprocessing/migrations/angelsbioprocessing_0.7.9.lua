game.reload_script()

--Enable recipes
for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  local researched = false
  for _, techName in pairs{
    "bio-arboretum-2",
    "bio-arboretum-desert-2",
    "bio-arboretum-temperate-2",
    "bio-arboretum-swamp-2",
    "bio-desert-farm",
    "bio-temperate-farm",
    "bio-swamp-farm",
  } do
    if (force.technologies[techName] or {}).researched then
      researched = true
      break
    end
  end
  if researched then
    force.technologies["bio-farm-alien"].researched = true
    force.technologies["gardens-2"].researched = true
  end
end
