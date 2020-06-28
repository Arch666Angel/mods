data:extend(
  {
    {
      type = "technology",
      name = "angels-tin-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "ore-crushing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tin-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-tin-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-tin"
        },
        {
          type = "unlock-recipe",
          recipe = "basic-tinned-copper-wire"
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
      name = "angels-tin-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-tin-smelting-1",
        "ore-processing-1",
        "angels-coal-processing",
        "strand-casting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tin-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-tin-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-tin"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-tin-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-tin-converting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-tin-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-tin-converting"
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
      name = "angels-tin-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-tin-smelting-2",
        "ore-processing-2",
        "angels-coolant-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tin-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-tin-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-tin-casting-fast"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-tin-casting-fast"
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
