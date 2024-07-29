data:extend({
  {
    type = "technology",
    name = "angels-gold-smelting-1",
    localised_name = { "technology-name.angels-gold-metallurgy" },
    localised_description = { "technology-description.angels-gold-metallurgy" },
    icon = "__angelssmelting__/graphics/technology/casting-gold-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "ore-leaching",
      "angels-metallurgy-3",
      "chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gold-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-gold-smelting",
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
    icon = "__angelssmelting__/graphics/technology/smelting-gold-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "ore-processing-3",
      "angels-gold-smelting-1",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gold-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-chlorauric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-gold-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-gold-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-gold",
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
    icon = "__angelssmelting__/graphics/technology/casting-gold-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "strand-casting-3",
      "angels-gold-smelting-1",
      "angels-copper-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-converting",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-gold-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-gold-converting",
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
    icon = "__angelssmelting__/graphics/technology/smelting-gold-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-5",
      "ore-processing-4",
      "angels-gold-smelting-2",
      "sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gold-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-gold-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-gold-cyanide-smelting",
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
    icon = "__angelssmelting__/graphics/technology/casting-gold-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-5",
      "strand-casting-4",
      "angels-gold-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-casting-fast",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-gold-casting-fast",
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
