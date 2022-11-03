local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --Tier 1
  {
    type = "recipe",
    name = "angelsore1-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore1-crushed", amount = 4 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore1-crushed", amount = 6 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "a[angelsore1-crushed-processing]",
  },
  {
    type = "recipe",
    name = "angelsore2-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore2-crushed", amount = 4 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore2-crushed", amount = 6 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "b[angelsore2-crushed-processing]",
  },
  {
    type = "recipe",
    name = "angelsore3-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore3-crushed", amount = 4 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore3-crushed", amount = 6 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "c[angelsore3-crushed-processing]",
  },
  {
    type = "recipe",
    name = "angelsore4-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore4-crushed", amount = 4 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore4-crushed", amount = 6 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "d[angelsore4-crushed-processing]",
  },
  {
    type = "recipe",
    name = "angelsore5-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore5-crushed", amount = 4 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore5-crushed", amount = 6 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "e[angelsore5-crushed-processing]",
  },
  {
    type = "recipe",
    name = "angelsore6-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore6-crushed", amount = 4 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore6-crushed", amount = 6 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    results = {
      { type = "item", name = "slag", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "f[angelsore6-crushed-processing]",
  },
})
