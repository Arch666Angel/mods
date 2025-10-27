data:extend({
  --TIER 1 MIX
  {
    type = "recipe",
    name = "angels-ore-crushed-mix1-processing", --iron
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-2",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crushed", amount = 2 },
      { type = "item", name = "angels-ore2-crushed", amount = 2 },
      { type = "item", name = "angels-catalysator-brown", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "a[angels-ore-crushed-mix1-processing]",
  },
  {
    type = "recipe",
    name = "angels-ore-crushed-mix2-processing", --copper
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-2",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore3-crushed", amount = 2 },
      { type = "item", name = "angels-ore4-crushed", amount = 2 },
      { type = "item", name = "angels-catalysator-brown", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "b[angels-ore-crushed-mix2-processing]",
  },
  {
    type = "recipe",
    name = "angels-ore-crushed-mix3-processing", --lead
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-2",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore4-crushed", amount = 2 },
      { type = "item", name = "angels-ore5-crushed", amount = 2 },
      { type = "item", name = "angels-catalysator-brown", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "c[angels-ore-crushed-mix3-processing]",
  },
  {
    type = "recipe",
    name = "angels-ore-crushed-mix4-processing", --tin
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-2",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore6-crushed", amount = 2 },
      { type = "item", name = "angels-ore3-crushed", amount = 2 },
      { type = "item", name = "angels-catalysator-brown", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "d[angels-ore-crushed-mix4-processing]",
  },
  --TIER 1.5
  {
    type = "recipe",
    name = "angels-ore8-crushed-processing",
    category = "angels-ore-sorting",
    subgroup = "angels-ore-sorting-t1",
    energy_required = 1,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore8-crushed", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
        icon_size = 32
      },
      { icon = "__angelsrefininggraphics__/graphics/icons/angels-ore8-crushed.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -10, 10 }
      },
    },
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore8-powder-processing",
    category = "angels-ore-sorting-2",
    subgroup = "angels-ore-sorting-t2",
    energy_required = 1,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore8-powder", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
        icon_size = 32
      },
      { icon = "__angelsrefininggraphics__/graphics/icons/angels-ore8-powder.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -10, 10 }
      },
    },
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore9-crushed-processing",
    category = "angels-ore-sorting",
    subgroup = "angels-ore-sorting-t1",
    energy_required = 1,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore9-crushed", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
        icon_size = 32
      },
      { icon = "__angelsrefininggraphics__/graphics/icons/angels-ore9-crushed.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -10, 10 }
      },
    },
    order = "h",
  },
  {
    type = "recipe",
    name = "angels-ore9-powder-processing",
    category = "angels-ore-sorting-2",
    subgroup = "angels-ore-sorting-t2",
    energy_required = 1,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore9-powder", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
        icon_size = 32
      },
      { icon = "__angelsrefininggraphics__/graphics/icons/angels-ore9-powder.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -10, 10 }
      },
    },
    order = "h",
  },
})
