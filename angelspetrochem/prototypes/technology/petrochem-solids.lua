data:extend({
  --SOLIDS
  {
    type = "technology",
    name = "angels-plastic-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/plastic-1-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-steam-cracking-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-plastic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-plastic-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/plastic-2-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-plastic-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-plastic-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-plastic-3",
    icon = "__angelspetrochemgraphics__/graphics/technology/plastic-3-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-plastic-2",
      "angels-advanced-chemistry-5",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-plastic-3",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-resins",
    icon = "__angelspetrochemgraphics__/graphics/technology/resins-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-resin-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-resin",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-resin-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-1",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-resin",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-resin-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-resin-1",
      "angels-nitrogen-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-resin-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-resin-3",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-resin-2",
      "angels-advanced-chemistry-5",
      "angels-chlorine-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-resin-3",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-rubbers",
    icon = "__angelspetrochemgraphics__/graphics/technology/rubbers-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-rubber",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-rubber",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-rubber",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      --"angels-steam-cracking-1",
      "angels-advanced-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-rubber",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  --ROCKET FUEL -- Removed since base has it now
  -- Separate nuclear fuel since changed recipes
  {
    type = "technology",
    name = "angels-nuclear-fuel",
    icon = "__angelspetrochemgraphics__/graphics/technology/nuclear-fuel.png",
    icon_size = 128,
    prerequisites = {
      "uranium-processing",
      "utility-science-pack",
      "rocket-fuel",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nuclear-fuel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-nuclear-fuel",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-nuclear-fuel-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-b",
  },
})
