local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --IRON
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "iron-ore-processing",
    category = "ore-processing",
    subgroup = "angels-iron",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-iron", amount = 2 },
    },
    order = "b[processed-iron]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "iron-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-iron",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-iron", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-iron", amount = 4 },
    },
    order = "c[pellet-iron]",
  },
  -- order d reserved for solid-iron-hydroxide
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "iron-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-iron", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-a",
  },
  {
    type = "recipe",
    name = "processed-iron-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-iron", amount = 8 },
      { type = "item", name = "solid-coke", amount = 2 },
    },
    results = {
      { type = "item", name = "ingot-iron", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-b",
  },
  {
    type = "recipe",
    name = "pellet-iron-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-iron", amount = 8 },
      { type = "item", name = "solid-coke", amount = 2 },
      { type = "item", name = "solid-limestone", amount = 2 },
    },
    results = {
      { type = "item", name = "ingot-iron", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-iron"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-c",
  },
  {
    type = "recipe",
    name = "solid-iron-hydroxide-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-iron-hydroxide", amount = 6 },
      { type = "item", name = "solid-coke", amount = 2 },
    },
    results = {
      { type = "item", name = "ingot-iron", amount = 6 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 20 },
    },
    main_product = "ingot-iron",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-iron"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-iron]-d",
  },
  -- order f reserved for ingot-steel (see alloys)
  {
    type = "recipe",
    name = "powder-iron",
    category = "advanced-crafting",
    subgroup = "angels-iron",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-iron", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-iron", amount = 1 },
    },
    order = "g[powder-iron]",
  },
  -- order h reserved for powder-steel (see alloys)
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-iron-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-iron", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-iron", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-iron", amount = 12 },
      { type = "item", name = "ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-iron", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-3",
    category = "induction-smelting-2",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-iron", amount = 12 },
      { type = "item", name = "ingot-silicon", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-iron", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-iron"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-4",
    category = "induction-smelting-3",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-iron", amount = 12 },
      { type = "item", name = "ingot-nickel", amount = 12 },
      { type = "item", name = "ingot-cobalt", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-iron", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-iron"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-5",
    category = "induction-smelting-4",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-iron", amount = 12 },
      { type = "item", name = "ingot-nickel", amount = 12 },
      { type = "item", name = "ingot-chrome", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-iron", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-iron"),
      5,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-iron]-e",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "roll-iron-casting",
    category = "strand-casting",
    subgroup = "angels-iron-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-iron", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-iron", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-iron]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "roll-iron-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-iron-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-iron", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-iron",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-iron", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-iron",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-iron]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "rod-stack-iron-casting",
    category = "strand-casting",
    subgroup = "angels-iron-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 60 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-rod-stack-iron", amount = 1 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 80 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-rod-stack-iron", amount = 1 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-stack-iron"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-rod-stack-iron]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  {
    type = "recipe",
    name = "rod-stack-iron-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-iron-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 110 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-rod-stack-iron", amount = 2 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-rod-stack-iron",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 150 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-rod-stack-iron", amount = 2 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-rod-stack-iron",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-stack-iron"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-rod-stack-iron]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-iron"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-iron",
    category = "casting",
    subgroup = "angels-iron-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-iron", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-iron", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-iron", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-iron"),
      angelsmods.functions.get_object_icons("liquid-molten-iron"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-iron]-c", -- l[angels-plate-iron]-a reserved for crushed saphirite smelting (see global overrides)
  }, -- l[angels-plate-iron]-b reserved for base game smelting recipe (see global overrides)
  {
    type = "recipe",
    name = "angels-roll-iron-converting",
    category = "advanced-crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-iron", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-iron", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-iron"),
      angelsmods.functions.get_object_icons("angels-roll-iron"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-iron]-d",
  },
  {
    type = "recipe",
    name = "angels-rod-iron-plate",
    category = "crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = true,
    allow_decomposition = true,
    ingredients = {
      { type = "item", name = "angels-plate-iron", amount = 2 },
    },
    results = {
      { type = "item", name = "iron-stick", amount = 1 },
    },
    allow_decomposition = false,
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("iron-stick"),
      angelsmods.functions.get_object_icons("angels-plate-iron"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-rod-iron]-a",
  },
  {
    type = "recipe",
    name = "angels-rod-stack-iron-converting",
    category = "advanced-crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
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
