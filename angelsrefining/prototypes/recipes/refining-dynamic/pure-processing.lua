local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --TIER 4
  {
    type = "recipe",
    name = "angelsore1-pure-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t4",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore1-pure", amount = 9 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore1-pure", amount = 13 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore1-pure.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "a[angelsore1-pure-processing]",
  },
  {
    type = "recipe",
    name = "angelsore2-pure-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t4",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore2-pure", amount = 9 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore2-pure", amount = 13 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore2-pure.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "b[angelsore2-pure-processing]",
  },
  {
    type = "recipe",
    name = "angelsore3-pure-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t4",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore3-pure", amount = 9 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore3-pure", amount = 13 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore3-pure.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "c[angelsore3-pure-processing]",
  },
  {
    type = "recipe",
    name = "angelsore4-pure-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t4",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore4-pure", amount = 9 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore4-pure", amount = 13 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore4-pure.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "d[angelsore4-pure-processing]",
  },
  {
    type = "recipe",
    name = "angelsore5-pure-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t4",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore5-pure", amount = 9 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore5-pure", amount = 13 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore5-pure.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "e[angelsore5-pure-processing]",
  },
  {
    type = "recipe",
    name = "angelsore6-pure-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t4",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore6-pure", amount = 9 } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore6-pure", amount = 13 * rawmulti } },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore6-pure.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "f[angelsore6-pure-processing]",
  },
})
