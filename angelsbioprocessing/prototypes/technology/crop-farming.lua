data:extend({
  {
    type = "technology",
    name = "angels-composting",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-brown",
      "angels-water-washing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-composter",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-soil",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sand",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-soil-alternative",
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
    name = "angels-gardens",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/seed-extractor-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "steel-processing",
      "angels-stone-smelting-1",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-seed-extractor",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-garden-a",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-garden-a",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-garden-a",
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
    name = "angels-gardens-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/seed-extractor-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-garden-cultivating-a",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-garden-cultivating-a",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-garden-cultivating-a",
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
    name = "angels-gardens-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/seed-extractor-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-stone-smelting-2",
      "angels-bio-farm-alien",
      "angels-bio-paper-1",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-garden-cultivating",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-tile",
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
    name = "angels-bio-farm-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/base-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-composting",
      "angels-gardens",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crop-farm",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-processor",
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
    name = "angels-bio-farm-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/base-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "automation-2",
      "angels-bio-farm-1",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-fertilizer",
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
    name = "angels-bio-farm-alien",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/base-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-2",
      "angels-bio-processing-alien-1",
      "angels-gardens-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-alien-goo",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-alienated-fertilizer",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-garden",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-garden",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-garden",
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
    name = "angels-bio-temperate-farming-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/temperate-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-1-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-temperate-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-2-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-temperate-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-3-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-temperate-3",
      },
    },
    unit = {
      count = 32,
      ingredients = {
        { "automation-science-pack",  4 },
        { "angels-token-bio", 1 },
        { "logistic-science-pack",  4 },
      },
      time = 30,
    },
    ignore_tech_cost_multiplier = true,
  },
  {
    type = "technology",
    name = "angels-bio-temperate-farming-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/temperate-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-temperate-farm",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-4-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-temperate-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-5-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-temperate-5",
      },
    },
    unit = {
      count = 64,
      ingredients = {
        { "automation-science-pack",  4 },
        { "logistic-science-pack",  4 },
        { "chemical-science-pack", 4 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-temperate-farm",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/temperate-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-aluminium-smelting-1",
      "angels-bio-temperate-farming-1",
      "angels-bio-farm-alien",
      "angels-stone-smelting-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-garden-b",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-farm",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-temperate-upgrade",
      },
    },
    unit = {
      count = 32,
      ingredients = {
        { "automation-science-pack",  4 },
        { "logistic-science-pack",  4 },
        { "chemical-science-pack", 4 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-desert-farming-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/desert-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-desert-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-1-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-desert-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-2-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-desert-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-3-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-desert-3",
      },
    },
    unit = {
      count = 32,
      ingredients = {
        { "automation-science-pack",  4 },
        { "angels-token-bio", 1 },
        { "logistic-science-pack",  4 },
      },
      time = 30,
    },
    ignore_tech_cost_multiplier = true,
  },
  {
    type = "technology",
    name = "angels-bio-desert-farming-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/desert-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-desert-farm",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-desert-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-4-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-desert-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-5-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-desert-5",
      },
    },
    unit = {
      count = 64,
      ingredients = {
        { "automation-science-pack",  4 },
        { "logistic-science-pack",  4 },
        { "chemical-science-pack", 4 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-desert-farm",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/desert-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-aluminium-smelting-1",
      "angels-bio-desert-farming-1",
      "angels-bio-farm-alien",
      "angels-stone-smelting-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-desert-garden-b",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-farm",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-desert-upgrade",
      },
    },
    unit = {
      count = 32,
      ingredients = {
        { "automation-science-pack",  4 },
        { "logistic-science-pack",  4 },
        { "chemical-science-pack", 4 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-swamp-farming-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/swamp-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "logistic-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-1-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-swamp-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-2-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-swamp-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-3-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-swamp-3",
      },
    },
    unit = {
      count = 32,
      ingredients = {
        { "automation-science-pack",  4 },
        { "angels-token-bio", 1 },
        { "logistic-science-pack",  4 },
      },
      time = 30,
    },
    ignore_tech_cost_multiplier = true,
  },
  {
    type = "technology",
    name = "angels-bio-swamp-farming-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/swamp-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-swamp-farm",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-4-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-swamp-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-5-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sorting-swamp-5",
      },
    },
    unit = {
      count = 64,
      ingredients = {
        { "automation-science-pack",  4 },
        { "logistic-science-pack",  4 },
        { "chemical-science-pack", 4 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-swamp-farm",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/swamp-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-aluminium-smelting-1",
      "angels-bio-swamp-farming-1",
      "angels-bio-farm-alien",
      "angels-stone-smelting-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-garden-b",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-farm",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-swamp-upgrade",
      },
    },
    unit = {
      count = 32,
      ingredients = {
        { "automation-science-pack",  4 },
        { "logistic-science-pack",  4 },
        { "chemical-science-pack", 4 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-nutrient-paste",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/nutrient-extractor-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "angels-gas-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-nutrient-extractor",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-beans-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-corn-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-leafs-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-nuts-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-pips-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-fruit-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-nutrients-refining-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-nutrients-refining-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-nutrients-refining-3",
      },
    },
    unit = {
      count = 40,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-pressing-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "angels-bio-nutrient-paste",
      "angels-slag-processing-1",
      "angels-oil-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-press",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-vegetable-oil-nuts",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-vegetable-oil-pips",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-vegetable-oil-beans",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-vegetable-oil-filtering-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-vegetable-oil-refining",
      },
    },
    unit = {
      count = 40,
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
    name = "angels-bio-pressing-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-pressing-1",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-vegetable-oil-filtering-2",
      },
    },
    unit = {
      count = 75,
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
    name = "angels-bio-pressing-fish-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-pressing-1",
      "angels-bio-refugium-fish-1",
      "angels-bio-fermentation",
      "angels-thermal-water-extraction",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-fish-pressing-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-pressing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-pressing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-pressing-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-pulp-nutrients",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-fish-oil-filtering-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-fish-oil-refining",
      },
    },
    unit = {
      count = 40,
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
    name = "angels-bio-pressing-fish-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-pressing-fish-1",
      "angels-bio-pressing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-raw-fish-oil-filtering-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-liquid-fish-oil-refining",
      },
    },
    unit = {
      count = 75,
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
    name = "angels-bio-fermentation",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-1",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-fermentation-corn",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fermentation-fruit",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-ethanol",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-acetic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ethanol-to-ethylene-synthesis",
      },
    },
    unit = {
      count = 40,
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
    name = "angels-bio-plastic-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-fermentation",
      "angels-bio-nutrient-paste",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-acetic-acid-catalyst",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-acetic-anhydride",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-cellulose-acetate-mixture",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-cellulose-acetate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-plastic-bio-1",
      },
    },
    unit = {
      count = 40,
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
    name = "angels-bio-plastic-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-plastic-1",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-propionic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-plastic-bio-2",
      },
    },
    unit = {
      count = 40,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
})
