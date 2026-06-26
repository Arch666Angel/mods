data:extend({
  {
    type = "technology",
    name = "angels-platinum-smelting-1",
    localised_name = { "technology-name.angels-platinum-metallurgy" },
    localised_description = { "technology-description.angels-platinum-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-platinum-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-electro-whinning-cell",
      "angels-metallurgy-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-platinum-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-platinum",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-platinum",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-platinum",
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
    name = "angels-platinum-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-platinum-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-4",
      "angels-platinum-smelting-1",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-platinum-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-processed-platinum-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-platinum",
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
    name = "angels-platinum-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-platinum-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-strand-casting-4",
      "angels-platinum-smelting-1",
      "angels-copper-casting-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-platinum",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-platinum-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-platinum",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-platinum-2",
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
    name = "angels-platinum-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-platinum-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-5",
      "angels-platinum-smelting-2",
      "angels-nitrogen-processing-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-platinum-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-platinum-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-hexachloroplatinic-acid-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-ammonium-chloroplatinate-smelting",
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
    name = "angels-platinum-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-platinum-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      --"angels-strand-casting-4",
      "angels-platinum-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-platinum-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-platinum-2",
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
