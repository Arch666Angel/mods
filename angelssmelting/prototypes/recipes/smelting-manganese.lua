data:extend({
  --MANGANESE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-manganese",
    category = "angels-ore-processing",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-manganese-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-manganese", amount = 2 },
    },
    order = "b[processed-manganese]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-manganese"),
  },
  {
    type = "recipe",
    name = "angels-pellet-manganese",
    category = "angels-pellet-pressing",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-manganese", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-manganese", amount = 4 },
    },
    order = "c[pellet-manganese]",
  },
  {
    type = "recipe",
    name = "angels-solid-manganese-oxide",
    category = "angels-chemical-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-manganese", amount = 4 },
      { type = "fluid", name = "angels-gas-synthesis", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-manganese-oxide", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-manganese-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-manganese-oxide]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-manganese-oxide-2",
    localised_name = { "item-name.angels-solid-manganese-oxide" },
    category = "angels-chemical-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-manganese", amount = 8 },
      { type = "fluid", name = "angels-gas-natural-1", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-manganese-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-manganese-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-manganese-oxide]-b",
  },
  {
    type = "recipe",
    name = "angels-cathode-manganese",
    category = "angels-chemical-smelting",
    subgroup = "angels-manganese",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-manganese", amount = 4 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-cathode-manganese", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-cathode-manganese"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[cathode-manganese]-a",
  },
  {
    type = "recipe",
    name = "angels-cathode-manganese-2",
    localised_name = { "item-name.angels-cathode-manganese" },
    category = "angels-chemical-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-manganese-oxide", amount = 12 },
      { type = "item", name = "angels-ingot-iron", amount = 4, ignored_by_stats = 4 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-cathode-manganese", amount = 12 },
      { type = "item", name = "angels-solid-iron-hydroxide", amount = 4 },
    },
    main_product = "angels-cathode-manganese",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-cathode-manganese"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[cathode-manganese]-b",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-manganese",
    category = "angels-blast-smelting",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-manganese-ore", amount = 24 },
      { type = "item", name = "angels-solid-coke", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-ingot-manganese", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-manganese"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-manganese]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-manganese-2",
    localised_name = { "item-name.angels-ingot-manganese" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cathode-manganese", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-manganese", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-manganese"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-manganese]-b",
  },
  {
    type = "recipe",
    name = "angels-powder-manganese",
    category = "advanced-crafting",
    subgroup = "angels-manganese",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-manganese", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-manganese", amount = 1 },
    },
    order = "g[powder-manganese]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-manganese",
    category = "angels-induction-smelting",
    subgroup = "angels-manganese-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-manganese", amount = 120 },
    },
    order = "h[liquid-molten-manganese]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-manganese"),
  },
  {
    type = "recipe",
    name = "angels-roll-manganese",
    category = "angels-strand-casting",
    subgroup = "angels-manganese-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-manganese", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-manganese", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-manganese"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-manganese]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-manganese"),
  },
  {
    type = "recipe",
    name = "angels-roll-manganese-2",
    localised_name = { "item-name.angels-roll-manganese" },
    category = "angels-strand-casting-2",
    subgroup = "angels-manganese-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-manganese", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-manganese", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-manganese",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-manganese"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-manganese]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-manganese"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-manganese",
    localised_name = { "item-name.angels-plate-manganese" },
    category = "angels-casting",
    subgroup = "angels-manganese-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-manganese", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-manganese", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-manganese"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-manganese"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-manganese]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-manganese-2",
    localised_name = { "item-name.angels-plate-manganese" },
    category = "advanced-crafting",
    subgroup = "angels-manganese-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-manganese", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-manganese", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-manganese"),
      angelsmods.functions.get_object_icons("angels-roll-manganese"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-manganese]-b",
  },
})
