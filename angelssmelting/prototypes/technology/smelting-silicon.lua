data:extend({
  {
    type = "technology",
    name = "angels-silicon-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-metallurgy-1",
      "angels-coal-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silicon-ore-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-silicon-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-1"
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
    name = "angels-silicon-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-silicon-smelting-1",
      "ore-processing-1",
      "chlorine-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silica-ore-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "processed-silicon-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-trichlorosilane-smelting"
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
    name = "angels-silicon-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-silicon-smelting-2",
      "ore-processing-2",
      "basic-chemistry",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silica-processed-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-silicon-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-silane-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-quartz-crucible"
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