data:extend({
  {
    type = "technology",
    name = "angels-cobalt-smelting-1",
    localised_name = { "technology-name.angels-cobalt-metallurgy" },
    localised_description = { "technology-description.angels-cobalt-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-cobalt-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-leaching",
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-coal-processing",
      "angels-stone-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cobalt-oxide",
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
    name = "angels-cobalt-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-cobalt-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-cobalt-smelting-1",
      "angels-powder-metallurgy-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cobalt-oxide-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-cobalt-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-cobalt",
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
    name = "angels-cobalt-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-cobalt-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-4",
      "angels-strand-casting-2",
      "angels-cobalt-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-cobalt-2",
      },
    },
    unit = {
      count = 250,
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
    name = "angels-cobalt-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-cobalt-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-4",
      "angels-cobalt-smelting-2",
      "angels-sulfur-processing-1",
      "angels-chlorine-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cobalt-hydroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cobalt-oxide-3",
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
    name = "angels-cobalt-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-cobalt-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-5",
      "angels-strand-casting-3",
      "angels-cobalt-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-cobalt-2",
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
