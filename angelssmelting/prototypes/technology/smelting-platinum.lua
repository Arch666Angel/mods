data:extend(
  {
    {
      type = "technology",
      name = "angels-platinum-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-platinum.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "platinum-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-platinum-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-platinum"
        },
        {
          type = "unlock-recipe",
          recipe = "basic-platinated-copper-wire"
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
      name = "angels-platinum-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-platinum.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-platinum-smelting-1",
        "ore-processing-1",
        "angels-sulfur-processing-1",
        "strand-casting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "platinum-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-platinum-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-platinum"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-platinum-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-platinum-converting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-platinum-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-platinum-converting"
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
      name = "angels-platinum-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-platinum.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-platinum-smelting-2",
        "ore-processing-2",
        "chlorine-processing-1",
        "angels-nitrogen-processing-2",
        "angels-coolant-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "platinum-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-platinum-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-hexachloroplatinic-acid-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-ammonium-chloroplatinate-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-platinum-casting-fast"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-platinum-casting-fast"
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
