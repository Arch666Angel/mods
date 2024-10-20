local intermediatemulti = angelsmods.marathon.intermediatemulti
local AF = angelsmods.functions

data:extend({
  --Silver
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "silver-ore-processing",
    category = "ore-processing-2",
    subgroup = "angels-silver",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "silver-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-silver", amount = 2 },
    },
    order = "b[processed-silver]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "silver-processed-processing",
    category = "pellet-pressing-2",
    subgroup = "angels-silver",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-silver", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-silver", amount = 4 },
    },
    order = "c[pellet-silver]",
  },
  {
    type = "recipe",
    name = "processed-silver-smelting",
    category = "liquifying",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-silver", amount = 4 },
      { type = "fluid", name = "liquid-nitric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-silver-nitrate", amount = 12 },
    },
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
    order = "d[solid-silver-nitrate]",
  },
  {
    type = "recipe",
    name = "pellet-silver-smelting",
    category = "chemical-smelting-3",
    subgroup = "angels-silver",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-silver", amount = 8 },
      { type = "item", name = "solid-sodium-cyanide", amount = 6 },
      { type = "fluid", name = "water-purified", amount = 60 },
      { type = "fluid", name = "gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-sodium-silver-cyanide", amount = 24 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 4 },
    },
    main_product = "solid-sodium-silver-cyanide",
    order = "f[solid-sodium-silver-cyanide]",
  },
  {
    type = "recipe",
    name = "solid-sodium-silver-cyanide-smelting",
    category = "chemical-smelting-3",
    subgroup = "angels-silver",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-silver-cyanide", amount = 12 },
    },
    results = {
      { type = "item", name = "cathode-silver", amount = 12 },
    },
    order = "g[cathode-silver]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "silver-ore-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "silver-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-silver", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-silver"), 1, angelsmods.smelting.number_tint),
    order = "h[ingot-silver]-a",
  },
  {
    type = "recipe",
    name = "solid-silver-nitrate-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-silver-nitrate", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-silver", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-silver"), 2, angelsmods.smelting.number_tint),
    order = "h[ingot-silver]-b",
  },
  {
    type = "recipe",
    name = "cathode-silver-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "cathode-silver", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-silver", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-silver"), 3, angelsmods.smelting.number_tint),
    order = "h[ingot-silver]-c",
  },
  {
    type = "recipe",
    name = "powder-silver",
    category = "powderizing-1",
    subgroup = "angels-silver",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-silver", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-silver", amount = 1 },
    },
    order = "i[powder-silver]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-silver-smelting",
    category = "induction-smelting-2",
    subgroup = "angels-silver-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-silver", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-silver", amount = 120 },
    },
    order = "j[liquid-molten-silver]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "roll-silver-casting",
    category = "strand-casting-2",
    subgroup = "angels-silver-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-silver", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-silver", amount = 2 },
      },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-silver"), 1, angelsmods.smelting.number_tint),
    order = "k[angels-roll-silver]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "roll-silver-casting-fast",
    category = "strand-casting-3",
    subgroup = "angels-silver-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40, catalyst_amount = 32 },
      },
      results = {
        { type = "item", name = "angels-roll-silver", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-silver",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40, catalyst_amount = 32 },
      },
      results = {
        { type = "item", name = "angels-roll-silver", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-silver",
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-silver"), 2, angelsmods.smelting.number_tint),
    order = "k[angels-roll-silver]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver-casting",
    category = "strand-casting-2",
    subgroup = "angels-silver-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 40 },
        { type = "fluid", name = "liquid-molten-copper", amount = 40 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-silver", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 50 * intermediatemulti },
        { type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-silver", amount = 4 },
      },
    },
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-silver"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "l[angels-wire-coil-silver]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver-casting-fast",
    category = "strand-casting-3",
    subgroup = "angels-silver-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 70 },
        { type = "fluid", name = "liquid-molten-copper", amount = 70 },
        { type = "fluid", name = "liquid-coolant", amount = 40, catalyst_amount = 32 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-silver", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-silver",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 90 * intermediatemulti },
        { type = "fluid", name = "liquid-molten-copper", amount = 90 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40, catalyst_amount = 32 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-silver", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-silver",
    },
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-silver"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "l[angels-wire-coil-silver]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-silver"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-silver",
    category = "casting-2",
    subgroup = "angels-silver-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-silver", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-silver", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-silver", amount = 4 },
      },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-silver"),
      AF.get_object_icons("liquid-molten-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-plate-silver]-b", -- m[angels-plate-silver]-a reserved for silver ore smelting (see silver overrides)
  },
  {
    type = "recipe",
    name = "angels-roll-silver-converting",
    category = "advanced-crafting",
    subgroup = "angels-silver-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-silver", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-silver", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-silver"),
      AF.get_object_icons("angels-roll-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-plate-silver]-c",
  },
  {
    type = "recipe",
    name = "basic-silvered-copper-wire",
    subgroup = "angels-silver-casting",
    order = "m",
    enabled = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-silver", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-silver", amount = 5 },
    },
    allow_decomposition = false,
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-silver"),
      AF.get_object_icons("angels-plate-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "n[angels-wire-silver]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver-converting",
    category = "advanced-crafting",
    subgroup = "angels-silver-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-silver", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-silver", amount = 16 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-silver"),
      AF.get_object_icons("angels-wire-coil-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "n[angels-wire-silver]-b",
  },
  -- order n reserved for bob
})
