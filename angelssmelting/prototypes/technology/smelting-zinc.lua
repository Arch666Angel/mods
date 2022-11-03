data:extend({
  {
    type = "technology",
    name = "angels-zinc-smelting-1",
    localised_name = { "technology-name.angels-zinc-metallurgy" },
    localised_description = { "technology-description.angels-zinc-metallurgy" },
    icon = "__angelssmelting__/graphics/technology/casting-zinc-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "ore-floatation",
      "angels-metallurgy-2",
      "angels-lead-smelting-1",
      --"basic-chemistry"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "zinc-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-zinc-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-zinc",
      },
      {
        type = "unlock-recipe",
        recipe = "zinc-ore-processing-alt",
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
    name = "angels-zinc-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "ore-processing-2",
      "angels-zinc-smelting-1",
      "angels-coal-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "zinc-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-zinc-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-zinc",
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
    name = "angels-zinc-casting-2",
    icon = "__angelssmelting__/graphics/technology/casting-zinc-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "strand-casting-2",
      "angels-zinc-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-zinc-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-zinc-converting",
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
    name = "angels-zinc-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "ore-processing-3",
      "angels-zinc-smelting-2",
      "angels-sulfur-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "zinc-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-zinc-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-zinc-oxide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-zinc-smelting",
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
    name = "angels-zinc-casting-3",
    icon = "__angelssmelting__/graphics/technology/casting-zinc-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "strand-casting-3",
      "angels-zinc-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-zinc-casting-fast",
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
