data:extend({
  {
    type = "technology",
    name = "angels-cobalt-smelting-1",
    localised_name = { "technology-name.angels-cobalt-metallurgy" },
    localised_description = { "technology-description.angels-cobalt-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-cobalt-tech.png",
    icon_size = 256,
    prerequisites = {
      "ore-leaching",
      --"angels-metallurgy-3",
      "ore-processing-2",
      "angels-coal-processing",
      "angels-stone-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cobalt-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-cobalt-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "cobalt-ore-processing-alt",
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
      "ore-processing-3",
      "angels-cobalt-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cobalt-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-cobalt-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-cobalt-oxide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-cobalt",
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
      "strand-casting-2",
      "angels-cobalt-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-cobalt-casting",
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
      "ore-processing-4",
      "angels-cobalt-smelting-2",
      "angels-sulfur-processing-1",
      "chlorine-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cobalt-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-cobalt-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-cobalt-hydroxide-smelting",
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
      "strand-casting-3",
      "angels-cobalt-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-cobalt-casting-fast",
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
