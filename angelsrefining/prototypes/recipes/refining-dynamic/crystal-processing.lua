local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --TIER 3
  {
    type = "recipe",
    name = "angelsore1-crystal-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t3",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore1-crystal", amount = 8 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore1-crystal", amount = 12 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "a[angelsore1-crystal-processing]",
  },
  {
    type = "recipe",
    name = "angelsore2-crystal-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t3",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore2-crystal", amount = 8 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore2-crystal", amount = 12 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "b[angelsore2-crystal-processing]",
  },
  {
    type = "recipe",
    name = "angelsore3-crystal-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t3",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore3-crystal", amount = 8 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore3-crystal", amount = 12 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "c[angelsore3-crystal-processing]",
  },
  {
    type = "recipe",
    name = "angelsore4-crystal-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t3",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore4-crystal", amount = 8 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore4-crystal", amount = 12 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "d[angelsore4-crystal-processing]",
  },
  {
    type = "recipe",
    name = "angelsore5-crystal-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t3",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore5-crystal", amount = 8 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore5-crystal", amount = 12 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "e[angelsore5-crystal-processing]",
  },
  {
    type = "recipe",
    name = "angelsore6-crystal-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t3",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore6-crystal", amount = 8 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore6-crystal", amount = 12 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "f[angelsore6-crystal-processing]",
  },
})
