data:extend({
  --TIN
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-tin",
    category = "angels-ore-processing",
    subgroup = "angels-tin",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-tin-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-tin", amount = 2 },
    },
    order = "b[processed-tin]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-pellet-tin",
    category = "angels-pellet-pressing",
    subgroup = "angels-tin",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-tin", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-tin", amount = 4 },
    },
    order = "c[pellet-tin]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-tin",
    category = "angels-blast-smelting",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-tin-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-tin", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-tin"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[ingot-tin]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-tin-2",
    localised_name = { "item-name.angels-ingot-tin" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-tin", amount = 8 },
      { type = "item", name = "angels-solid-coke", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ingot-tin", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-tin"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[ingot-tin]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-tin-3",
    localised_name = { "item-name.angels-ingot-tin" },
    category = "angels-blast-smelting-3",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-tin", amount = 8 },
      { type = "item", name = "angels-solid-carbon", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ingot-tin", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-tin"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "d[ingot-tin]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-tin",
    category = "angels-powderizing-1",
    subgroup = "angels-tin",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-tin", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-tin", amount = 1 },
    },
    order = "e[powder-tin]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-tin",
    category = "angels-induction-smelting",
    subgroup = "angels-tin-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-tin", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 120 },
    },
    main_product = "angels-liquid-molten-tin",
    order = "f[liquid-molten-tin]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-roll-tin",
    category = "angels-strand-casting",
    subgroup = "angels-tin-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-tin", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-tin"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "g[angels-roll-tin]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-roll-tin-2",
    localised_name = { "item-name.angels-roll-tin" },
    category = "angels-strand-casting-2",
    subgroup = "angels-tin-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-tin", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-tin",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-tin"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "g[angels-roll-tin]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin",
    category = "angels-strand-casting",
    subgroup = "angels-tin-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 40 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 40 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-tin", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-tin"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-wire-coil-tin]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin-2",
    localised_name = { "item-name.angels-wire-coil-tin" },
    category = "angels-strand-casting-2",
    subgroup = "angels-tin-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 70 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 70 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-tin", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-wire-coil-tin",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-tin"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-wire-coil-tin]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tin"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-tin",
    localised_name = { "item-name.angels-plate-tin" },
    category = "angels-casting",
    subgroup = "angels-tin-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-tin", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-tin"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "i[angels-plate-tin]-c", -- i[angels-plate-tin]-a reserved for crushed bobmonium smelting (see tin overrides)
  }, -- i[angels-plate-tin]-b reserved for tin ore smelting (see tin overrides)
  {
    type = "recipe",
    name = "angels-plate-tin-2",
    localised_name = { "item-name.angels-plate-tin" },
    category = "advanced-crafting",
    subgroup = "angels-tin-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-tin", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-tin", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-tin"),
      angelsmods.functions.get_object_icons("angels-roll-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "i[angels-plate-tin]-d",
  },
  {
    type = "recipe",
    name = "angels-wire-tin",
    localised_name = { "item-name.angels-wire-tin" },
    subgroup = "angels-tin-casting",
    order = "m",
    enabled = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-tin", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-tin", amount = 5 },
    },
    allow_decomposition = false,
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-tin"),
      angelsmods.functions.get_object_icons("angels-plate-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-wire-tin]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-tin-2",
    localised_name = { "item-name.angels-wire-tin" },
    category = "advanced-crafting",
    subgroup = "angels-tin-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-tin", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-tin", amount = 16 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-tin"),
      angelsmods.functions.get_object_icons("angels-wire-coil-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-wire-tin]-b",
  },
})
