data:extend({
  {
    type = "technology",
    name = "angels-steel-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-steel.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-iron-smelting-1",
      "steel-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ingot-iron-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-steel-smelting-1"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-steel-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-steel-converting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-steel-plate"
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
    name = "angels-steel-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-steel.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-steel-smelting-1",
      "angels-silicon-smelting-1",
      "angels-manganese-smelting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "molten-steel-smelting-2"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-steel-smelting-3"
      },
      {
        type = "unlock-recipe",
        recipe = "powder-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "rod-stack-steel-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-steel-converting"
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
  {
    type = "technology",
    name = "angels-steel-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-steel.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-steel-smelting-2",
      "angels-cobalt-smelting-1",
      "angels-nickel-smelting-1",
      "angels-chrome-smelting-1",
      "angels-tungsten-smelting-1",
      "angels-coolant-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "molten-steel-smelting-4"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-steel-smelting-5"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-steel-casting-fast"
      },
      {
        type = "unlock-recipe",
        recipe = "rod-stack-steel-casting-fast"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
})