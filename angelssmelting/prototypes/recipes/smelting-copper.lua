data:extend({
  -- COPPER
  -- ORE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-copper",
    category = "angels-ore-processing",
    subgroup = "angels-copper",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "copper-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-copper", amount = 2 },
    },
    order = "b[processed-copper]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-pellet-copper",
    category = "angels-pellet-pressing",
    subgroup = "angels-copper",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-copper", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-copper", amount = 4 },
    },
    order = "c[pellet-copper]",
  },
  {
    type = "recipe",
    name = "angels-anode-copper",
    category = "angels-blast-smelting-3",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-copper", amount = 8 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
      --{type="item", name="angels-solid-sodium-carbonate", amount=6},
    },
    results = {
      { type = "item", name = "angels-anode-copper", amount = 24 },
    },
    order = "d[anode-copper]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-copper",
    category = "angels-blast-smelting",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "copper-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-copper", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-copper"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-copper]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-copper-2",
    localised_name = { "item-name.angels-ingot-copper" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-copper", amount = 8 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-copper", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-copper"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-copper]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-copper-3",
    localised_name = { "item-name.angels-ingot-copper" },
    category = "angels-chemical-smelting-2",
    subgroup = "angels-copper",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-anode-copper", amount = 12 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-ingot-copper", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-copper"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-copper]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-copper",
    category = "angels-powderizing-1",
    subgroup = "angels-copper",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-copper", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-copper", amount = 1 },
    },
    order = "f[powder-copper]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-copper",
    category = "angels-induction-smelting",
    subgroup = "angels-copper-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-copper", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 120 },
    },
    order = "g[liquid-molten-copper]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-roll-copper",
    category = "angels-strand-casting",
    subgroup = "angels-copper-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-copper", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-copper"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-roll-copper]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-roll-copper-2",
    localised_name = { "item-name.angels-roll-copper" },
    category = "angels-strand-casting-2",
    subgroup = "angels-copper-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-copper", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-copper",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-copper"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-roll-copper]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper",
    category = "angels-strand-casting",
    subgroup = "angels-copper-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-copper", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-copper"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-wire-coil-copper]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-2",
    localised_name = { "item-name.angels-wire-coil-copper" },
    category = "angels-strand-casting-2",
    subgroup = "angels-copper-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-copper", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-wire-coil-copper",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-copper"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-wire-coil-copper]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-copper"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-copper",
    localised_name = { "item-name.copper-plate" },
    category = "angels-casting",
    subgroup = "angels-copper-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 40 },
    },
    results = {
      { type = "item", name = "copper-plate", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
          icon_size = 32,
        }
      },
      angelsmods.functions.get_object_icons("angels-liquid-molten-copper"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-copper]-c", -- j[angels-plate-copper]-a reserved for crushed stiratite smelting (see global overrides)
  }, -- j[angels-plate-copper]-b reserved for base game smelting recipe (see global overrides)
  {
    type = "recipe",
    name = "angels-plate-copper-2",
    localised_name = { "item-name.copper-plate" },
    category = "advanced-crafting",
    subgroup = "angels-copper-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-copper", amount = 1 },
    },
    results = {
      { type = "item", name = "copper-plate", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
          icon_size = 32,
        }
      },
      angelsmods.functions.get_object_icons("angels-roll-copper"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-copper]-d",
  },
  {
    type = "recipe",
    name = "angels-wire-copper-2",
    localised_name = { "item-name.copper-cable" },
    category = "advanced-crafting",
    subgroup = "angels-copper-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-copper", amount = 4 },
    },
    results = {
      { type = "item", name = "copper-cable", amount = 16 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/wire-copper.png",
          icon_size = 32,
        }
      },
      angelsmods.functions.get_object_icons("angels-wire-coil-copper"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-wire-copper]-e", -- k[angels-wire-copper]-a reserved for base game recipe (see global overrides)
  },
})
