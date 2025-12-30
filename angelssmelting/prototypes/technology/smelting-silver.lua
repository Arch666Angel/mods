data:extend({
  {
    type = "technology",
    name = "angels-silver-smelting-1",
    localised_name = { "technology-name.angels-silver-metallurgy" },
    localised_description = { "technology-description.angels-silver-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silver-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-floatation",
      "angels-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-silver",
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
    name = "angels-silver-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-silver-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-silver-smelting-1",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-silver-nitrate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-silver-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-silver",
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
    name = "angels-silver-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silver-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-silver-smelting-1",
      "angels-copper-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-silver-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-silver-2",
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
    name = "angels-silver-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-silver-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-silver-smelting-2",
      "angels-sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-silver-cyanide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-silver-3",
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
    name = "angels-silver-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silver-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-strand-casting-3",
      "angels-silver-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-silver-2",
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
})
