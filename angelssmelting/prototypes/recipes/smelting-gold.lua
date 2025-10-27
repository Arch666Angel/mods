data:extend({
  --GOLD
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-gold",
    category = "angels-ore-processing-3",
    subgroup = "angels-gold",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-gold-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-gold", amount = 2 },
    },
    main_product = "angels-processed-gold",
    order = "b[processed-gold]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
  },
  {
    type = "recipe",
    name = "angels-pellet-gold",
    category = "angels-pellet-pressing-3",
    subgroup = "angels-gold",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-gold", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-gold", amount = 4 },
    },
    main_product = "angels-pellet-gold",
    order = "c[pellet-gold]",
  },
  {
    type = "recipe",
    name = "angels-solid-sodium-gold-cyanide",
    category = "angels-chemical-smelting-4",
    subgroup = "angels-gold",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-gold", amount = 6 },
      { type = "item", name = "angels-solid-sodium-cyanide", amount = 4 },
      { type = "fluid", name = "angels-water-purified", amount = 40 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-gold-cyanide", amount = 18 },
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 4 },
    },
    main_product = "angels-solid-sodium-gold-cyanide",
    order = "d[solid-sodium-gold-cyanide]",
  },
  {
    type = "recipe",
    name = "angels-liquid-chlorauric-acid",
    category = "chemistry",
    subgroup = "angels-gold",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-gold", amount = 12 },
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 30 },
      { type = "fluid", name = "angels-liquid-hydrochloric-acid", amount = 30 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-chlorauric-acid", amount = 120 },
    },
    main_product = "angels-liquid-chlorauric-acid",
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 241, 214, 020 }, { 120, 203, 000 }, { 120, 203, 000 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
    order = "e[liquid-chlorauric-acid]",
  },
  {
    type = "recipe",
    name = "angels-cathode-gold",
    category = "angels-chemical-smelting-3",
    subgroup = "angels-gold",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-gold", amount = 2 },
      { type = "fluid", name = "angels-liquid-chlorauric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-cathode-gold", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-cathode-gold"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[cathode-gold]-a",
  },
  {
    type = "recipe",
    name = "angels-cathode-gold-2",
    localised_name = { "item-name.angels-cathode-gold" },
    category = "angels-chemical-smelting-4",
    subgroup = "angels-gold",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-gold-cyanide", amount = 12 },
    },
    results = {
      { type = "item", name = "angels-cathode-gold", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-cathode-gold"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[cathode-gold]-b",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-gold",
    category = "angels-blast-smelting-3",
    subgroup = "angels-gold",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-gold-ore", amount = 24 },
      { type = "fluid", name = "angels-gas-chlorine", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-gold", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-gold"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "g[ingot-gold]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-gold-2",
    localised_name = { "item-name.angels-ingot-gold" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-gold",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cathode-gold", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-gold", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-gold"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "g[ingot-gold]-b",
  },
  {
    type = "recipe",
    name = "angels-powder-gold",
    category = "advanced-crafting",
    subgroup = "angels-gold",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-gold", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-gold", amount = 1 },
    },
    order = "h[powder-gold]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-gold",
    category = "angels-induction-smelting-3",
    subgroup = "angels-gold-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-gold", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-gold", amount = 120 },
    },
    main_product = "angels-liquid-molten-gold",
    order = "i[liquid-molten-gold]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
  },
  {
    type = "recipe",
    name = "angels-roll-gold",
    category = "angels-strand-casting-3",
    subgroup = "angels-gold-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-gold", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-gold", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-gold"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-gold]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
  },
  {
    type = "recipe",
    name = "angels-roll-gold-2",
    localised_name = { "item-name.angels-roll-gold" },
    category = "angels-strand-casting-4",
    subgroup = "angels-gold-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-gold", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-gold", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-gold",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-gold"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-gold]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-gold",
    category = "angels-strand-casting-3",
    subgroup = "angels-gold-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-gold", amount = 40 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 40 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-gold", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-gold"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-wire-coil-gold]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-gold-2",
    localised_name = { "item-name.angels-wire-coil-gold" },
    category = "angels-strand-casting-4",
    subgroup = "angels-gold-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-gold", amount = 70 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 70 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-gold", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-wire-coil-gold",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-gold"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-wire-coil-gold]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gold"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-gold",
    localised_name = { "item-name.angels-plate-gold" },
    category = "angels-casting-3",
    subgroup = "angels-gold-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-gold", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-gold", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-gold"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-gold"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-gold]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-gold-2",
    localised_name = { "item-name.angels-plate-gold" },
    category = "advanced-crafting",
    subgroup = "angels-gold-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-gold", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-gold", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-gold"),
      angelsmods.functions.get_object_icons("angels-roll-gold"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-gold]-b",
  },
  {
    type = "recipe",
    name = "angels-wire-gold",
    localised_name = { "item-name.angels-wire-gold" },
    subgroup = "angels-gold-casting",
    enabled = false,
    auto_recycle = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-gold", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-gold", amount = 5 },
    },
    allow_decomposition = false,
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-gold"),
      angelsmods.functions.get_object_icons("angels-plate-gold"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-wire-gold]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-gold-2",
    localised_name = { "item-name.angels-wire-gold" },
    category = "advanced-crafting",
    subgroup = "angels-gold-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-gold", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-gold", amount = 16 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-gold"),
      angelsmods.functions.get_object_icons("angels-wire-coil-gold"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-wire-gold]-b",
  },
})
