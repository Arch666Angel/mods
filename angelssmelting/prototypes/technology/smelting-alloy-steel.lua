data:extend({
  {
    type = "technology",
    name = "angels-steel-smelting-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-steel-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-iron-smelting-1",
      "angels-basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-steel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-steel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-steel",
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
    name = "angels-steel-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-steel-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-steel-smelting-1",
      "angels-silicon-smelting-1",
      "angels-manganese-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-steel-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-steel-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-steel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-steel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-steel-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-steel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-steel-2",
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
    name = "angels-steel-smelting-3",
    localised_name = { "", { "technology-name.angels-steel-casting" }, " 3" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-steel-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-strand-casting-2",
      "angels-steel-smelting-2",
      "angels-nickel-smelting-1",
      "angels-cobalt-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-steel-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-steel-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-steel-2",
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
    name = "angels-steel-smelting-4",
    localised_name = { "", { "technology-name.angels-steel-casting" }, " 4" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-steel-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-steel-smelting-3",
      "angels-chrome-smelting-1",
      "angels-tungsten-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-steel-5",
      },
    },
    unit = {
      count = 200,
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
