data:extend({
  {
    type = "technology",
    name = "angels-iron-smelting-1",
    localised_name = { "technology-name.angels-iron-metallurgy" },
    localised_description = { "technology-description.angels-iron-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-iron",
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
    name = "angels-iron-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-ore-processing-1",
      "angels-iron-smelting-1",
      "angels-coal-processing",
      "angels-powder-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-iron-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-iron",
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
    name = "angels-iron-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-iron-smelting-1",
      "angels-manganese-smelting-1",
      "angels-silicon-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-iron-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-iron-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-iron-2",
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
    name = "angels-iron-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-iron-smelting-2",
      "angels-stone-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-iron-3",
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
    name = "angels-iron-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-iron-casting-2",
      "angels-nickel-smelting-1",
      "angels-cobalt-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-iron-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-iron-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-iron-2",
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
    name = "angels-iron-casting-4",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-4",
      "angels-iron-casting-3",
      "angels-chrome-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-iron-5",
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
