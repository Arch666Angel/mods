data:extend({
  --SOLIDS
  {
    type = "technology",
    name = "plastic-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/plastic-1-tech.png",
    icon_size = 128,
    prerequisites = {
      "steam-cracking-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-plastic-1",
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
    name = "plastic-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/plastic-2-tech.png",
    icon_size = 128,
    prerequisites = {
      "plastic-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-plastic-2",
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
    name = "plastic-3",
    icon = "__angelspetrochemgraphics__/graphics/technology/plastic-3-tech.png",
    icon_size = 128,
    prerequisites = {
      "plastic-2",
      "angels-advanced-chemistry-5",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-plastic-3",
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
    name = "resins",
    icon = "__angelspetrochemgraphics__/graphics/technology/resins-tech.png",
    icon_size = 128,
    prerequisites = {
      "resin-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-resin",
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
    name = "resin-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-1",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-resin-1",
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
    name = "resin-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      "resin-1",
      "angels-nitrogen-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-resin-2",
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
    name = "resin-3",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      "resin-2",
      "angels-advanced-chemistry-5",
      "chlorine-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-resin-3",
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
    name = "rubbers",
    icon = "__angelspetrochemgraphics__/graphics/technology/rubbers-tech.png",
    icon_size = 128,
    prerequisites = {
      "bob-rubber",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-rubber",
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
    name = "bob-rubber",
    icon = "__angelspetrochemgraphics__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites = {
      --"steam-cracking-1",
      "angels-advanced-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-rubber-1",
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
      "kovarex-enrichment-process",
      "utility-science-pack",
      "rocket-fuel",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nuclear-fuel",
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
