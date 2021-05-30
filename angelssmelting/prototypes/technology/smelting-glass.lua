data:extend(
  {
    {
      type = "technology",
      name = "angels-glass-smelting-1",
      icon = "__angelssmelting__/graphics/technology/glass-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "ore-crushing",
        --"angels-metallurgy-2",
        "powder-metallurgy-1",
        "strand-casting-1"
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
      name = "angels-glass-smelting-2",
      icon = "__angelssmelting__/graphics/technology/glass-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "powder-metallurgy-2",
        "angels-glass-smelting-1",
        "angels-stone-smelting-2",
        "angels-lead-smelting-2" -- need this for the lead oxide processing
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "glass-mixture-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-glass-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-coil-glass-fiber"
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
      name = "angels-glass-smelting-3",
      icon = "__angelssmelting__/graphics/technology/glass-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-4",
        "powder-metallurgy-3",
        --[["strand-casting-1",]]
        "angels-glass-smelting-2",
        "angels-aluminium-smelting-2",
        "angels-tin-casting-3",
        "sodium-processing",
        --"angels-nitrogen-processing-1"
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
