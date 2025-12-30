data:extend({
  {
    type = "technology",
    name = "angels-titanium-smelting-1",
    localised_name = { "technology-name.angels-titanium-metallurgy" },
    localised_description = { "technology-description.angels-titanium-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-titanium-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-leaching",
      "angels-metallurgy-3",
      "angels-coal-processing-2",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-titanium-tetrachloride",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sponge-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-titanium",
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
    name = "angels-titanium-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-titanium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-titanium-smelting-1",
      "angels-powder-metallurgy-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-titanium-tetrachloride-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-titanium",
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
    name = "angels-titanium-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-titanium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-strand-casting-3",
      "angels-titanium-smelting-1",
      "angels-manganese-smelting-3",
      "angels-nickel-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-titanium-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-titanium-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-titanium-2",
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
    name = "angels-titanium-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-titanium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-ore-processing-4",
      "angels-titanium-smelting-2",
      "angels-chlorine-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-titanium-2",
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
    name = "angels-titanium-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-titanium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-5",
      "angels-strand-casting-4",
      "angels-titanium-casting-2",
      "angels-tin-smelting-3",
      "angels-aluminium-smelting-3",
      "angels-chrome-smelting-1",
      "angels-cobalt-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-titanium-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-titanium-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-titanium-2",
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
