local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --TIER 4 MIX
  {
    type = "recipe",
    name = "angelsore-pure-mix1-processing", --tungsten
    category = "ore-sorting-4",
    subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore2-pure", amount = 2 },
        { type = "item", name = "angels-ore3-pure", amount = 2 },
        { type = "item", name = "angels-ore1-pure", amount = 2 },
        { type = "item", name = "catalysator-orange", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore2-pure", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore3-pure", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore1-pure", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-orange", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "q",
  },
  {
    type = "recipe",
    name = "angelsore-pure-mix2-processing", --platinum
    category = "ore-sorting-4",
    subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore3-pure", amount = 2 },
        { type = "item", name = "angels-ore5-pure", amount = 2 },
        { type = "item", name = "angels-ore6-pure", amount = 2 },
        { type = "item", name = "catalysator-orange", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore3-pure", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore5-pure", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore6-pure", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-orange", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "r",
  },
  {
    type = "recipe",
    name = "angelsore-pure-mix3-processing",
    category = "ore-sorting-4",
    subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
    enabled = false,
    allow_decomposition = false,
    normal = {
      ingredients = {
        { type = "item", name = "angels-ore2-pure", amount = 2 },
        { type = "item", name = "angels-ore4-pure", amount = 2 },
        { type = "item", name = "angels-ore5-pure", amount = 2 },
        { type = "item", name = "catalysator-orange", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      ingredients = {
        { type = "item", name = "angels-ore2-pure", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore4-pure", amount = 3 * rawmulti },
        { type = "item", name = "angels-ore5-pure", amount = 3 * rawmulti },
        { type = "item", name = "catalysator-orange", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    icon_size = 32,
    order = "s",
  },
})
