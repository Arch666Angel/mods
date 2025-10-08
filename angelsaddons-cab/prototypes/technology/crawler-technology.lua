data:extend({
  {
    type = "technology",
    name = "angels-crawler",
    icon = "__angelsaddons-cab__/graphics/technology/crawler-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-vequipment-1",
    },
    effects = {
    {
        type = "unlock-recipe",
        recipe = "angels-crawler",
    },
    {
        type = "unlock-recipe",
        recipe = "angels-construction-roboport-vequip",
    },
    },
    unit = {
    count = 60,
    ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
    },
    time = 15,
    },
    order = "c-a",
  },
})
