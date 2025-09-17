data:extend({
  ---------------------------------------------------------------------------
  -- METALLURGY -------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "angels-metallurgy-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/blast-furnace-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-crushing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-blast-furnace",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-induction-furnace",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casting-machine",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-metallurgy-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/blast-furnace-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-1",
      "advanced-material-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-blast-furnace-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-furnace",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-induction-furnace-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casting-machine-2",
      },
    },
    unit = {
      count = 100,
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
    name = "angels-metallurgy-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/blast-furnace-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-blast-furnace-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-furnace-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-induction-furnace-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casting-machine-3",
      },
    },
    unit = {
      count = 150,
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
    name = "angels-metallurgy-4",
    icon = "__angelssmeltinggraphics__/graphics/technology/blast-furnace-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-3",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-blast-furnace-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-furnace-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-induction-furnace-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casting-machine-4",
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
  {
    type = "technology",
    name = "angels-metallurgy-5",
    icon = "__angelssmeltinggraphics__/graphics/technology/blast-furnace-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-4",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-furnace-4",
      },
    },
    unit = {
      count = 250,
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
  ---------------------------------------------------------------------------
  -- POWDER METALLURGY ------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "angels-powder-metallurgy-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-sintering-oven",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-powder-metallurgy-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-2",
      "angels-powder-metallurgy-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-sintering-oven-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-mixer",
      },
    },
    unit = {
      count = 100,
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
    name = "angels-powder-metallurgy-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-3",
      "angels-powder-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-sintering-oven-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-mixer-2",
      },
    },
    unit = {
      count = 150,
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
    name = "angels-powder-metallurgy-4",
    icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-4",
      "angels-powder-metallurgy-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-sintering-oven-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-mixer-3",
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
  {
    type = "technology",
    name = "angels-powder-metallurgy-5",
    icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-5",
      "angels-powder-metallurgy-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-sintering-oven-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-mixer-4",
      },
    },
    unit = {
      count = 250,
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
  ---------------------------------------------------------------------------
  -- STRAND CASTING ---------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "angels-strand-casting-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/strand-casting-machine-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-strand-casting-machine",
      },
    },
    unit = {
      count = 100,
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
    name = "angels-strand-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/strand-casting-machine-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-3",
      "angels-strand-casting-1",
      "angels-coolant-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-strand-casting-machine-2",
      },
    },
    unit = {
      count = 150,
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
    name = "angels-strand-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/strand-casting-machine-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-4",
      "angels-strand-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-strand-casting-machine-3",
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
  {
    type = "technology",
    name = "angels-strand-casting-4",
    icon = "__angelssmeltinggraphics__/graphics/technology/strand-casting-machine-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-5",
      "angels-strand-casting-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-strand-casting-machine-4",
      },
    },
    unit = {
      count = 250,
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
  ---------------------------------------------------------------------------
  -- ORE PROCESSING ---------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "angels-ore-processing-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/processing-machine-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-processing-machine",
      },
    },
    unit = {
      count = 50,
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
    name = "angels-ore-processing-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/pellet-press-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-3",
      "angels-ore-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-processing-machine-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-press",
      },
    },
    unit = {
      count = 100,
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
    name = "angels-ore-processing-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/pellet-press-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-4",
      "angels-ore-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-processing-machine-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-press-2",
      },
    },
    unit = {
      count = 150,
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
    name = "angels-ore-processing-4",
    icon = "__angelssmeltinggraphics__/graphics/technology/pellet-press-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-5",
      "angels-ore-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-processing-machine-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-press-3",
      },
    },
    unit = {
      count = 200,
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
    name = "angels-ore-processing-5",
    icon = "__angelssmeltinggraphics__/graphics/technology/pellet-press-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-processing-4",
      "space-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-press-4",
      },
    },
    unit = {
      count = 250,
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
  ---------------------------------------------------------------------------
  -- SUPPORT ----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "angels-cooling",
    icon = "__angelssmeltinggraphics__/graphics/technology/coolant-tech.png",
    icon_size = 128,
    prerequisites = {
      "advanced-material-processing",
      "angels-water-treatment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cooling-tower",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coolant-cool-steam",
      },
    },
    unit = {
      count = 250,
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
    name = "angels-coolant-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/coolant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-cooling",
      "angels-oil-processing",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-coolant",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coolant-used-filtration-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coolant-cool-100",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coolant-cool-200",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coolant-cool-300",
      },
    },
    unit = {
      count = 500,
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
    name = "angels-coolant-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/coolant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-coolant-1",
      "angels-slag-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-coolant-used-filtration-2",
      },
    },
    unit = {
      count = 1000,
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
