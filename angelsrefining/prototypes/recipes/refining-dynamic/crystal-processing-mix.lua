data:extend({
  --TIER 3 MIX
  {
    type = "recipe",
    name = "angels-ore-crystal-mix1-processing", --titanium
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crystal", amount = 2 },
      { type = "item", name = "angels-ore4-crystal", amount = 2 },
      { type = "item", name = "angels-ore5-crystal", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "k",
  },
  {
    type = "recipe",
    name = "angels-ore-crystal-mix2-processing", --gold
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crystal", amount = 2 },
      { type = "item", name = "angels-ore6-crystal", amount = 2 },
      { type = "item", name = "angels-ore5-crystal", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "l",
  },
  {
    type = "recipe",
    name = "angels-ore-crystal-mix3-processing", --cobalt
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore2-crystal", amount = 2 },
      { type = "item", name = "angels-ore4-crystal", amount = 2 },
      { type = "item", name = "angels-ore6-crystal", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "m",
  },
  {
    type = "recipe",
    name = "angels-ore-crystal-mix4-processing", --unused
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore2-crystal", amount = 2 },
      { type = "item", name = "angels-ore4-crystal", amount = 2 },
      { type = "item", name = "angels-ore5-crystal", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "n",
  },
  {
    type = "recipe",
    name = "angels-ore-crystal-mix5-processing", --uranium
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crystal", amount = 2 },
      { type = "item", name = "angels-ore3-crystal", amount = 2 },
      { type = "item", name = "angels-ore5-crystal", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "o",
  },
  --TIER 3.5
  {
    type = "recipe",
    name = "angels-ore8-crystal-processing",
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-t4",
    energy_required = 1.5,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore8-crystal", amount = 9 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
        icon_size = 32
      },
      { icon = "__angelsrefininggraphics__/graphics/icons/angels-ore8-crystal.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -10, 10 }
      },
    },
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore9-crystal-processing",
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-t4",
    energy_required = 1.5,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore9-crystal", amount = 9 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
        icon_size = 32
      },
      { icon = "__angelsrefininggraphics__/graphics/icons/angels-ore9-crystal.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -10, 10 }
      },
    },
    order = "h",
  },
  -- TIER 4 MIX
  {
    type = "recipe",
    name = "angels-ore-crystal-mix6-processing", --thorium
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-4",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore8-crystal", amount = 2 },
      { type = "item", name = "angels-ore9-crystal", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "p",
  },
})
