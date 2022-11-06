data:extend({
  {
    type = "technology",
    name = "angels-solder-smelting-basic",
    icon = "__angelssmelting__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-mixture",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder-mixture-smelting",
      },
    },
    unit = {
      count = 25,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-solder-smelting-1",
    icon = "__angelssmelting__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-1"
      "angels-solder-smelting-basic",
      "angels-tin-smelting-1",
      "angels-lead-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solder",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-solder-smelting-2",
    icon = "__angelssmelting__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-2",
      "strand-casting-1",
      "angels-solder-smelting-1",
      "angels-zinc-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-3",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-solder-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-solder-converting",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-solder-smelting-3",
    icon = "__angelssmelting__/graphics/technology/casting-solder-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "strand-casting-2",
      "angels-solder-smelting-2",
      "angels-copper-smelting-2",
      "angels-silver-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solder-smelting-4",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-solder-casting-fast",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
