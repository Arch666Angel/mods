data:extend({
  {
    type = "technology",
    name = "bio-wood-processing",
    icon = "__angelsbioprocessing__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-brown",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "wood-pellets",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-wood-processing-2",
    icon = "__angelsbioprocessing__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-farm-1",
      "bio-wood-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "wood-charcoal",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-resin-wood-reprocessing",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-wood-processing-3",
    icon = "__angelsbioprocessing__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-coal-processing",
      "bio-wood-processing-2",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "wood-bricks",
      },
      {
        type = "unlock-recipe",
        recipe = "carbon-from-charcoal",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-carbon-dioxide-from-wood",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-composting",
      "bio-processing-brown",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bio-generator-temperate-1",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-generator-swamp-1",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-generator-desert-1",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "wood-sawing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-saw",
      },
    },
    unit = {
      count = 10,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 15,
    },
    ignore_tech_cost_multiplier = true,
  },
  {
    type = "technology",
    name = "bio-arboretum-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-1",
      "bio-processing-crystal-splinter-2",
      "bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-2",
      },
      {
        type = "unlock-recipe",
        recipe = "wood-sawing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-crystal-tipped-saw",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-2",
      "bio-processing-crystal-shard-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-3",
      },
      {
        type = "unlock-recipe",
        recipe = "wood-sawing-3",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-crystal-full-saw",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-1",
      "bio-fermentation",
      "resins",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-resin",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-resin-resin-liquification",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-temperate-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-temperate-1",
      "bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-resin-tree",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-temperate-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-temperate-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-arboretum-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-1",
      "bio-nutrient-paste",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-plastic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-swamp-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-swamp-1",
      "bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-plastic-tree",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-swamp-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-swamp-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-arboretum-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "rubbers",
      "bio-arboretum-1",
      "bio-nutrient-paste",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "desert-tree-generator-1",
      },
      {
        type = "unlock-recipe",
        recipe = "desert-tree-arboretum-1",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-rubber",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-desert-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-desert-1",
      "bio-farm-alien",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "desert-tree-generator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "desert-tree-arboretum-0",
      },
      {
        type = "unlock-recipe",
        recipe = "bio-rubber-tree",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-desert-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-arboretum-desert-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "desert-tree-generator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "desert-tree-arboretum-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-paper-1",
    icon = "__angelsbioprocessing__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "basic-chemistry",
      "bio-processing-brown",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-alginic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-wood-pulp",
      },
      {
        type = "unlock-recipe",
        recipe = "paper-bleaching-1",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 30,
    },
    ignore_tech_cost_multiplier = true,
  },
  {
    type = "technology",
    name = "bio-paper-2",
    icon = "__angelsbioprocessing__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-nitrogen-processing-2",
      "bio-paper-1",
      "chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "paper-bleaching-2",
      },
      {
        type = "unlock-recipe",
        recipe = "sulfite-pulping",
      },
      {
        type = "unlock-recipe",
        recipe = "brown-liquor-recovery",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-pulping-liquor",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-paper-3",
    icon = "__angelsbioprocessing__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-paper-2",
      "sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "paper-bleaching-3",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-white-liquor",
      },
      {
        type = "unlock-recipe",
        recipe = "kraft-cooking-washing",
      },
      {
        type = "unlock-recipe",
        recipe = "kraft-recovery",
      },
      {
        type = "unlock-recipe",
        recipe = "kraft-causting",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
})
