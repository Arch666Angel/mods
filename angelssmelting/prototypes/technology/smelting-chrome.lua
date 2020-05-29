data:extend(
  {
    {
      type = "technology",
      name = "angels-chrome-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-chrome.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "chrome-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-chrome-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-chrome"
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
      name = "angels-chrome-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-chrome.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-chrome-smelting-1",
        "ore-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "chrome-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-chrome-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-chrome"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-chrome-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-chrome-converting"
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
      name = "angels-chrome-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-chrome.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-chrome-smelting-2",
        "ore-processing-2",
        "sodium-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "chrome-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-chrome-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-chromate-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-dichromate-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-chrome-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-chrome-casting-fast"
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
