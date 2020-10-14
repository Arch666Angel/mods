data:extend(
  {
    {
      type = "technology",
      name = "angels-cobalt-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "ore-floatation",
        "angels-metallurgy-2",
        "angels-coal-processing-2"
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
        },
        {
          type = "unlock-recipe",
          recipe = "cobalt-ore-processing-alt"
        }
      },
      unit = {
        count = 150,
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
        --"angels-metallurgy-3",
        "ore-processing-2",
        "strand-casting-2",
        "angels-cobalt-smelting-1",
        "water-washing-1"
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
        count = 200,
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
        --"angels-metallurgy-4",
        "ore-processing-3",
        "strand-casting-3",
        "angels-cobalt-smelting-2",
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
        count = 250,
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
