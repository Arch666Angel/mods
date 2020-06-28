data:extend(
  {
    {
      type = "technology",
      name = "angels-copper-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "ore-crushing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-copper"
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
      name = "angels-copper-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-copper-smelting-1",
        "ore-processing-1",
        "basic-chemistry",
        "strand-casting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-copper"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-copper-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-copper-converting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-copper-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-copper-converting"
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
      name = "angels-copper-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-copper-smelting-2",
        "ore-processing-2",
        "angels-sulfur-processing-1",
        "angels-coolant-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "anode-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-copper-casting-fast"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-copper-casting-fast"
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
