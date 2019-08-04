
data:extend(
{ 
   {
    type = "technology",
    name = "bio-processing-brown",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "water-treatment"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "algae-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-brown"
      },

      {
        type = "unlock-recipe",
        recipe = "solid-alginic-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-green-simple"
      },
      {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-algae"
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
    name = "bio-processing-green",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
	"bio-processing-brown",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "algae-green"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-farm-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-methanol-from-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-brown-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-brown-burning-wash"
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
    name = "bio-processing-blue",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-processing-green",
      "bio-processing-brown",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "algae-farm-3"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "blue-fiber-algae"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ammonia-from-blue-fiber"
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
    name = "bio-processing-red",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-processing-blue",
    },
    effects =
    {
      -- {
      -- type = "unlock-recipe",
      -- recipe = "algae-farm-3"
      -- },
      {
        type = "unlock-recipe",
        recipe = "algae-red"
      },
      {
        type = "unlock-recipe",
        recipe = "red-fiber-algae"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-calcium-carbonate"
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
  --WOOD/PAPER
  {
    type = "technology",
    name = "bio-wood-processing",
    icon = "__angelsbioprocessing__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wood-pellets"
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
    name = "bio-wood-processing-2",
    icon = "__angelsbioprocessing__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-wood-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wood-charcoal",
      },
      {
        type = "unlock-recipe",
        recipe = "carbon-from-charcoal",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-carbon-dioxide-from-wood"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-wood-processing-3",
    icon = "__angelsbioprocessing__/graphics/technology/wood-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-wood-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wood-bricks"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
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
    prerequisites =
    {
      "bio-wood-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bio-generator-temperate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-generator-swamp-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-generator-desert-1"
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "tree-generator-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-arboretum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-saw"
      },
      {
        type = "unlock-recipe",
        recipe = "wood-sawing"
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
    name = "bio-arboretum-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png",
      },
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tree-generator-2"
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
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
    prerequisites =
    {
      "bio-arboretum-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tree-generator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "tree-arboretum-3"
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
    name = "bio-arboretum-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-1",
      "bio-fermentation",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-generator-1"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-arboretum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-resin"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-temperate-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-temperate-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-generator-2"
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
    name = "bio-arboretum-temperate-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-temperate-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-generator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "temperate-tree-arboretum-2"
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
    name = "bio-arboretum-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-1",
      "bio-nutrient-paste",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-generator-1"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-arboretum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-plastic"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-swamp-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-swamp-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-generator-2"
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
    name = "bio-arboretum-swamp-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-swamp-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-generator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "swamp-tree-arboretum-2"
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
    name = "bio-arboretum-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-1",
      "bio-nutrient-paste",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "desert-tree-generator-1"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-tree-arboretum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-rubber"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-arboretum-desert-2",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-desert-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "desert-tree-generator-2"
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
    name = "bio-arboretum-desert-3",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png",
      }
    },
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-arboretum-desert-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "desert-tree-generator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "desert-tree-arboretum-2"
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
    name = "bio-paper-1",
    icon = "__angelsbioprocessing__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-processing-brown",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-wood-pulp"
      },
      {
        type = "unlock-recipe",
        recipe = "paper-bleaching-1"
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
    name = "bio-paper-2",
    icon = "__angelsbioprocessing__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-paper-1",
      "angels-nitrogen-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "paper-bleaching-2"
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
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-paper-3",
    icon = "__angelsbioprocessing__/graphics/technology/paper-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-paper-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "paper-bleaching-3"
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
  --FARMING
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
  --ALIEN
  {
    type = "technology",
    name = "bio-refugium-puffer",
    icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-tech.png",
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
        recipe = "gas-puffer-atmosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-puffing-1"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-breeding-1"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-egg-1"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-butchery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-puffing-2"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-breeding-2"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-egg-2"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-butchery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-puffing-3"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-breeding-3"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-egg-3"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-butchery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-puffing-4"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-breeding-4"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-egg-4"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-butchery-4"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-puffing-5"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-breeding-5"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-egg-5"
      },
      {
        type = "unlock-recipe",
        recipe = "puffer-butchery-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-refugium-puffer"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-hatchery"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-butchery"
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
    name = "bio-refugium-hogger",
    icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-tech.png",
    icon_size = 128,
	hidden = true,
	enabled = false,
    order = "c-a",
    prerequisites =
    {
      "bio-nutrient-paste",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hogger-hogging-1"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-breeding-1"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-butchery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-hogging-2"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-breeding-2"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-butchery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-hogging-3"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-breeding-3"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-butchery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-hogging-4"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-breeding-4"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-butchery-4"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-hogging-5"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-breeding-5"
      },
      {
        type = "unlock-recipe",
        recipe = "hogger-butchery-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-refugium-hogger"
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
    name = "bio-refugium-fish",
    icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-fish-tech.png",
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
        recipe = "fish-breeding-1"
      },
      {
        type = "unlock-recipe",
        recipe = "fish-butchery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "fish-breeding-2"
      },
      {
        type = "unlock-recipe",
        recipe = "fish-butchery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "fish-breeding-3"
      },
      {
        type = "unlock-recipe",
        recipe = "fish-butchery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-refugium-fish"
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
        recipe = "alien-air-filtering"
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
