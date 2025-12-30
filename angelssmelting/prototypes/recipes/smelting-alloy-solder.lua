data:extend({
  -- SOLDER SMELTING INTERMEDIATE
  -- SOLDER SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-solder-mixture",
    category = "crafting",
    subgroup = "angels-alloys",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-plate-tin", amount = 2 },
      { type = "item", name = "angels-plate-lead", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-solder-mixture", amount = 2 },
    },
    order = "a[solder]-a[angels-solder-mixture]-a",
  },
  -- SOLDER CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-solder",
    category = "angels-induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solder-mixture", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-solder-2",
    localised_name = { "fluid-name.angels-liquid-molten-solder" },
    category = "angels-induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-ingot-tin", amount = 12 },
      { type = "item", name = "angels-ingot-lead", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-solder-3",
    localised_name = { "fluid-name.angels-liquid-molten-solder" },
    category = "angels-induction-smelting-2",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-tin", amount = 12 },
      { type = "item", name = "angels-ingot-zinc", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-solder-4",
    localised_name = { "fluid-name.angels-liquid-molten-solder" },
    category = "angels-induction-smelting-3",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-tin", amount = 12 },
      { type = "item", name = "angels-ingot-copper", amount = 12 },
      { type = "item", name = "angels-ingot-silver", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-roll-solder",
    category = "angels-strand-casting",
    subgroup = "angels-solder-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-solder", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-solder"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-roll-solder]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-roll-solder-2",
    localised_name = { "item-name.angels-roll-solder" },
    category = "angels-strand-casting-2",
    subgroup = "angels-solder-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-solder", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-solder",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-solder"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-roll-solder]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-solder"),
  },
  -- SOLDER CASTING RESULT
  {
    type = "recipe",
    name = "angels-solder-mixture-smelting",
    localised_name = { "item-name.angels-solder" },
    category = "smelting",
    subgroup = "angels-solder-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-solder-mixture", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-solder", amount = 2 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-solder"),
      angelsmods.functions.get_object_icons("angels-solder-mixture"),
      { -10, -10 },
      0.4375
    ),
    order = "d[angels-solder]-a",
  },
  {
    type = "recipe",
    name = "angels-solder",
    localised_name = { "item-name.angels-solder" },
    category = "angels-casting",
    subgroup = "angels-solder-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-solder", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-solder", amount = 6 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-solder"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      { -10, -10 },
      0.4375
    ),
    order = "d[angels-solder]-b",
  },
  {
    type = "recipe",
    name = "angels-solder-2",
    localised_name = { "item-name.angels-solder" },
    category = "advanced-crafting",
    subgroup = "angels-solder-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-solder", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-solder", amount = 12 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-solder"),
      angelsmods.functions.get_object_icons("angels-roll-solder"),
      { -10, -10 },
      0.4375
    ),
    order = "d[angels-solder]-c",
  },
})
