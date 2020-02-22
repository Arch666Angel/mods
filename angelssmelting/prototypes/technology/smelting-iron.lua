data:extend({
  {
    type = "technology",
    name = "angels-iron-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-metallurgy-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-ore-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-1"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-iron"
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
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-iron-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-iron-smelting-1",
      "ore-processing-1",
      "angels-coal-processing",
      "strand-casting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-ore-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "processed-iron-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-2"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-3"
      },
      {
        type = "unlock-recipe",
        recipe = "powder-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-iron-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-iron-converting"
      },
      {
        type = "unlock-recipe",
        recipe = "rod-stack-iron-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-iron-converting"
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
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-iron-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-iron-smelting-2",
      "ore-processing-2",
      "water-washing-2",
      "angels-coolant-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-processed-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-iron-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-4"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-5"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-iron-casting-fast"
      },
      {
        type = "unlock-recipe",
        recipe = "rod-stack-iron-casting-fast"
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
    order = "c-a"
  },
})