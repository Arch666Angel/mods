local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --TIER 1 MIX
  {
    type = "recipe",
    name = "angelsore-crushed-mix1-processing", --iron
    category = "ore-sorting-2",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore1-crushed", amount = 2 },
        { type = "item", name = "angels-ore2-crushed", amount = 2 },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore1-crushed", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore2-crushed", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "a[angelsore-crushed-mix1-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-crushed-mix2-processing", --copper
    category = "ore-sorting-2",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore3-crushed", amount = 2 },
        { type = "item", name = "angels-ore4-crushed", amount = 2 },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore3-crushed", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore4-crushed", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "b[angelsore-crushed-mix2-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-crushed-mix3-processing", --lead
    category = "ore-sorting-2",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore4-crushed", amount = 2 },
        { type = "item", name = "angels-ore5-crushed", amount = 2 },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore4-crushed", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore5-crushed", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "c[angelsore-crushed-mix3-processing]",
  },
  {
    type = "recipe",
    name = "angelsore-crushed-mix4-processing", --tin
    category = "ore-sorting-2",
    subgroup = "ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore6-crushed", amount = 2 },
        { type = "item", name = "angels-ore3-crushed", amount = 2 },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore6-crushed", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore3-crushed", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "d[angelsore-crushed-mix4-processing]",
  },
  --TIER 1.5
  {
    type = "recipe",
    name = "angelsore8-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    allow_decomposition = false,
    normal = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore8-crushed", amount = 4 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore8-crushed", amount = 6 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore8-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "angelsore8-powder-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t2",
    energy_required = 1,
    allow_decomposition = false,
    normal = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore8-powder", amount = 6 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore8-powder", amount = 8 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore8-powder.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "angelsore9-crushed-processing",
    category = "ore-sorting",
    subgroup = "ore-sorting-t1",
    energy_required = 1,
    allow_decomposition = false,
    normal = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore9-crushed", amount = 4 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore9-crushed", amount = 6 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore9-crushed.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "angelsore9-powder-processing",
    category = "ore-sorting-2",
    subgroup = "ore-sorting-t2",
    energy_required = 1,
    allow_decomposition = false,
    normal = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore9-powder", amount = 6 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore9-powder", amount = 8 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icons = {
      { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
      { icon = "__angelsrefining__/graphics/icons/angels-ore9-powder.png", scale = 0.5, shift = { -10, 10 } },
    },
    icon_size = 32,
    order = "h",
  },
})
