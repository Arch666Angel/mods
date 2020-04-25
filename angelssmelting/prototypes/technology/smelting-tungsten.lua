data:extend(
  {
    {
      type = "technology",
      name = "angels-tungsten-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
      icon_size = 128,
      prerequisites = {
        "powder-metallurgy-1",
        "angels-cobalt-smelting-2",
        "chlorine-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tungsten-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-tungstic-acid-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-tungsten-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-tungsten-hexafluoride-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "casting-powder-tungsten-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-tungsten"
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
      name = "angels-tungsten-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-tungsten-smelting-1",
        "angels-nickel-smelting-2",
        "ore-processing-1",
        "angels-nitrogen-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tungsten-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-tungsten-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-ammonium-paratungstate-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "casting-powder-tungsten-2"
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
    },
    {
      type = "technology",
      name = "angels-tungsten-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-tungsten-smelting-2",
        "ore-processing-2",
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tungsten-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-tungsten-smelting"
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
