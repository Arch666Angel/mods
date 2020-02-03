data:extend(
{
  {
    type = "technology",
    name = "gardens",
    icon = "__angelsbioprocessing__/graphics/technology/seed-extractor-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "seed-extractor"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-garden-a"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-garden-cultivating-a"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-garden-a"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-garden-cultivating-a"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-garden-a"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-garden-cultivating-a"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-farm",
    icon = "__angelsbioprocessing__/graphics/technology/base-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "gardens",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "crop-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "composter"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-processor"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-soil"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fertilizer"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-temperate-farming",
    icon = "__angelsbioprocessing__/graphics/technology/temperate-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-farm",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "temperate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-1-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-temperate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-2-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-temperate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-3"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-3-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-temperate-3"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-4"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-4-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-temperate-4"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-5"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-5-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-temperate-5"
      },
    },
    unit =
    {
      count = 32,
      ingredients = {
        {"automation-science-pack", 4},
        {"token-bio", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-temperate-farm",
    icon = "__angelsbioprocessing__/graphics/technology/temperate-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-temperate-farming",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "temperate-garden-b"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-garden-cultivating-b"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-upgrade"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 4},
        {"token-bio", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-desert-farming",
    icon = "__angelsbioprocessing__/graphics/technology/desert-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-farm",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "desert-1"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-1-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-desert-1"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-2"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-2-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-desert-2"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-3"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-3-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-desert-3"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-4"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-4-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-desert-4"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-5"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-5-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-desert-5"
      },
    },
    unit =
    {
      count = 32,
      ingredients = {
        {"automation-science-pack", 4},
        {"token-bio", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-desert-farm",
    icon = "__angelsbioprocessing__/graphics/technology/desert-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-desert-farming",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "desert-garden-b"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-garden-cultivating-b"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-upgrade"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 4},
        {"token-bio", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-swamp-farming",
    icon = "__angelsbioprocessing__/graphics/technology/swamp-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-farm",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "swamp-1"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-1-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-swamp-1"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-2"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-2-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-swamp-2"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-3"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-3-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-swamp-3"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-4"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-4-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-swamp-4"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-5"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-5-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "sorting-swamp-5"
      },
    },
    unit =
    {
      count = 32,
      ingredients = {
        {"automation-science-pack", 4},
        {"token-bio", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-swamp-farm",
    icon = "__angelsbioprocessing__/graphics/technology/swamp-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-swamp-farming",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "swamp-garden-b"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-garden-cultivating-b"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-upgrade"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 4},
        {"token-bio", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-nutrient-paste",
    icon = "__angelsbioprocessing__/graphics/technology/nutrient-extractor-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-farm",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nutrient-extractor",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-beans-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-beans-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-corn-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-leafs-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-nuts-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-pips-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fruit-nutrients"
      },
      {
        type = "unlock-recipe",
        recipe = "nutrients-refining-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nutrients-refining-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nutrients-refining-3"
      },
    },
    unit =
    {
      count = 40,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-pressing",
    icon = "__angelsbioprocessing__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-farm",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bio-press",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-raw-vegetable-oil-nuts"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-raw-vegetable-oil-pips"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-raw-vegetable-oil-beans"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-raw-vegetable-oil-filtering-1"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-raw-vegetable-oil-filtering-2"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-vegetable-oil-refining"
      },
    },
    unit =
    {
      count = 40,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-fermentation",
    icon = "__angelsbioprocessing__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-farm",
    },
    effects =
    {
      -- {
      -- type = "unlock-recipe",
      -- recipe = "bio-press",
      -- },
      {
        type = "unlock-recipe",
        recipe = "fermentation-corn"
      },
      {
        type = "unlock-recipe",
        recipe = "fermentation-fruit"
      },
      {
        type = "unlock-recipe",
        recipe = "anaerobic-fermentation"
      },
      {
        type = "unlock-recipe",
        recipe = "aerobic-fermentation"
      },
      {
        type = "unlock-recipe",
        recipe = "ethanol-to-ethylene-synthesis"
      },
    },
    unit =
    {
      count = 40,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-plastic-1",
    icon = "__angelsbioprocessing__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-fermentation",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-acetic-acid-catalyst",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-acetic-anhydride"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-acetate-mixture"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-cellulose-acetate"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-plastic-1"
      },
    },
    unit =
    {
      count = 40,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-plastic-2",
    icon = "__angelsbioprocessing__/graphics/technology/press-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-plastic-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-propionic-acid-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-plastic-2"
      },
    },
    unit =
    {
      count = 40,
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
    name = "angels-garden-mutations",
    icons={
      {icon = "__angelsbioprocessing__/graphics/technology/seed-extractor-tech.png",icon_size=128},
      {icon = "__angelsbioprocessing__/graphics/technology/swamp-farm-tech.png",icon_size = 128,scale=0.4,shift={-40,-50}},
      {icon = "__angelsbioprocessing__/graphics/technology/temperate-farm-tech.png",icon_size = 128,scale=0.4,shift={40,-50}},
      {icon = "__angelsbioprocessing__/graphics/technology/desert-farm-tech.png",icon_size = 128,scale=0.4,shift={40,50}},
      {icon = "__base__/graphics/icons/uranium-235.png",icon_size=64,scale=0.6,shift={-40,50}},
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "uranium-processing",
      "bio-temperate-farm",
      "bio-swamp-farm",
      "bio-desert-farm",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "temperate-garden-mutation-desert"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-garden-mutation-swamp"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-garden-mutation-temperate"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-garden-mutation-temperate"
      },
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack",1},
        {"token-bio",2},
      },
      time = 30,
    },
  },
}
)
