data:extend({
  --TIER 4 MIX
  {
    type = "recipe",
    name = "angels-ore-pure-mix1-processing", --tungsten
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-5",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore2-pure", amount = 2 },
      { type = "item", name = "angels-ore3-pure", amount = 2 },
      { type = "item", name = "angels-ore1-pure", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "q",
  },
  {
    type = "recipe",
    name = "angels-ore-pure-mix2-processing", --platinum
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-5",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore3-pure", amount = 2 },
      { type = "item", name = "angels-ore5-pure", amount = 2 },
      { type = "item", name = "angels-ore6-pure", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "r",
  },
  {
    type = "recipe",
    name = "angels-ore-pure-mix3-processing",
    localised_name = { "item-name.angels-void" },
    category = "angels-ore-sorting-5",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ore2-pure", amount = 2 },
      { type = "item", name = "angels-ore4-pure", amount = 2 },
      { type = "item", name = "angels-ore5-pure", amount = 2 },
      { type = "item", name = "angels-catalysator-orange", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "s",
  },
})
