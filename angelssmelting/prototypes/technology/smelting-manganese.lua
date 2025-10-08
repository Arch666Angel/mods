data:extend({
  {
    type = "technology",
    name = "angels-manganese-smelting-1",
    localised_description = { "technology-description.angels-manganese-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-manganese-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-advanced-crushing",
      "angels-metallurgy-1",
      "angels-coal-processing",
      "angels-iron-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-iron-2",
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
    name = "angels-manganese-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-manganese-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-ore-processing-1",
      "angels-manganese-smelting-1",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-manganese-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-manganese",
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
    name = "angels-manganese-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-manganese-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-manganese-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-manganese-2",
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
    name = "angels-manganese-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-manganese-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-manganese-smelting-2",
      "angels-iron-smelting-3",
      "oil-gathering",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-manganese-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-manganese-oxide-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-manganese-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-iron-hydroxide-smelting",
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
    name = "angels-manganese-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-manganese-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-manganese-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-manganese-2",
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
