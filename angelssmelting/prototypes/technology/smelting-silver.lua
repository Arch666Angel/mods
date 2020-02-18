data:extend({
  {
    type = "technology",
    name = "angels-silver-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-metallurgy-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silver-ore-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-silver-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-silver"
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
    name = "angels-silver-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-silver-smelting-1",
      "ore-processing-1",
      "angels-nitrogen-processing-2",
      "strand-casting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silver-ore-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "processed-silver-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-silver-nitrate-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "powder-silver"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-converting"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-silver-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-silver-converting"
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
    name = "angels-silver-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-silver-smelting-2",
      "ore-processing-2",
      "sodium-processing",
      "angels-coolant-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silver-processed-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-silver-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-silver-cyanide-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-silver-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-casting-fast"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-silver-casting-fast"
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