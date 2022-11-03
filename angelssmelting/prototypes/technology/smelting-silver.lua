data:extend({
  {
    type = "technology",
    name = "angels-silver-smelting-1",
    localised_name = { "technology-name.angels-silver-metallurgy" },
    localised_description = { "technology-description.angels-silver-metallurgy" },
    icon = "__angelssmelting__/graphics/technology/casting-silver-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "ore-floatation",
      "angels-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "silver-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-silver-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-silver",
      },
      {
        type = "unlock-recipe",
        recipe = "basic-silvered-copper-wire",
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
    name = "angels-silver-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-silver-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "ore-processing-2",
      "angels-silver-smelting-1",
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "silver-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-silver-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-silver-nitrate-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-silver",
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
  {
    type = "technology",
    name = "angels-silver-casting-2",
    icon = "__angelssmelting__/graphics/technology/casting-silver-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "strand-casting-2",
      "angels-silver-smelting-1",
      "angels-copper-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-converting",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-silver-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-silver-converting",
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
  {
    type = "technology",
    name = "angels-silver-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-silver-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "ore-processing-3",
      "angels-silver-smelting-2",
      "sodium-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "silver-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-silver-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-silver-cyanide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-silver-smelting",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "production-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-silver-casting-3",
    icon = "__angelssmelting__/graphics/technology/casting-silver-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "strand-casting-3",
      "angels-silver-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-wire-coil-silver-casting-fast",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-silver-casting-fast",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "production-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
