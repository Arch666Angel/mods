data:extend({
  {
    type = "technology",
    name = "angels-bio-yield-module",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/module-bio-productivity-1-tech.png",
    icon_size = 256,
    prerequisites = {
      "productivity-module",
      "efficiency-module",
      "angels-gardens-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-yield-module",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-yield-module-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/module-bio-productivity-2-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-bio-yield-module",
      "productivity-module-2",
      "efficiency-module-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-yield-module-2",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-yield-module-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/module-bio-productivity-3-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-bio-yield-module-2",
      "productivity-module-3",
      "efficiency-module-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-yield-module-3",
      },
    },
    unit = {
      count = 300,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
})
