local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --TIER 2 MIX
  {
    type = "recipe",
    name = "angelsore-chunk-mix1-processing", --quartz
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore5-chunk", amount = 2 },
        { type = "item", name = "angels-ore6-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore5-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore6-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "e[angelsore-chunk-mix1-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-chunk-mix2-processing", --nickel
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore1-chunk", amount = 2 },
        { type = "item", name = "angels-ore5-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore1-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore5-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "f[angelsore-chunk-mix2-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-chunk-mix3-processing", --aluminium
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore2-chunk", amount = 2 },
        { type = "item", name = "angels-ore4-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore2-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore4-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "g[angelsore-chunk-mix3-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-chunk-mix4-processing", --zinc
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore2-chunk", amount = 2 },
        { type = "item", name = "angels-ore6-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore2-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore6-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "h[angelsore-chunk-mix4-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-chunk-mix5-processing", --silver-ore
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore3-chunk", amount = 2 },
        { type = "item", name = "angels-ore6-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore3-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore6-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "i[angelsore-chunk-mix5-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-chunk-mix6-processing", --fluorite
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore8-powder", amount = 2 },
        { type = "item", name = "angels-ore2-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore4-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore2-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "j",
  },
  {
    type = "recipe",
    name = "angelsore-chunk-mix7-processing", --unused
    category = "ore-sorting-3",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore1-chunk", amount = 2 },
        { type = "item", name = "angels-ore2-chunk", amount = 2 },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore1-chunk", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore2-chunk", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "j",
  },
  --TIER 2.5
  {
    type = "recipe",
    name = "angelsore8-dust-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t3",
    energy_required = 1.5,
    allow_decomposition = false,
    normal = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore8-dust", amount = 8 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore8-dust", amount = 9 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore8-dust.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "angelsore9-dust-processing",
    category = "ore-sorting-3",
    subgroup = "ore-sorting-t3",
    energy_required = 1.5,
    allow_decomposition = false,
    normal = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore9-dust", amount = 8 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore9-dust", amount = 9 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore9-dust.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "j",
  },
})
