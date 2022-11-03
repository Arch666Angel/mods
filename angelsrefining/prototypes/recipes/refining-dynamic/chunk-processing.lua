local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --TIER 2
  {
    type = "recipe",
    name = "angelsore1-chunk-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t2",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore1-chunk", amount = 6 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore1-chunk", amount = 9 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "a[angelsore1-chunk-processing]",
  },
  {
    type = "recipe",
    name = "angelsore2-chunk-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t2",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore2-chunk", amount = 6 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore2-chunk", amount = 9 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "b[angelsore2-chunk-processing]",
  },
  {
    type = "recipe",
    name = "angelsore3-chunk-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t2",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore3-chunk", amount = 6 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore3-chunk", amount = 9 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "c[angelsore3-chunk-processing]",
  },
  {
    type = "recipe",
    name = "angelsore4-chunk-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t2",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore4-chunk", amount = 6 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore4-chunk", amount = 9 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "d[angelsore4-chunk-processing]",
  },
  {
    type = "recipe",
    name = "angelsore5-chunk-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t2",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore5-chunk", amount = 6 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore5-chunk", amount = 9 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "e[angelsore5-chunk-processing]",
  },
  {
    type = "recipe",
    name = "angelsore6-chunk-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t2",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = { { type = "item", name = "angels-ore6-chunk", amount = 6 } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    expensive = {
      ingredients = { { type = "item", name = "angels-ore6-chunk", amount = 9 * rawmulti } },
      results = {
        { type = "item", name = "slag", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "f[angelsore6-chunk-processing]",
  },
})
