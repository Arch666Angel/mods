data:extend({
  -- PRE
  {
    type = "technology",
    name = "bio-processing-paste",
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-brown",
      "bio-nutrient-paste",
      "chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "paste-cellulose",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-cobalt",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-gold",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-iron",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-titanium",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "paste-zinc",
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
    name = "bio-processing-alien-1",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-refugium-fish-1",
      "bio-processing-red",
      "bio-processing-paste",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        --recipe = "alien-air-filtering"
        recipe = "alien-spores",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-bacteria",
      },
      {
        type = "unlock-recipe",
        recipe = "petri-dish",
      },
      {
        type = "unlock-recipe",
        recipe = "substrate-dish",
      },
      {
        type = "unlock-recipe",
        recipe = "seeded-dish",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        --{"chemical-science-pack", amount = 1},
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-processing-alien-2",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-alien-1",
      "geode-processing-2",
      "ore-powderizer",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-from-dust",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-slurry",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-enhancer",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        --{type = "item", name = "chemical-science-pack", amount = 1},
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-processing-alien-3",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-alien-2",
    },
    effects = {},
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        --{type = "item", name = "chemical-science-pack", amount = 1},
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  -- CRYSTAL
  {
    type = "technology",
    name = "bio-processing-crystal-splinter-1",
    icon = "__angelsbioprocessing__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-refugium-fish-1",
      "geode-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-crystalization-1",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-cutting",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-red",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-green",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-grindstone",
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
    name = "bio-processing-crystal-splinter-2",
    icon = "__angelsbioprocessing__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-crystal-splinter-1",
      "bio-processing-alien-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crystal-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-crystalization-2",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-harmonic",
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
    name = "bio-processing-crystal-splinter-3",
    icon = "__angelsbioprocessing__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-crystal-splinter-2",
      "bio-processing-alien-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-splinter-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-splinter-red",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-splinter-green",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        --{type = "item", name = "chemical-science-pack", amount = 1},
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bio-processing-crystal-shard-1",
    icon = "__angelsbioprocessing__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-alien-1",
      --"bio-refugium-hatchery",
      "bio-refugium-puffer-2",
      "bio-processing-crystal-splinter-1",
      "ore-powderizer",
      "geode-processing-2",
      "slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bio-puffer-egg-shell-powder",
      },
      {
        type = "unlock-recipe",
        recipe = "egg-shell-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-crystalization-1",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-cutting",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-red",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-green",
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
    name = "bio-processing-crystal-shard-2",
    icon = "__angelsbioprocessing__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-alien-2",
      "bio-processing-crystal-shard-1",
      "bio-processing-crystal-splinter-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-crystalization-2",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-harmonic",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-shard-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-shard-red",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-shard-green",
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
    name = "bio-processing-crystal-full",
    icon = "__angelsbioprocessing__/graphics/technology/crystal.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "bio-processing-crystal-shard-1",
      "bio-refugium-biter-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crystal-full-cutting",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-red",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-green",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-harmonic",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-full-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-full-red",
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-full-green",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "production-science-pack", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
      time = 30,
    },
  },
})
