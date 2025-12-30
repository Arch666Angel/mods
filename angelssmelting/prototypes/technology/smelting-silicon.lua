data:extend({
  {
    type = "technology",
    name = "angels-silicon-smelting-1",
    localised_name = { "technology-name.angels-silicon-metallurgy" },
    localised_description = { "technology-description.angels-silicon-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silicon-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-2",
      "angels-coal-processing",
      "angels-nitrogen-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-silicon",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-silicon",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-silicon-wafer",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-silicon",
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
    name = "angels-silicon-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-silicon-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-silicon-smelting-1",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-silica",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-trichlorosilane",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-silicon-2",
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
    name = "angels-silicon-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-silicon-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-silicon-smelting-2",
      "angels-aluminium-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-silica",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-silane",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-silicon-3",
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
    name = "angels-silicon-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silicon-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-3",
      "angels-silicon-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-quartz-crucible",
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
