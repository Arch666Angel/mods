data:extend({
  --TUNGSTEN
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-tungsten",
    category = "angels-ore-processing-4",
    subgroup = "angels-tungsten",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-tungsten-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-tungsten", amount = 2 },
    },
    order = "b[processed-tungsten]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-tungsten"),
  },
  {
    type = "recipe",
    name = "angels-pellet-tungsten",
    category = "angels-pellet-pressing-4",
    subgroup = "angels-tungsten",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = { { type = "item", name = "angels-processed-tungsten", amount = 3 } },
    results = {
      { type = "item", name = "angels-pellet-tungsten", amount = 4 },
    },
    order = "c[pellet-tungsten]",
  },
  {
    type = "recipe",
    name = "angels-solid-tungsten-oxide",
    localised_name = { "item-name.angels-solid-tungsten-oxide" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-tungsten-ore", amount = 12 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-solid-tungsten-oxide", amount = 12 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-tungsten-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-tungsten-oxide]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-ammonium-paratungstate-2",
    localised_name = { "item-name.angels-solid-ammonium-paratungstate" },
    category = "angels-chemical-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-tungstic-acid", amount = 120 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-ammonium-paratungstate", amount = 24 },
      { type = "fluid", name = "angels-water-purified", amount = 60 },
    },
    main_product = "angels-solid-ammonium-paratungstate",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-ammonium-paratungstate"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-ammonium-paratungstate]-b",
  },
  {
    type = "recipe",
    name = "angels-liquid-tungstic-acid",
    category = "angels-liquifying",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-tungsten", amount = 4 },
      { type = "fluid", name = "angels-gas-hydrogen-chloride", amount = 30 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-tungstic-acid", amount = 60 },
      { type = "item", name = "angels-solid-calcium-chloride", amount = 2 },
    },
    main_product = "angels-liquid-tungstic-acid",
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 135, 090, 023 }, { 170, 170, 180 }, { 170, 170, 180 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-tungstic-acid"),
    order = "f[liquid-tungstic-acid]",
  },
  {
    type = "recipe",
    name = "angels-gas-tungsten-hexafluoride",
    category = "angels-liquifying",
    subgroup = "angels-tungsten",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-tungsten-oxide", amount = 12 },
      { type = "fluid", name = "angels-gas-hydrogen-fluoride", amount = 30 },
    },
    results = {
      { type = "fluid", name = "angels-gas-tungsten-hexafluoride", amount = 60 },
    },
    main_product = "angels-gas-tungsten-hexafluoride",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      { { "__angelssmeltinggraphics__/graphics/icons/molecule-tungsten-hexafluoride.png", 72 } },
      "WFF"
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-gas-tungsten-hexafluoride"),
    order = "g[gas-tungsten-hexafluoride]",
  },
  {
    type = "recipe",
    name = "angels-solid-ammonium-paratungstate",
    category = "angels-chemical-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-tungsten", amount = 8 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-ammonium-paratungstate", amount = 24 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-ammonium-paratungstate"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-ammonium-paratungstate]-a",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-powder-tungsten",
    localised_name = { "item-name.angels-powder-tungsten" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-tungsten-hexafluoride", amount = 120 },
    },
    results = {
      { type = "item", name = "angels-powder-tungsten", amount = 24 },
      { type = "item", name = "angels-fluorite-ore", amount = 3 },
    },
    main_product = "angels-powder-tungsten",
    order = "h[powder-tungsten]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-tungsten-oxide-2",
    localised_name = { "item-name.angels-solid-tungsten-oxide" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-ammonium-paratungstate", amount = 12 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-solid-tungsten-oxide", amount = 12 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-tungsten-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-tungsten-oxide]-b",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-casting-powder-tungsten",
    category = "angels-powder-mixing-3",
    subgroup = "angels-tungsten-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-powder-tungsten", amount = 12 },
      { type = "item", name = "angels-powder-cobalt", amount = 12 },
    },
    results = {
      { type = "item", name = "angels-casting-powder-tungsten", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-casting-powder-tungsten"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[casting-powder-tungsten]-a",
  },
  {
    type = "recipe",
    name = "angels-casting-powder-tungsten-2",
    localised_name = { "item-name.angels-casting-powder-tungsten" },
    category = "angels-powder-mixing-4",
    subgroup = "angels-tungsten-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-powder-tungsten", amount = 12 },
      { type = "item", name = "angels-powder-nickel", amount = 12 },
    },
    results = {
      { type = "item", name = "angels-casting-powder-tungsten", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-casting-powder-tungsten"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[casting-powder-tungsten]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-tungsten",
    localised_name = { "item-name.angels-plate-tungsten" },
    category = "angels-sintering-4",
    subgroup = "angels-tungsten-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-casting-powder-tungsten", amount = 12 },
    },
    results = {
      { type = "item", name = "angels-plate-tungsten", amount = 12 },
    },
    order = "j[angels-plate-tungsten]",
  },
})
