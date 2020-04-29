data:extend(
  {
    {
      type = "technology",
      name = "angels-glass-smelting-1",
      icon = "__angelssmelting__/graphics/technology/glass-tech.png",
      icon_size = 128,
      prerequisites = {
        "powder-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "glass-mixture-1"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-glass-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-glass-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-coil-glass-fiber"
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
      name = "angels-glass-smelting-2",
      icon = "__angelssmelting__/graphics/technology/glass-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-glass-smelting-1",
        "angels-stone-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "glass-mixture-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-glass-2"
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
      name = "angels-glass-smelting-3",
      icon = "__angelssmelting__/graphics/technology/glass-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-glass-smelting-2",
        "strand-casting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "glass-mixture-3"
        },
        {
          type = "unlock-recipe",
          recipe = "glass-mixture-4"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-glass-3"
        }
        --[[{
        type = "unlock-recipe",
        recipe = "angels-coil-glass-fiber"
      },]]
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
