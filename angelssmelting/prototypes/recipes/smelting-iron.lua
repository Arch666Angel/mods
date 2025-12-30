data:extend({
  --IRON
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-iron",
    category = "angels-ore-processing",
    subgroup = "angels-iron",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-iron", amount = 2 },
    },
    order = "b[processed-iron]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-pellet-iron",
    category = "angels-pellet-pressing",
    subgroup = "angels-iron",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-iron", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-iron", amount = 4 },
    },
    order = "c[pellet-iron]",
  },
  -- order d reserved for solid-iron-hydroxide
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-iron",
    category = "angels-blast-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-iron", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-iron-2",
    localised_name = { "item-name.angels-ingot-iron" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-iron", amount = 8 },
      { type = "item", name = "angels-solid-coke", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ingot-iron", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-iron-3",
    localised_name = { "item-name.angels-ingot-iron" },
    category = "angels-blast-smelting-3",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-iron", amount = 8 },
      { type = "item", name = "angels-solid-coke", amount = 2 },
      { type = "item", name = "angels-solid-limestone", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ingot-iron", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-iron"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-c",
  },
  {
    type = "recipe",
    name = "angels-solid-iron-hydroxide-smelting",
    category = "angels-chemical-smelting-2",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-iron-hydroxide", amount = 6 },
      { type = "item", name = "angels-solid-coke", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ingot-iron", amount = 6, ignored_by_productivity = 6, ignored_by_stats = 6 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 20 },
    },
    main_product = "angels-ingot-iron",
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-iron"),
      angelsmods.functions.get_object_icons("angels-solid-iron-hydroxide"),
      { -11.5, -12 },
      10.24 / 32
    ),
    order = "e[ingot-iron]-d",
  },
  -- order f reserved for ingot-steel (see alloys)
  {
    type = "recipe",
    name = "angels-powder-iron",
    category = "angels-powderizing-1",
    subgroup = "angels-iron",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-iron", amount = 1 },
    },
    order = "g[powder-iron]",
  },
  -- order h reserved for powder-steel (see alloys)
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-iron",
    localised_name = { "fluid-name.angels-liquid-molten-iron" },
    category = "angels-induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-iron-2",
    localised_name = { "fluid-name.angels-liquid-molten-iron" },
    category = "angels-induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 12 },
      { type = "item", name = "angels-ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-iron-3",
    localised_name = { "fluid-name.angels-liquid-molten-iron" },
    category = "angels-induction-smelting-2",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 12 },
      { type = "item", name = "angels-ingot-silicon", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-iron"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-iron-4",
    localised_name = { "fluid-name.angels-liquid-molten-iron" },
    category = "angels-induction-smelting-3",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 12 },
      { type = "item", name = "angels-ingot-nickel", amount = 12 },
      { type = "item", name = "angels-ingot-cobalt", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-iron"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-iron-5",
    localised_name = { "fluid-name.angels-liquid-molten-iron" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 12 },
      { type = "item", name = "angels-ingot-nickel", amount = 12 },
      { type = "item", name = "angels-ingot-chrome", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-iron"),
      5,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-e",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-roll-iron",
    category = "angels-strand-casting",
    subgroup = "angels-iron-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-iron", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-iron]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-roll-iron-2",
    localised_name = { "item-name.angels-roll-iron" },
    category = "angels-strand-casting-2",
    subgroup = "angels-iron-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-iron", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-iron",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-iron]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-rod-stack-iron",
    category = "angels-strand-casting",
    subgroup = "angels-iron-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 60 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-rod-stack-iron", amount = 1 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-stack-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-rod-stack-iron]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "angels-rod-stack-iron-2",
    localised_name = { "item-name.angels-rod-stack-iron" },
    category = "angels-strand-casting-2",
    subgroup = "angels-iron-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 110 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-rod-stack-iron", amount = 2 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-rod-stack-iron",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-stack-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-rod-stack-iron]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-iron"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-iron",
    localised_name = { "item-name.iron-plate" },
    category = "angels-casting",
    subgroup = "angels-iron-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-iron", amount = 40 },
    },
    results = {
      { type = "item", name = "iron-plate", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
          icon_size = 32,
        }
      },
      angelsmods.functions.get_object_icons("angels-liquid-molten-iron"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-iron]-c", -- l[angels-plate-iron]-a reserved for crushed saphirite smelting (see global overrides)
  }, -- l[angels-plate-iron]-b reserved for base game smelting recipe (see global overrides)
  {
    type = "recipe",
    name = "angels-plate-iron-2",
    localised_name = { "item-name.iron-plate" },
    category = "advanced-crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-iron", amount = 1 },
    },
    results = {
      { type = "item", name = "iron-plate", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
          icon_size = 32,
        }
      },
      angelsmods.functions.get_object_icons("angels-roll-iron"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-iron]-d",
  },
  {
    type = "recipe",
    name = "angels-rod-iron",
    localised_name = { "item-name.iron-stick" },
    category = "crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "iron-stick", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("iron-stick"),
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
        icon_size = 32,
      },
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-rod-iron]-a",
  },
  {
    type = "recipe",
    name = "angels-rod-iron-2",
    localised_name = { "item-name.iron-stick" },
    category = "advanced-crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-rod-stack-iron", amount = 1 },
    },
    results = {
      { type = "item", name = "iron-stick", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("iron-stick"),
      angelsmods.functions.get_object_icons("angels-rod-stack-iron"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-rod-iron]-b",
  },
})
