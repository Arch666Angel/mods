game.reload_script()

local change_tech = {
  "ore-powderizer",
  "ore-advanced-floatation",
  "ore-electro-whinning-cell",
}
--Enable recipes
for index, force in pairs(game.forces) do
  for _, tech_name in pairs(change_tech) do
    local tech = force.technologies[tech_name]
    if tech and tech.enabled ~= tech.prototype.enabled then
      tech.enabled = tech.prototype.enabled
    end
  end
  if force.technologies["bio-processing-alien-2"].researched then
    force.technologies["bio-processing-alien-2"].researched = false
  end

  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end
