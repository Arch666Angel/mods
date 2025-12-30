data:extend({
  {
    type = "technology",
    name = "angels-nickel-smelting-1",
    localised_name = { "technology-name.angels-nickel-metallurgy" },
    localised_description = { "technology-description.angels-nickel-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-nickel-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-2",
      "angels-basic-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-nickel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-nickel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-nickel",
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
    name = "angels-nickel-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-nickel-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-nickel-smelting-1",
      "angels-sulfur-processing-1",
      "angels-powder-metallurgy-3"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-nickel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-nickel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-nickel-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-nickel",
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
    name = "angels-nickel-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-nickel-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-nickel-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-nickel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-nickel-2",
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
    name = "angels-nickel-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-nickel-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-nickel-smelting-2",
      "angels-sulfur-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-nickel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-nickel-carbonyl",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-nickel-3",
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
    name = "angels-nickel-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-nickel-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-strand-casting-3",
      "angels-nickel-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-nickel-2",
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
