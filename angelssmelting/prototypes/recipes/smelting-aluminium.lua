local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --BAUXITE/ALUMINIUM
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "bauxite-ore-processing",
    category = "ore-processing-2",
    subgroup = "angels-aluminium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "bauxite-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-aluminium", amount = 2 },
    },
    main_product = "processed-aluminium",
    order = "b[processed-aluminium]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "aluminium-processed-processing",
    category = "pellet-pressing-2",
    subgroup = "angels-aluminium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-aluminium", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-aluminium", amount = 4 },
    },
    main_product = "pellet-aluminium",
    order = "c[pellet-aluminium]",
  },
  {
    type = "recipe",
    name = "pellet-aluminium-smelting",
    category = "chemical-smelting-3",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-aluminium", amount = 6 },
      { type = "item", name = "solid-sodium-carbonate", amount = 3 },
      { type = "item", name = "solid-coke", amount = 3 },
    },
    results = {
      { type = "item", name = "solid-sodium-aluminate", amount = 18 },
    },
    main_product = "solid-sodium-aluminate",
    order = "d[solid-sodium-aluminate]",
  },
  {
    type = "recipe",
    name = "bauxite-ore-smelting",
    category = "powder-mixing",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "bauxite-ore", amount = 12 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 3 },
    },
    results = {
      { type = "item", name = "solid-aluminium-hydroxide", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-aluminium-hydroxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-aluminium-hydroxide]-a",
  },
  {
    type = "recipe",
    name = "processed-aluminium-smelting",
    category = "powder-mixing-2",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-aluminium", amount = 4 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 3 },
    },
    results = {
      { type = "item", name = "solid-aluminium-hydroxide", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-aluminium-hydroxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-aluminium-hydroxide]-b",
  },
  {
    type = "recipe",
    name = "solid-aluminium-hydroxide-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-aluminium-hydroxide", amount = 24 },
    },
    results = {
      { type = "item", name = "solid-aluminium-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-aluminium-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[solid-aluminium-oxide]-a",
  },
  {
    type = "recipe",
    name = "solid-sodium-aluminate-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-aluminate", amount = 24 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 3 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-aluminium-oxide", amount = 24 },
      { type = "item", name = "solid-sodium-carbonate", amount = 2 },
    },
    main_product = "solid-aluminium-oxide",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-aluminium-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[solid-aluminium-oxide]-b",
  },
  -- SMELTING RESULT
  {
    type = "recipe",
    name = "solid-aluminium-oxide-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-aluminium-oxide", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "ingot-aluminium", amount = 24 },
    },
    order = "g[ingot-aluminium]",
  },
  {
    type = "recipe",
    name = "powder-aluminium",
    category = "advanced-crafting",
    subgroup = "angels-aluminium",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-aluminium", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-aluminium", amount = 1 },
    },
    order = "h[powder-aluminium]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-aluminium-smelting-1",
    category = "induction-smelting-2",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-aluminium", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-aluminium", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-aluminium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-aluminium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "molten-aluminium-smelting-2",
    category = "induction-smelting-3",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-aluminium", amount = 12 },
      { type = "item", name = "ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-aluminium", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-aluminium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-aluminium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "molten-aluminium-smelting-3",
    category = "induction-smelting-4",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-aluminium", amount = 12 },
      { type = "item", name = "ingot-silicon", amount = 12 },
      { type = "item", name = "ingot-copper", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-aluminium", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-aluminium"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-aluminium]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "roll-aluminium-casting",
    category = "strand-casting-2",
    subgroup = "angels-aluminium-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-aluminium", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-aluminium", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-aluminium", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-aluminium", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-aluminium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-aluminium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "roll-aluminium-casting-fast",
    category = "strand-casting-3",
    subgroup = "angels-aluminium-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-aluminium", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-aluminium", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-aluminium",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-aluminium", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-aluminium", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-aluminium",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-aluminium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-aluminium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-aluminium"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-aluminium",
    category = "casting-2",
    subgroup = "angels-aluminium-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-aluminium", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-aluminium", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-aluminium", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-aluminium", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-aluminium"),
      angelsmods.functions.get_object_icons("liquid-molten-aluminium"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-aluminium]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-aluminium-converting",
    category = "advanced-crafting",
    subgroup = "angels-aluminium-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-aluminium", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-aluminium", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-aluminium"),
      angelsmods.functions.get_object_icons("angels-roll-aluminium"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-aluminium]-b",
  },
  -- order l reserved for motor casting (see industries)
})
