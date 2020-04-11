data:extend(
{
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
        recipe = "bio-arboretum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "tree-generator-1"
      },
      {
        type = "unlock-recipe",
        recipe = "wood-sawing-1"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-saw"
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
      "bio-processing-crystal-1",
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
      {
        type = "unlock-recipe",
        recipe = "wood-sawing-2"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-crystal-tipped-saw"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"token-bio", 1}
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
      "bio-processing-crystal-2"
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
      {
        type = "unlock-recipe",
        recipe = "wood-sawing-3"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-crystal-full-saw"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"token-bio", 1}
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
      {
        type = "unlock-recipe",
        recipe = "bio-resin-resin-liquification"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-resin-wood-reprocessing"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"token-bio", 1}
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
        {"token-bio", 1}
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
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"token-bio", 1}
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
        {"token-bio", 1}
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
        {"token-bio", 1}
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
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"token-bio", 1}
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
        {"token-bio", 1}
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
        {"token-bio", 1}
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
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"token-bio", 1}
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
}
)