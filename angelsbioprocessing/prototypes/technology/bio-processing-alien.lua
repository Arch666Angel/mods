data:extend(
{
  {
    type = "technology",
    name = "bio-processing-paste",
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
        "bio-processing-alien",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "paste-cellulose"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-cobalt"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-silver"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-titanium"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-tungsten"
      },
      {
        type = "unlock-recipe",
        recipe = "paste-zinc"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-alien",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-nutrient-paste",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        --recipe = "alien-air-filtering"
        recipe = "alien-spores"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-bacteria"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-goo"
      },
      {
        type = "unlock-recipe",
        recipe = "petri-dish"
      },
      {
        type = "unlock-recipe",
        recipe = "substrate-dish"
      },
      {
        type = "unlock-recipe",
        recipe = "seeded-dish"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-enhancer"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-grindstone"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-slurry"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-biter-small",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
        "bio-processing-alien",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "biter-small-egg"
      },
      {
        type = "unlock-recipe",
        recipe = "biter-small"
      },
      {
        type = "unlock-recipe",
        recipe = "biter-small-butchering"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-cutting"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-red"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-splinter-green"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-splinter-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-splinter-red"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-splinter-green"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-refugium-biter"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-biter-medium",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-biter-small",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "biter-medium-egg"
      },
      {
        type = "unlock-recipe",
        recipe = "biter-medium"
      },
      {
        type = "unlock-recipe",
        recipe = "biter-medium-butchering"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-cutting"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-red"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-shard-green"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-shard-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-shard-red"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-shard-green"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-biter-big",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-biter-medium",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "biter-big-egg"
      },
      {
        type = "unlock-recipe",
        recipe = "biter-big"
      },
      {
        type = "unlock-recipe",
        recipe = "biter-big-butchering"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-cutting"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-red"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-full-green"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-full-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-full-red"
      },
      {
        type = "unlock-recipe",
        recipe = "crystal-powder-full-green"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
}
)