local AF = angelsmods.functions

data:extend({
  --PLATINUM
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-platinum-ore-processing",
    localised_name = { "item-name.angels-processed-platinum" },
    category = "angels-ore-processing-4",
    subgroup = "angels-platinum",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-platinum-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-platinum", amount = 2 },
    },
    order = "b[processed-platinum]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-platinum-processed-processing",
    localised_name = { "item-name.angels-pellet-platinum" },
    category = "angels-pellet-pressing-4",
    subgroup = "angels-platinum",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-platinum", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-platinum", amount = 4 },
    },
    order = "c[pellet-platinum]",
  },
  {
    type = "recipe",
    name = "angels-pellet-platinum-smelting",
    localised_name = { "fluid-name.angels-liquid-hexachloroplatinic-acid" },
    category = "chemistry",
    subgroup = "angels-platinum",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-platinum", amount = 4 },
      { type = "fluid", name = "angels-liquid-hydrochloric-acid", amount = 30 },
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 30 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-hexachloroplatinic-acid", amount = 60 },
    },
    main_product = "angels-liquid-hexachloroplatinic-acid",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 230, 191, 163 }, { 092, 218, 079 }, { 086, 112, 192 } }),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
    order = "d[liquid-hexachloroplatinic-acid]",
  },
  {
    type = "recipe",
    name = "angels-liquid-hexachloroplatinic-acid-smelting",
    localised_name = { "item-name.angels-solid-ammonium-chloroplatinate" },
    category = "angels-chemical-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-hexachloroplatinic-acid", amount = 120 },
      { type = "fluid", name = "angels-gas-ammonium-chloride", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-ammonium-chloroplatinate", amount = 24 },
    },
    order = "e[solid-ammonium-chloroplatinate]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-platinum-ore-smelting",
    localised_name = { "item-name.angels-ingot-platinum" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-platinum-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-platinum", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-platinum"), 1, angelsmods.smelting.number_tint),
    order = "f[ingot-platinum]-a",
  },
  {
    type = "recipe",
    name = "angels-processed-platinum-smelting",
    localised_name = { "item-name.angels-ingot-platinum" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-platinum", amount = 8 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-platinum", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-platinum"), 2, angelsmods.smelting.number_tint),
    order = "f[ingot-platinum]-b",
  },
  {
    type = "recipe",
    name = "angels-solid-ammonium-chloroplatinate-smelting",
    localised_name = { "item-name.angels-ingot-platinum" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-ammonium-chloroplatinate", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-platinum", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-platinum"), 3, angelsmods.smelting.number_tint),
    order = "f[ingot-platinum]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-platinum",
    category = "advanced-crafting",
    subgroup = "angels-platinum",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-platinum", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-platinum", amount = 1 },
    },
    order = "g[powder-platinum]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-platinum",
    category = "angels-induction-smelting-4",
    subgroup = "angels-platinum-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-platinum", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-platinum", amount = 120 },
    },
    order = "h[liquid-molten-platinum]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-roll-platinum",
    category = "angels-strand-casting-4",
    subgroup = "angels-platinum-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-platinum", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-platinum", amount = 2 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-platinum"), 1, angelsmods.smelting.number_tint),
    order = "i[angels-roll-platinum]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-roll-platinum-2",
    localised_name = { "item-name.angels-roll-platinum" },
    category = "angels-strand-casting-4",
    subgroup = "angels-platinum-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-platinum", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-platinum", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-platinum",
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-platinum"), 2, angelsmods.smelting.number_tint),
    order = "i[angels-roll-platinum]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-platinum",
    category = "angels-strand-casting-4",
    subgroup = "angels-platinum-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-platinum", amount = 40 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 40 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-platinum", amount = 4 },
    },
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-platinum"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-wire-coil-platinum]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-platinum-2",
    localised_name = { "item-name.angels-wire-coil-platinum" },
    category = "angels-strand-casting-4",
    subgroup = "angels-platinum-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-platinum", amount = 70 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 70 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-platinum", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-wire-coil-platinum",
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-platinum"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-wire-coil-platinum]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-platinum"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-platinum",
    localised_name = { "item-name.angels-plate-platinum" },
    category = "angels-casting-4",
    subgroup = "angels-platinum-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-platinum", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-platinum", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-platinum"),
      AF.get_object_icons("angels-liquid-molten-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-platinum]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-platinum-2",
    localised_name = { "item-name.angels-plate-platinum" },
    category = "advanced-crafting",
    subgroup = "angels-platinum-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-platinum", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-platinum", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-platinum"),
      AF.get_object_icons("angels-roll-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-platinum]-b",
  },
  {
    type = "recipe",
    name = "angels-wire-platinum",
    subgroup = "angels-platinum-casting",
    order = "m",
    enabled = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-platinum", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-platinum", amount = 5 },
    },
    allow_decomposition = false,
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-platinum"),
      AF.get_object_icons("angels-plate-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-wire-platinum]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-platinum-2",
    localised_name = { "item-name.angels-wire-platinum" },
    category = "advanced-crafting",
    subgroup = "angels-platinum-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-platinum", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-platinum", amount = 16 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-platinum"),
      AF.get_object_icons("angels-wire-coil-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-wire-platinum]-b",
  },
})
