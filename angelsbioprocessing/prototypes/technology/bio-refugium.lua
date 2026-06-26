data:extend({
  -- FISH
  {
    type = "technology",
    name = "angels-bio-refugium-fish-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-fish-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-nutrient-paste",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-refugium-fish",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-fish-atmosphere",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-keeping-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-keeping-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-keeping-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-keeping-3",
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
    name = "angels-bio-refugium-fish-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-fish-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-fish-1",
      "angels-bio-refugium-butchery-1",
      "angels-bio-processing-green",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-alien-fish-0-raw",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-fish-1-raw",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-fish-2-raw",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-fish-3-raw",
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
  -- PUFFER
  {
    type = "technology",
    name = "angels-bio-refugium-hatchery",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-hatchery-tech.png",
    icon_size = 160,
    order = "c-a",
    prerequisites = {
      "angels-aluminium-smelting-1",
      "angels-stone-smelting-2",
      "lamp",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-hatchery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-5",
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
    name = "angels-bio-refugium-puffer-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-hatchery",
      --"angels-bio-refugium-fish-1"
      "angels-bio-nutrient-paste",
      "angels-sulfur-processing-2",
      "angels-nitrogen-processing-2",
      "advanced-circuit",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-refugium-puffer",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-puffer-atmosphere",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-5",
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
    name = "angels-bio-refugium-puffer-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-puffer-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-egg-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-egg-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-egg-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-egg-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-egg-5",
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
    name = "angels-bio-refugium-puffer-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-puffer-2",
      --"angels-water-treatment-2"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-23",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-12",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-13",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-14",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-puffing-15",
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
    name = "angels-bio-refugium-puffer-4",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-puffer-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-breeding-23",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-breeding-12",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-breeding-13",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-breeding-14",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-breeding-15",
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
  -- BITER
  {
    type = "technology",
    name = "angels-bio-refugium-biter-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-biter-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-farm-alien",
      "angels-bio-refugium-butchery-2",
      "angels-bio-refugium-puffer-2",
      "angels-bio-processing-crystal-splinter-2",
      "angels-stone-smelting-3",
      "angels-titanium-smelting-1",
      "processing-unit",
      "production-science-pack",
      "stone-wall",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-refugium-biter",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-small-egg",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-small",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-small-breeding",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-small-keeping",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-small-butchering",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-queen-small-butchering",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-alien-processed-meat",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-refugium-biter-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-biter-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-biter-1",
      "angels-bio-processing-crystal-shard-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-biter-medium-egg",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-medium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-medium-breeding",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-medium-keeping",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-medium-butchering",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-queen-medium-butchering",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-refugium-biter-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-biter-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-biter-2",
      "angels-bio-refugium-puffer-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-biter-big-egg",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-big",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-big-breeding",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-big-keeping",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-big-butchering",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-biter-queen-big-butchering",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  -- BUTCHERY
  {
    type = "technology",
    name = "angels-bio-refugium-butchery-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-butchery-tech.png",
    icon_size = 160,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-fish-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-butchery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-butchery-0",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-butchery-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-butchery-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-fish-butchery-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-polluted-fish-atmosphere-raw-meat",
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
    name = "angels-bio-refugium-butchery-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-butchery-tech.png",
    icon_size = 160,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-butchery-1",
      "angels-bio-refugium-hatchery",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-butchery-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-butchery-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-butchery-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-butchery-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-puffer-butchery-5",
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
})
