data:extend(
  {
    {
      type = "technology",
      name = "angels-manganese-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-manganese.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "manganese-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-manganese-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-manganese"
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
      name = "angels-manganese-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-manganese.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-manganese-smelting-1",
        "ore-processing-1",
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "manganese-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-manganese-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "manganese-processed-processing-alt"
        },
        {
          type = "unlock-recipe",
          recipe = "cathode-manganese-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-manganese"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-manganese-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-manganese-converting"
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
    },
    {
      type = "technology",
      name = "angels-manganese-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-manganese.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-manganese-smelting-2",
        "ore-processing-2",
        "angels-iron-smelting-3",
        "oil-gas-extraction"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "manganese-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-manganese-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-manganese-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-iron-hydroxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-manganese-casting-fast"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    }
  }
)
