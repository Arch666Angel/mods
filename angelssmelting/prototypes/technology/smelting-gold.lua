data:extend({
  {
    type = "technology",
    name = "angels-gold-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-metallurgy-1",
      "chlorine-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gold-ore-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-gold-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-gold"
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
    name = "angels-gold-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-gold-smelting-1",
      "ore-processing-1",
      "angels-nitrogen-processing-2",
      "strand-casting-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gold-ore-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-chlorauric-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "processed-gold-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-gold-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "powder-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-converting"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-gold-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-gold-converting"
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
    name = "angels-gold-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-gold-smelting-2",
      "ore-processing-2",
      "sodium-processing",
      "angels-coolant-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gold-processed-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-gold-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-gold-cyanide-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-gold-casting-fast"
      },
      {
        type = "unlock-recipe",
        recipe = "roll-gold-casting-fast"
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