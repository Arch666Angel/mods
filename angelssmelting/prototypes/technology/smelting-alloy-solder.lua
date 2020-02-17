data:extend({
  {
    type = "technology",
    name = "angels-solder-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-tin-smelting-1",
      "angels-lead-smelting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-1"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder"
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
    name = "angels-solder-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-solder-smelting-1",
      "angels-zinc-smelting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-2"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-solder-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-solder-converting"
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
    name = "angels-solder-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-solder-smelting-2",
      "angels-copper-smelting-1",
      "angels-silver-smelting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-3"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-solder-casting-fast"
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