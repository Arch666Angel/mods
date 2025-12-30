data:extend({
  {
    type = "technology",
    name = "angels-gold-smelting-1",
    localised_name = { "technology-name.angels-gold-metallurgy" },
    localised_description = { "technology-description.angels-gold-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-gold-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-leaching",
      "angels-metallurgy-3",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-gold",
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
    name = "angels-gold-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-gold-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-gold-smelting-1",
      "angels-nitrogen-processing-2",
      "angels-powder-metallurgy-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-chlorauric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-gold-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-gold",
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
    name = "angels-gold-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-gold-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-strand-casting-3",
      "angels-gold-smelting-1",
      "angels-copper-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-gold-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-gold-2",
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
    name = "angels-gold-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-gold-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-4",
      "angels-gold-smelting-2",
      "angels-sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-gold-cyanide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-gold-2",
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
    name = "angels-gold-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-gold-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-strand-casting-4",
      "angels-gold-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-gold-2",
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
})
