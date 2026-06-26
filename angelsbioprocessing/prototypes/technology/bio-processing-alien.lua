data:extend({
  -- PRE
  {
    type = "technology",
    name = "angels-bio-processing-paste",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-brown",
      "angels-chlorine-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-paste-cellulose",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-paste-zinc",
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
    name = "angels-bio-processing-alien-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-fish-1",
      "angels-bio-processing-red",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-alien-spores",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-bacteria",
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
    name = "angels-bio-processing-alien-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-alien-1",
      "angels-bio-processing-paste",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-petri-dish",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-substrate-dish",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-seeded-dish",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        --{ "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-processing-alien-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-alien-2",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-yellow",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact-yellow",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-orange",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact-orange",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-purple",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact-purple",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-alien-pre-artifact-base",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-small-alien-artifact",
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
  -- CRYSTAL
  {
    type = "technology",
    name = "angels-bio-processing-crystal-splinter-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-refugium-fish-1",
      "angels-geode-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-crystalization-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-cutting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-grindstone",
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
    name = "angels-bio-processing-crystal-splinter-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-crystal-splinter-1",
      "angels-bio-processing-alien-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-crystalization-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-splinter-harmonic",
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
    name = "angels-bio-processing-crystal-splinter-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-crystal-splinter-2",
      "angels-bio-processing-alien-2",
      "angels-ore-powderizer",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-splinter-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-splinter-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-splinter-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-from-dust",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-slurry",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        --{ "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-processing-crystal-shard-1",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-alien-2",
      "angels-bio-refugium-puffer-2",
      "angels-bio-processing-crystal-splinter-1",
      "angels-ore-advanced-floatation",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-puffer-egg-shell-powder",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-egg-shell-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-crystalization-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-cutting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-green",
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
    name = "angels-bio-processing-crystal-shard-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-alien-2",
      "angels-bio-processing-crystal-shard-1",
      "angels-bio-processing-crystal-splinter-2",
      "angels-geode-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-enhancer",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-crystalization-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-shard-harmonic",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-shard-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-shard-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-shard-green",
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
    name = "angels-bio-processing-crystal-full",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-bio-processing-crystal-shard-1",
      "angels-bio-refugium-biter-3",
      "angels-advanced-ore-refining-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-full-cutting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-full-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-full-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-full-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-full-harmonic",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-full-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-full-red",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-powder-full-green",
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
})
