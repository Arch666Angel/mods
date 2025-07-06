data:extend({
  {
    type = "technology",
    name = "angels-bio-wood-processing",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-brown",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wood-pellets",
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
    name = "angels-bio-wood-processing-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-wood-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-processor",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wood-charcoal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-resin-wood-reprocessing",
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
    name = "angels-bio-wood-processing-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-coal-processing",
      "angels-bio-wood-processing-2",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wood-bricks",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-carbon-from-charcoal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-carbon-dioxide-from-wood",
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
    name = "angels-bio-arboretum-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-arboretum-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-composting",
      "angels-bio-processing-brown",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-generator-temperate-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-generator-swamp-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-generator-desert-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wood-sawing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-saw",
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
    name = "angels-bio-arboretum-2",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-arboretum-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-1",
      "angels-bio-processing-crystal-splinter-2",
      "angels-bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-tree-arboretum-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wood-sawing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-crystal-tipped-saw",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-3",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-arboretum-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-2",
      "angels-bio-processing-crystal-shard-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-tree-arboretum-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wood-sawing-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-crystal-full-saw",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-temperate-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-1",
      "angels-bio-fermentation",
      "angels-resins",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-resin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-resin-resin-liquification",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-temperate-2",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-temperate-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-temperate-1",
      "angels-bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-resin-tree",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-temperate-3",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-temperate-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-temperate-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-tree-arboretum-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-swamp-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-1",
      "angels-bio-nutrient-paste",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-plastic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-swamp-2",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-swamp-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-swamp-1",
      "angels-bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-plastic-tree",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-swamp-3",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-swamp-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-swamp-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-tree-arboretum-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-desert-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-rubbers",
      "angels-bio-arboretum-1",
      "angels-bio-nutrient-paste",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-desert-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-rubber",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-desert-2",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-desert-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-desert-1",
      "angels-bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-desert-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-rubber-tree",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-arboretum-desert-3",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-desert-generator-tech.png",
        icon_size = 128
      },
    },
    order = "c-a",
    prerequisites = {
      "angels-bio-arboretum-desert-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-desert-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-tree-arboretum-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-paper-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-basic-chemistry",
      "angels-bio-processing-brown",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-alginic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-wood-pulp",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paper-bleaching-1",
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
    name = "angels-bio-paper-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-nitrogen-processing-2",
      "angels-bio-paper-1",
      "chemical-science-pack",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-paper-bleaching-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sulfite-pulping",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-brown-liquor-recovery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-pulping-liquor",
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
  {
    type = "technology",
    name = "angels-bio-paper-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-paper-2",
      "angels-sodium-processing-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-paper-bleaching-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-white-liquor",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-kraft-cooking-washing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-kraft-recovery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-kraft-causting",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
  },
})
