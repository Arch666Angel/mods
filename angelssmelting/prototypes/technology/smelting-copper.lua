data:extend({
  {
    type = "technology",
    name = "angels-copper-smelting-1",
    localised_name = { "technology-name.angels-copper-metallurgy" },
    localised_description = { "technology-description.angels-copper-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-copper-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-copper",
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
    name = "angels-copper-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-copper-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-ore-processing-1",
      "angels-copper-smelting-1",
      "angels-basic-chemistry",
      "angels-powder-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-copper-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-copper",
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
    name = "angels-copper-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-copper-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-copper-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-copper-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-copper-2",
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
    name = "angels-copper-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-copper-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-copper-smelting-2",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-anode-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-copper-3",
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
    name = "angels-copper-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-copper-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-copper-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-copper-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-copper-2",
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
