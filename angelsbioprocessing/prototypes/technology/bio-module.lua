data:extend({
  {
    type = "technology",
    name = "angels-bio-yield-module",
    icon = "__angelsbioprocessing__/graphics/technology/module-bio-productivity-1-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    order = "c-a",
    prerequisites = {
      "productivity-module",
      "effectivity-module",
      "gardens-2",
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
        { "token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-yield-module-2",
    icon = "__angelsbioprocessing__/graphics/technology/module-bio-productivity-2-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    order = "c-a",
    prerequisites = {
      "angels-bio-yield-module",
      "productivity-module-2",
      "effectivity-module-2",
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
        { "token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-yield-module-3",
    icon = "__angelsbioprocessing__/graphics/technology/module-bio-productivity-3-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    order = "c-a",
    prerequisites = {
      "angels-bio-yield-module-2",
      "productivity-module-3",
      "effectivity-module-3",
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
        { "token-bio", 1 },
      },
      time = 30,
    },
  },
})
