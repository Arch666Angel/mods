local intermediatemulti = angelsmods.marathon.intermediatemulti

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
    name = "angels-solder-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solder-mixture", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-solder", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-solder-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-tin", amount = 12 },
      { type = "item", name = "ingot-lead", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-solder", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-solder-smelting-3",
    category = "induction-smelting-2",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-tin", amount = 12 },
      { type = "item", name = "ingot-zinc", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-solder", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "angels-solder-smelting-4",
    category = "induction-smelting-3",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-tin", amount = 12 },
      { type = "item", name = "ingot-copper", amount = 12 },
      { type = "item", name = "ingot-silver", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-solder", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "b[liquid-molten-solder]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "roll-solder-casting",
    category = "strand-casting",
    subgroup = "angels-solder-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-solder", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-solder", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-solder", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-solder", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-solder"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-roll-solder]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder"),
  },
  {
    type = "recipe",
    name = "roll-solder-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-solder-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-solder", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50 },
      },
      results = {
        { type = "item", name = "angels-roll-solder", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-solder",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-solder", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50 },
      },
      results = {
        { type = "item", name = "angels-roll-solder", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-solder",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-solder"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-roll-solder]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder"),
  },
  -- SOLDER CASTING RESULT
  {
    type = "recipe",
    name = "angels-solder-mixture-smelting",
    category = "smelting",
    subgroup = "angels-solder-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "item", name = "angels-solder-mixture", amount = 2 },
      },
      results = {
        { type = "item", name = "angels-solder", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "item", name = "angels-solder-mixture", amount = 3 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-solder", amount = 2 },
      },
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
    category = "casting",
    subgroup = "angels-solder-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-solder", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-solder", amount = 6 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-solder", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-solder", amount = 6 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-solder"),
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      { -10, -10 },
      0.4375
    ),
    order = "d[angels-solder]-b",
  },
  {
    type = "recipe",
    name = "angels-roll-solder-converting",
    category = "advanced-crafting",
    subgroup = "angels-solder-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
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
