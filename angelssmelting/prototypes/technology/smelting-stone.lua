data:extend(
  {
    {
      type = "technology",
      name = "angels-stone-smelting-1",
      icon = "__angelssmelting__/graphics/technology/cement-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-metallurgy-1",
        "water-washing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "solid-lime"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-clay-brick-raw"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-clay-brick"
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
      name = "angels-stone-smelting-2",
      icon = "__angelssmelting__/graphics/technology/cement-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "powder-metallurgy-1",
        "angels-stone-smelting-1",
        "concrete",
        "resins"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cement-mixture-1"
        },
        {
          type = "unlock-recipe",
          recipe = "concrete-mixture-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-concrete"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-concrete-brick"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-casing-resin-mold"
        },
        {
          type = "unlock-recipe",
          recipe = "mold-expendable"
        }
      },
      unit = {
        count = 100,
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
      name = "angels-stone-smelting-3",
      icon = "__angelssmelting__/graphics/technology/cement-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "powder-metallurgy-2",
        "angels-stone-smelting-2",
        "angels-aluminium-smelting-1",
        "angels-steel-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cement-mixture-2"
        },
        {
          type = "unlock-recipe",
          recipe = "concrete-mixture-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-reinforced-concrete-brick"
        },
        {
          type = "unlock-recipe",
          recipe = "mold-non-expendable"
        },
        {
          type = "unlock-recipe",
          recipe = "mold-non-expendable-wash"
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
