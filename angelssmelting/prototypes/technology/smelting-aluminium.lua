data:extend(
  {
    {
      type = "technology",
      name = "angels-aluminium-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
      icon_size = 128,
      prerequisites = {
        "powder-metallurgy-1",
        "chlorine-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bauxite-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-aluminium-hydroxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-aluminium-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-aluminium-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-aluminium"
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
      name = "angels-aluminium-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-aluminium-smelting-1",
        "ore-processing-1",
        "strand-casting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bauxite-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-aluminium-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-aluminium-smelting-2"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-aluminium"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-aluminium-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-aluminium-converting"
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
      name = "angels-aluminium-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-aluminium-smelting-2",
        "ore-processing-2",
        "sodium-processing",
        "angels-coolant-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "aluminium-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-aluminium-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-aluminate-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-aluminium-smelting-3"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-aluminium-casting-fast"
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
