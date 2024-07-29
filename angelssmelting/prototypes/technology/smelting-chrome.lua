data:extend({
  {
    type = "technology",
    name = "angels-chrome-smelting-1",
    localised_name = { "technology-name.angels-chrome-metallurgy" },
    localised_description = { "technology-description.angels-chrome-metallurgy" },
    icon = "__angelssmelting__/graphics/technology/casting-chrome-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "ore-electro-whinning-cell",
      "angels-metallurgy-4",
      "angels-coal-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "chrome-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-chrome-smelting",
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
    icon = "__angelssmelting__/graphics/technology/smelting-chrome-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-5",
      "ore-processing-4",
      "angels-chrome-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "chrome-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-chrome-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-chrome",
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
    icon = "__angelssmelting__/graphics/technology/casting-chrome-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-5",
      "strand-casting-4",
      "angels-chrome-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-chrome-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-chrome-converting",
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
    icon = "__angelssmelting__/graphics/technology/smelting-chrome-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-5",
      "ore-processing-5",
      "angels-chrome-smelting-2",
      "sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "chrome-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-chrome-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-chromate-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-dichromate-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-chrome-oxide-smelting",
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
  {
    type = "technology",
    name = "angels-chrome-casting-3",
    icon = "__angelssmelting__/graphics/technology/casting-chrome-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-5",
      --"strand-casting-4",
      "angels-chrome-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-chrome-casting-fast",
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
