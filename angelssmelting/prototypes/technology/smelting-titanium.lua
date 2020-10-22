data:extend(
  {
    {
      type = "technology",
      name = "angels-titanium-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "ore-leaching",
        "angels-metallurgy-3",
        "angels-coal-processing-2",
        "chlorine-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "titanium-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-titanium-tetrachloride-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "sponge-titanium-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-titanium-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-titanium"
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
      name = "angels-titanium-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-4",
        "ore-processing-3",
        "strand-casting-3",
        "angels-titanium-smelting-1",
        "angels-manganese-smelting-2",
        "angels-nickel-smelting-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "titanium-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-titanium-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-titanium-smelting-2"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-titanium-smelting-3"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-titanium"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-titanium-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-titanium-converting"
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
    },
    {
      type = "technology",
      name = "angels-titanium-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-5",
        "ore-processing-4",
        "strand-casting-4",
        "angels-titanium-smelting-2",
        "angels-tin-smelting-3",
        "angels-aluminium-smelting-3",
        "angels-chrome-smelting-2",
        "angels-cobalt-smelting-3",
        "basic-chemistry-2" -- it seems rediculous adding this prerequisite to yellow...
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "titanium-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-titanium-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-titanium-smelting-4"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-titanium-smelting-5"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-titanium-casting-fast"
        }
      },
      unit = {
        count = 300,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    }
  }
)
