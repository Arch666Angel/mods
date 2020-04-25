data:extend(
  {
    {
      type = "technology",
      name = "angels-cobalt-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cobalt-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-cobalt-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-cobalt"
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
      name = "angels-cobalt-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-cobalt-smelting-1",
        "ore-processing-1",
        "water-washing-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cobalt-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-cobalt-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-cobalt-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-cobalt"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-cobalt-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-cobalt-converting"
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
      name = "angels-cobalt-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-cobalt-smelting-2",
        "ore-processing-2",
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cobalt-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-cobalt-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-cobalt-hydroxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-cobalt-casting-fast"
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
