data:extend({
  --STONE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-solid-lime",
    localised_name = { "item-name.angels-solid-lime" },
    category = "angels-blast-smelting",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-limestone", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-solid-lime", amount = 4 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 50 },
    },
    main_product = "angels-solid-lime",
    order = "b[solid-lime]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-solid-cement",
    category = "angels-powder-mixing",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-lime", amount = 1 },
      { type = "item", name = "angels-quartz", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-cement", amount = 1 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-cement"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "c[solid-cement]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-cement-2",
    localised_name = { "item-name.angels-solid-cement" },
    category = "angels-powder-mixing-2",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-quartz", amount = 1 },
      { type = "item", name = "angels-solid-lime", amount = 1 },
      { type = "item", name = "angels-solid-aluminium-oxide", amount = 1 },
      { type = "item", name = "iron-ore", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-cement", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-cement"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "c[solid-cement]-b",
  },
  {
    type = "recipe",
    name = "angels-clay-brick-raw",
    localised_name = { "item-name.angels-clay-brick-raw" },
    category = "crafting",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-clay", amount = 4 },
      { type = "item", name = "angels-solid-sand", amount = 2 },
      { type = "item", name = "angels-solid-lime", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-clay-brick-raw", amount = 4 },
    },
    order = "d[clay-brick-raw]",
  },
  {
    type = "recipe",
    name = "angels-clay-brick",
    localised_name = { "item-name.angels-clay-brick" },
    category = "smelting",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-clay-brick-raw", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-clay-brick", amount = 4 },
    },
    order = "e[clay-brick]",
  },
  -- CASTING INTERMEDIATE
  -- order f reserved for stone brick (see override)
  {
    type = "recipe",
    name = "angels-liquid-concrete",
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-cement", amount = 8 },
      { type = "fluid", name = "water", amount = 100 },
      { type = "item", name = "angels-slag", amount = 4 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-concrete", amount = 100 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-concrete"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "g[liquid-concrete]-a",
  },
  {
    type = "recipe",
    name = "angels-liquid-concrete-2",
    localised_name = { "fluid-name.angels-liquid-concrete" },
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-cement", amount = 6 },
      { type = "fluid", name = "water", amount = 100 },
      { type = "item", name = "angels-solid-sand", amount = 3 },
      { type = "item", name = "stone", amount = 3 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-concrete", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-concrete"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "g[liquid-concrete]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-concrete",
    localised_name = { "item-name.concrete" },
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-concrete", amount = 40 },
    },
    results = {
      { type = "item", name = "concrete", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("concrete"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[concrete]-b", -- h[concrete]-a is reserved for base game recipe (see override)
  },
  {
    type = "recipe",
    name = "angels-concrete-brick",
    localised_name = { "item-name.angels-concrete-brick" },
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-concrete", amount = 40 },
      { type = "item", name = "stone-brick", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-concrete-brick", amount = 4 },
    },
    order = "i[concrete-brick]",
  },
  {
    type = "recipe",
    name = "angels-reinforced-concrete-brick",
    localised_name = { "item-name.angels-reinforced-concrete-brick" },
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-concrete", amount = 40 },
      { type = "item", name = "stone-brick", amount = 4 },
      { type = "item", name = "angels-plate-steel", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-reinforced-concrete-brick", amount = 4 },
    },
    order = "j[reinforced-concrete-brick]",
  },
})
