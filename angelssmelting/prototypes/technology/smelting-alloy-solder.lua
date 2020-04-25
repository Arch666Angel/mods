data:extend(
  {
    {
      type = "technology",
      name = "angels-solder-smelting-basic",
      icon = "__angelssmelting__/graphics/technology/smelting-solder.png",
      icon_size = 128,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-solder-mixture"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-solder-mixture-smelting"
        }
      },
      unit = {
        count = 25,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-solder-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-solder.png",
      icon_size = 128,
      prerequisites = {
        "angels-solder-smelting-basic",
        "angels-tin-smelting-1",
        "angels-lead-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-solder-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-solder-smelting-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-solder"
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
      name = "angels-solder-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-solder.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-solder-smelting-1",
        "angels-zinc-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-solder-smelting-3"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-solder-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-solder-converting"
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
      name = "angels-solder-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-solder.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-solder-smelting-2",
        "angels-copper-smelting-1",
        "angels-silver-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-solder-smelting-4"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-solder-casting-fast"
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
