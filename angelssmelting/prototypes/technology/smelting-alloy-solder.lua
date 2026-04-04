data:extend({
  {
    type = "technology",
    name = "angels-solder-smelting-basic",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    prerequisites = {},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-mixture",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder-mixture-smelting",
      },
    },
    unit = {
      count = 25,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-solder-smelting-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-1"
      "angels-solder-smelting-basic",
      "angels-tin-smelting-1",
      "angels-lead-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-solder",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-solder-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-solder-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-solder-smelting-1",
      "angels-zinc-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-solder-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-solder",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder-2",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-solder-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-solder-smelting-2",
      "angels-copper-smelting-2",
      "angels-silver-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-solder-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-solder-2",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
