local tech = data.raw.technology["uranium-mining"]
if tech then
  tech.localised_name = { "technology-name.mining-with-fluid" }
  tech.prerequisites = { "electric-mining-drill", "sulfur-processing" }
  tech.icon = nil
  tech.icon_size = nil
  tech.icons = {
    { icon = "__base__/graphics/technology/fluid-handling.png", icon_size = 256 },
    { icon = "__base__/graphics/technology/mining-productivity.png", icon_size = 256 },
  }
  if tech.unit then
    for i, ingredient in pairs(tech.unit.ingredients) do
      if ingredient[1] == "chemical-science-pack" then
        table.remove(tech.unit.ingredients, i)
        break
      end
    end
  end
end
