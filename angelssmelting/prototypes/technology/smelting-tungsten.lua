data:extend({
  {
    type = "technology",
    name = "angels-tungsten-smelting-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-tungsten-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-refining",
      "angels-powder-metallurgy-4",
      "angels-cobalt-smelting-2",
      "angels-chlorine-processing-2",
      "angels-sulfur-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-tungsten-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-tungsten-hexafluoride",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casting-powder-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-tungsten",
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
    name = "angels-tungsten-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-tungsten-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-processing-4",
      "angels-powder-metallurgy-5",
      "angels-tungsten-smelting-1",
      "angels-nickel-smelting-2",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-ammonium-paratungstate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-tungsten-oxide-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casting-powder-tungsten-2",
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
    name = "angels-tungsten-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-tungsten-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-processing-5",
      "angels-tungsten-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-tungstic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-ammonium-paratungstate-2",
      },
    },
    unit = {
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
