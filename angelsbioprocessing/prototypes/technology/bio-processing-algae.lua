data:extend({
  {
    type = "technology",
    name = "angels-bio-processing-brown",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-algae-farm",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-green-simple",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cellulose-fiber",
      },
    },
    unit = {
      count = 10,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    ignore_tech_cost_multiplier = true,
  },
  {
    type = "technology",
    name = "angels-bio-processing-green",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-brown",
      "angels-water-treatment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-algae-farm-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-brown",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-methanol-from-wood",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-brown-burning",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-brown-burning-wash",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-processing-red",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      --"angels-bio-processing-brown",
      "angels-bio-processing-green",
      "angels-nitrogen-processing-2",
      "angels-thermal-water-extraction",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-algae-farm-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-red-cellulose-fiber",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-calcium-carbonate",
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
  },
  {
    type = "technology",
    name = "angels-bio-processing-blue",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-aluminium-smelting-1",
      "angels-stone-smelting-2",
      "angels-bio-processing-red",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-algae-farm-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-algae-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-blue-cellulose-fiber",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-ammonia-from-blue-fiber",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
})
