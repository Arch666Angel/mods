data:extend(
  {
    {
      type = "technology",
      name = "angels-iron-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-metallurgy-1",
        "ore-crushing"
      },
      effects = {
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
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
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
      prerequisites = {
        "angels-iron-smelting-1",
        "angels-manganese-smelting-1",
        "angels-silicon-smelting-1",
        "ore-processing-1",
        "angels-coal-processing",
        "strand-casting-1"
      },
      effects = {
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
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
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
      prerequisites = {
        "angels-iron-smelting-2",
        "angels-nickel-smelting-1",
        "angels-cobalt-smelting-1",
        "angels-chrome-smelting-1",
        "ore-processing-2",
        "water-washing-1",
        "angels-coolant-1"
      },
      effects = {
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
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    }
  }
)
