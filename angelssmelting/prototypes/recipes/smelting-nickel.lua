data:extend({
  --NICKEL
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-nickel",
    category = "angels-ore-processing-2",
    subgroup = "angels-nickel",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-nickel-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-nickel", amount = 2 },
    },
    order = "b[processed-nickel]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-nickel"),
  },
  {
    type = "recipe",
    name = "angels-pellet-nickel",
    category = "angels-pellet-pressing-2",
    subgroup = "angels-nickel",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-nickel", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-nickel", amount = 4 },
    },
    order = "c[pellet-nickel]",
  },
  {
    type = "recipe",
    name = "angels-cathode-nickel",
    category = "angels-chemical-smelting-2",
    subgroup = "angels-nickel",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-nickel", amount = 4 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-cathode-nickel", amount = 12 },
    },
    order = "d[cathode-nickel]",
  },
  {
    type = "recipe",
    name = "angels-solid-nickel-carbonyl",
    category = "angels-blast-smelting-4",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-nickel", amount = 8 },
      { type = "item", name = "sulfur", amount = 1 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-nickel-carbonyl", amount = 24 },
    },
    order = "e[solid-nickel-carbonyl]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-nickel",
    category = "angels-blast-smelting-2",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-nickel-ore", amount = 24 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-nickel", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-nickel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-nickel]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-nickel-2",
    localised_name = { "item-name.angels-ingot-nickel" },
    category = "angels-blast-smelting-3",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cathode-nickel", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-nickel", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-nickel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-nickel]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-nickel-3",
    localised_name = { "item-name.angels-ingot-nickel" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-nickel-carbonyl", amount = 18 },
      { type = "item", name = "angels-ingot-nickel", amount = 6, ignored_by_stats = 6 },
    },
    results = {
      { type = "item", name = "angels-ingot-nickel", amount = 24, ignored_by_productivity = 6, ignored_by_stats = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-nickel"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-nickel]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-nickel",
    category = "advanced-crafting",
    subgroup = "angels-nickel",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-nickel", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-nickel", amount = 1 },
    },
    order = "g[powder-nickel]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-nickel",
    category = "angels-induction-smelting-2",
    subgroup = "angels-nickel-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-nickel", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-nickel", amount = 120 },
    },
    order = "h[liquid-molten-nickel]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-nickel"),
  },
  {
    type = "recipe",
    name = "angels-roll-nickel",
    category = "angels-strand-casting-2",
    subgroup = "angels-nickel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-nickel", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-nickel", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-nickel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-nickel]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-nickel"),
  },
  {
    type = "recipe",
    name = "angels-roll-nickel-2",
    localised_name = { "item-name.angels-roll-nickel" },
    category = "angels-strand-casting-3",
    subgroup = "angels-nickel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-nickel", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-nickel", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-nickel",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-nickel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-nickel]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-nickel"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-nickel",
    localised_name = { "item-name.angels-plate-nickel" },
    category = "angels-casting-2",
    subgroup = "angels-nickel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-nickel", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-nickel", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-nickel"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-nickel"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-nickel]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-nickel-2",
    localised_name = { "item-name.angels-plate-nickel" },
    category = "advanced-crafting",
    subgroup = "angels-nickel-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-nickel", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-nickel", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-nickel"),
      angelsmods.functions.get_object_icons("angels-roll-nickel"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-nickel]-b",
  },
})
