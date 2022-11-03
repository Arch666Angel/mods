local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --Tier 0
  {
    type = "recipe",
    name = "angelsore1-crushed-smelting",
    category = "smelting",
    subgroup = "raw-material",
    normal = {
      energy_required = 7,
      ingredients = { { type = "item", name = "angels-ore1-crushed", amount = 3 } },
      results = { { type = "item", name = "iron-plate", amount = 2 } },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 3.5,
      ingredients = { { type = "item", name = "angels-ore1-crushed", amount = 5 * rawmulti } },
      results = { { type = "item", name = "iron-plate", amount = 1 } },
      enabled = true,
      allow_decomposition = false,
    },
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmelting__/graphics/icons/plate-iron.png",
      } or {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    icon_size = 32,
    order = "b[iron-ore]-a[crushed]",
  },
  {
    type = "recipe",
    name = "angelsore3-crushed-smelting",
    category = "smelting",
    subgroup = "raw-material",
    normal = {
      energy_required = 7,
      ingredients = { { type = "item", name = "angels-ore3-crushed", amount = 3 } },
      results = { { type = "item", name = "copper-plate", amount = 2 } },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 3.5,
      ingredients = { { type = "item", name = "angels-ore3-crushed", amount = 5 * rawmulti } },
      results = { { type = "item", name = "copper-plate", amount = 1 } },
      enabled = true,
      allow_decomposition = false,
    },
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmelting__/graphics/icons/plate-copper.png",
      } or {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    icon_size = 32,
    order = "c[copper-ore]-a[crushed]",
  },
  {
    type = "recipe",
    name = "angelsore5-crushed-smelting",
    category = "smelting",
    subgroup = "raw-material",
    normal = {
      energy_required = 7,
      ingredients = { { type = "item", name = "angels-ore5-crushed", amount = 3 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 3.5,
      ingredients = { { type = "item", name = "angels-ore5-crushed", amount = 5 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    enabled = true,
    allow_decomposition = false,
    icon_size = 32,
    order = "a-a [angelsore5-crushed-smelting]",
  },
  {
    type = "recipe",
    name = "angelsore6-crushed-smelting",
    category = "smelting",
    subgroup = "raw-material",
    normal = {
      energy_required = 7,
      ingredients = { { type = "item", name = "angels-ore6-crushed", amount = 3 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 3.5,
      ingredients = { { type = "item", name = "angels-ore6-crushed", amount = 5 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    icon_size = 32,
    order = "a-a [angelsore6-crushed-smelting]",
  },
})
