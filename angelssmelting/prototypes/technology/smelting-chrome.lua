data:extend({
  {
    type = "technology",
    name = "angels-chrome-smelting-1",
    localised_name = { "technology-name.angels-chrome-metallurgy" },
    localised_description = { "technology-description.angels-chrome-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-chrome-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-electro-whinning-cell",
      "angels-metallurgy-4",
      "angels-coal-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-chrome",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-chrome",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-chrome",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-chrome-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-chrome-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-4",
      "angels-chrome-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-chrome",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-chrome-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-chrome",
      },
    },
    unit = {
      count = 300,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-chrome-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-chrome-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-strand-casting-4",
      "angels-chrome-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-chrome",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-chrome-2",
      },
    },
    unit = {
      count = 300,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-chrome-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-chrome-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-5",
      "angels-chrome-smelting-2",
      "angels-sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-chrome",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-chromate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-dichromate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-chrome-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-chrome-3",
      },
    },
    unit = {
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-chrome-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-chrome-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      --"angels-strand-casting-4",
      "angels-chrome-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-chrome-2",
      },
    },
    unit = {
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
