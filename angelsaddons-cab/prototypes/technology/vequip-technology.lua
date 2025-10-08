data:extend({
  {
    type = "technology",
    name = "angels-vequipment-1",
    icon = "__angelsaddons-cab__/graphics/technology/vequip.png",
    icon_size = 128,
    prerequisites = {
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-burner-generator-vequip",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-repair-roboport-vequip",
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
  {
    type = "technology",
    name = "angels-vequipment-2",
    icon = "__angelsaddons-cab__/graphics/technology/vequip.png",
    icon_size = 128,
    prerequisites = {
      "angels-vequipment-1",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-fusion-reactor-vequip",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-energy-shield-vequip",
      },
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
