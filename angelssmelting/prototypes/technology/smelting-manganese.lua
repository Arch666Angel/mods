data:extend({
  {
    type = "technology",
    name = "angels-manganese-smelting-1",
    localised_description = { "technology-description.angels-manganese-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-manganese-tech.png",
    icon_size = 256,
    prerequisites = {
      "ore-advanced-crushing",
      "angels-metallurgy-1",
      "angels-coal-processing",
      "angels-iron-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "manganese-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-manganese-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-manganese",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-2",
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
      "ore-processing-1",
      "angels-manganese-smelting-1",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "manganese-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-manganese-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-manganese-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-manganese",
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
      "strand-casting-1",
      "angels-manganese-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-manganese-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-manganese-converting",
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
      "ore-processing-2",
      "angels-manganese-smelting-2",
      "angels-iron-smelting-3",
      "oil-gas-extraction",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "manganese-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "manganese-processed-processing-alt",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-manganese-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-manganese-oxide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-iron-hydroxide-smelting",
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
      "strand-casting-2",
      "angels-manganese-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-manganese-casting-fast",
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
