data:extend({
  {
    type = "technology",
    name = "angels-tin-smelting-1",
    localised_name = { "technology-name.angels-tin-metallurgy" },
    localised_description = { "technology-description.angels-tin-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-tin-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-tin",
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
    name = "angels-tin-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-tin-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-ore-processing-1",
      "angels-tin-smelting-1",
      "angels-coal-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-tin-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-tin",
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
    name = "angels-tin-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-tin-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-tin-smelting-1",
      "angels-copper-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-tin-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-tin-2",
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
    name = "angels-tin-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-tin-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-tin-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-tin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-tin-3",
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
  {
    type = "technology",
    name = "angels-tin-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-tin-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-tin-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-tin-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-tin-2",
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
