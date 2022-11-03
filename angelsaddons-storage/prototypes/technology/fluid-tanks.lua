if angelsmods.addons.storage.inlinetank and not mods["angelspetrochem"] then
  local tech = data.raw.technology["fluid-handling"]
  if tech and tech.effects then
    table.insert(tech.effects, { type = "unlock-recipe", recipe = "angels-storage-tank-3" })
  end
end

if angelsmods.addons.storage.pressuretank then
  data:extend({
    {
      type = "technology",
      name = "pressure-tanks",
      icon = "__angelsaddons-storage__/graphics/technology/pressure-tank-tech.png",
      icon_size = 128,
      prerequisites = {
        "fluid-handling",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-pressure-tank-1",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { type = "item", name = "automation-science-pack", amount = 1 },
          { type = "item", name = "logistic-science-pack", amount = 1 },
        },
        time = 15,
      },
      order = "c-a",
    },
  })
end
