data:extend({
  --COBALT
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-cobalt",
    category = "angels-ore-processing-3",
    subgroup = "angels-cobalt",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cobalt-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-cobalt", amount = 2 },
    },
    order = "b[processed-cobalt]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt"),
  },
  {
    type = "recipe",
    name = "angels-pellet-cobalt",
    category = "angels-pellet-pressing-3",
    subgroup = "angels-cobalt",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-cobalt", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-cobalt", amount = 4 },
    },
    order = "c[pellet-cobalt]",
  },
  {
    type = "recipe",
    name = "angels-solid-cobalt-hydroxide",
    category = "angels-liquifying",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-cobalt", amount = 2 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-cobalt-hydroxide", amount = 6 },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt"),
    order = "d[solid-cobalt-hydroxide]",
  },
  {
    type = "recipe",
    name = "angels-solid-cobalt-oxide",
    localised_name = { "item-name.angels-solid-cobalt-oxide" },
    category = "angels-chemical-smelting-2",
    subgroup = "angels-cobalt",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cobalt-ore", amount = 8 },
      { type = "item", name = "angels-solid-limestone", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-solid-cobalt-oxide", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-cobalt-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-cobalt-oxide]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-cobalt-oxide-2",
    localised_name = { "item-name.angels-solid-cobalt-oxide" },
    category = "angels-chemical-smelting-3",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-cobalt", amount = 8 },
      { type = "item", name = "angels-solid-limestone", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-solid-cobalt-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-cobalt-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-cobalt-oxide]-b",
  },
  {
    type = "recipe",
    name = "angels-solid-cobalt-oxide-3",
    localised_name = { "item-name.angels-solid-cobalt-oxide" },
    category = "angels-chemical-smelting-4",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-cobalt-hydroxide", amount = 24 },
      { type = "item", name = "angels-solid-calcium-chloride", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-solid-cobalt-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-cobalt-oxide"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-cobalt-oxide]-c",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-cobalt",
    category = "angels-blast-smelting-3",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cobalt-ore", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-ingot-cobalt", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-cobalt"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-cobalt]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-cobalt-2",
    localised_name = { "item-name.angels-ingot-cobalt" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-cobalt-oxide", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-ingot-cobalt", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-cobalt"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-cobalt]-b",
  },
  {
    type = "recipe",
    name = "angels-powder-cobalt",
    category = "angels-powderizing-3",
    subgroup = "angels-cobalt",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-cobalt", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-cobalt", amount = 1 },
    },
    order = "g[powder-cobalt]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-cobalt",
    category = "angels-induction-smelting-3",
    subgroup = "angels-cobalt-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-cobalt", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-cobalt", amount = 120 },
    },
    order = "h[liquid-molten-cobalt]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt"),
  },
  {
    type = "recipe",
    name = "angels-roll-cobalt",
    category = "angels-strand-casting-3",
    subgroup = "angels-cobalt-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-cobalt", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-cobalt", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-cobalt"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-cobalt]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt"),
  },
  {
    type = "recipe",
    name = "angels-roll-cobalt-2",
    localised_name = { "item-name.angels-roll-cobalt" },
    category = "angels-strand-casting-4",
    subgroup = "angels-cobalt-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-cobalt", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-cobalt", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-cobalt",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-cobalt"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-cobalt]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-cobalt",
    localised_name = { "item-name.angels-plate-cobalt" },
    category = "angels-casting-3",
    subgroup = "angels-cobalt-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-cobalt", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-cobalt", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-cobalt"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-cobalt"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-cobalt]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-cobalt-2",
    localised_name = { "item-name.angels-plate-cobalt" },
    category = "advanced-crafting",
    subgroup = "angels-cobalt-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-cobalt", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-cobalt", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-cobalt"),
      angelsmods.functions.get_object_icons("angels-roll-cobalt"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-cobalt]-b",
  },
})
