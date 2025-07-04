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
        recipe = "angels-cobalt-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-molten-cobalt-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cobalt-ore-processing-alt",
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
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cobalt-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-processed-cobalt-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cobalt-oxide-smelting",
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
        recipe = "angels-roll-cobalt-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-cobalt-converting",
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
        recipe = "angels-cobalt-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-cobalt-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cobalt-hydroxide-smelting",
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
        recipe = "angels-roll-cobalt-casting-fast",
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
