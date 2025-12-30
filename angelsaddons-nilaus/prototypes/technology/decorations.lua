data:extend({
  {
    type = "technology",
    name = "nilaus",
    icon = "__angelsaddons-nilaus__/graphics/technology/nilaus-tech.png",
    icon_size = 128,
    prerequisites = {
      "lamp",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "deco-nilaus-1",
      },
      {
        type = "unlock-recipe",
        recipe = "deco-nilaus-2",
      },
      {
        type = "unlock-recipe",
        recipe = "deco-nilaus-start",
      },
      {
        type = "unlock-recipe",
        recipe = "deco-nilaus-lamp",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "nilaus-truck",
    icon = "__angelsaddons-nilaus__/graphics/technology/nilaus-tech.png",
    icon_size = 128,
    prerequisites = {
      "automobilism",
      "nilaus",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nilaus-truck",
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
    name = "nilaus-truck-2",
    icon = "__angelsaddons-nilaus__/graphics/technology/nilaus-tech.png",
    icon_size = 128,
    prerequisites = {
      "nilaus-truck",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nilaus-truck-2",
      },
    },
    unit = {
      count = 120,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
