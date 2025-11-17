data:extend({
  --LEAD
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-lead",
    category = "angels-ore-processing",
    subgroup = "angels-lead",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-lead-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-lead", amount = 2 },
    },
    order = "b[processed-lead]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-lead"),
  },
  {
    type = "recipe",
    name = "angels-pellet-lead",
    category = "angels-pellet-pressing",
    subgroup = "angels-lead",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-lead", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-lead", amount = 4 },
    },
    order = "c[pellet-lead]",
  },
  {
    type = "recipe",
    name = "angels-solid-lead-oxide",
    localised_name = { "item-name.angels-solid-lead-oxide" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-lead", amount = 8 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 120 },
    },
    results = {
      { type = "item", name = "angels-solid-lead-oxide", amount = 24 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 120 },
    },
    main_product = "angels-solid-lead-oxide",
    order = "d[solid-lead-oxide]",
  },
  {
    type = "recipe",
    name = "angels-anode-lead",
    category = "angels-blast-smelting-3",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-lead", amount = 8 },
      { type = "item", name = "angels-solid-limestone", amount = 2 },
      { type = "item", name = "angels-solid-coke", amount = 2 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-anode-lead", amount = 24 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 60 },
    },
    main_product = "angels-anode-lead",
    order = "e[anode-lead]",
  },
  {
    type = "recipe",
    name = "angels-liquid-hexafluorosilicic-acid",
    category = "angels-liquifying",
    subgroup = "angels-lead",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-quartz", amount = 3 },
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 30 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-hexafluorosilicic-acid", amount = 60 },
    },
    main_product = "angels-liquid-hexafluorosilicic-acid",
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelssmeltinggraphics__/graphics/icons/molecule-hexafluorosilicic-acid.png", 72 },
    }, "SiFF"),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-liquid-molten-lead", "angels-liquid-molten-silicon" }),
    order = "f[liquid-hexafluorosilicic-acid]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-lead",
    category = "angels-blast-smelting",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-lead-ore", amount = 24 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-lead", amount = 24 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 60 },
    },
    main_product = "angels-ingot-lead",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-lead"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "g[ingot-lead]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-lead-2",
    localised_name = { "item-name.angels-ingot-lead" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-lead-oxide", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ingot-lead", amount = 24 },
    },
    main_product = "angels-ingot-lead",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-lead"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "g[ingot-lead]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-lead-3",
    localised_name = { "item-name.angels-ingot-lead" },
    category = "angels-chemical-smelting-2",
    subgroup = "angels-lead",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-anode-lead", amount = 12 },
      { type = "fluid", name = "angels-liquid-hexafluorosilicic-acid", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-ingot-lead", amount = 12 },
      { type = "item", name = "angels-slag", amount = 1 },
    },
    main_product = "angels-ingot-lead",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-lead"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "g[ingot-lead]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-lead",
    category = "advanced-crafting",
    subgroup = "angels-lead",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-lead", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-lead", amount = 1 },
    },
    order = "h[powder-lead]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-lead",
    category = "angels-induction-smelting",
    subgroup = "angels-lead-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-lead", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-lead", amount = 120 },
    },
    order = "i[liquid-molten-lead]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-lead"),
  },
  {
    type = "recipe",
    name = "angels-roll-lead",
    category = "angels-strand-casting",
    subgroup = "angels-lead-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-lead", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-lead", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-lead"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-lead]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-lead"),
  },
  {
    type = "recipe",
    name = "angels-roll-lead-2",
    localised_name = { "item-name.angels-roll-lead" },
    category = "angels-strand-casting-2",
    subgroup = "angels-lead-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-lead", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-lead", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-lead",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-lead"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-lead]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-lead"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-lead",
    localised_name = { "item-name.angels-plate-lead" },
    category = "angels-casting",
    subgroup = "angels-lead-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-lead", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-lead", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-lead"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-lead"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-lead]-c", -- k[angels-plate-lead]-a reserved for crushed rubyte smelting (see lead overrides)
  }, -- k[angels-plate-lead]-b reserved for crushed rubyte smelting (see lead overrides)
  {
    type = "recipe",
    name = "angels-plate-lead-2",
    localised_name = { "item-name.angels-plate-lead" },
    category = "advanced-crafting",
    subgroup = "angels-lead-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-lead", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-lead", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-lead"),
      angelsmods.functions.get_object_icons("angels-roll-lead"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-lead]-d",
  },
})
