data:extend({
  {
    type = "technology",
    name = "angels-stone-smelting-1",
    icon = "__angelssmelting__/graphics/technology/cement-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-metallurgy-1",
      "water-washing-1",
    },
    effects =
    {
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
      },
      {
        type = "unlock-recipe",
        recipe = "mold-expendable"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
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
    prerequisites =
    {
      "angels-stone-smelting-1",
      "powder-metallurgy-1",
      "concrete",
    },
    effects =
    {
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
        recipe = "mold-non-expendable"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-non-expendable-wash"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
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
    prerequisites =
    {
      "angels-stone-smelting-2",
    },
    effects =
    {
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
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
})