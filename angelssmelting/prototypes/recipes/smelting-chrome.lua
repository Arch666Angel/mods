local intermediatemulti = angelsmods.marathon.intermediatemulti
local AF = angelsmods.functions

data:extend({
  --CHROME
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "chrome-ore-processing",
    category = "ore-processing-3",
    subgroup = "angels-chrome",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "chrome-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-chrome", amount = 2 },
    },
    order = "b[processed-chrome]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-chrome"),
  },
  {
    type = "recipe",
    name = "chrome-processed-processing",
    category = "pellet-pressing-3",
    subgroup = "angels-chrome",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-chrome", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-chrome", amount = 4 },
    },
    order = "c[pellet-chrome]",
  },
  {
    type = "recipe",
    name = "pellet-chrome-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-chrome", amount = 8 },
      { type = "item", name = "solid-sodium-carbonate", amount = 7 },
      { type = "fluid", name = "gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-chromate", amount = 24 },
    },
    order = "d[solid-chromate]",
  },
  {
    type = "recipe",
    name = "solid-chromate-smelting",
    category = "liquifying",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-chromate", amount = 12 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "solid-dichromate", amount = 12 },
      { type = "item", name = "solid-sodium-sulfate", amount = 1 },
      { type = "fluid", name = "water-purified", amount = 40 },
    },
    main_product = "solid-dichromate",
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-molten-chrome",
      "liquid-sulfuric-acid",
      AF.fluid_color("NaSO4"),
      "water-purified",
    }),
    order = "e[solid-dichromate]",
  },
  {
    type = "recipe",
    name = "solid-dichromate-smelting",
    category = "chemical-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-dichromate", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "solid-chrome-oxide", amount = 24 },
      { type = "item", name = "solid-sodium-carbonate", amount = 3 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 30 },
    },
    main_product = "solid-chrome-oxide",
    order = "f[solid-chrome-oxide]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "chrome-ore-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "chrome-ore", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "ingot-chrome", amount = 24 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 60 },
    },
    main_product = "ingot-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-chrome"), 1, angelsmods.smelting.number_tint),
    order = "g[ingot-chrome]-a",
  },
  {
    type = "recipe",
    name = "processed-chrome-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-chrome", amount = 8 },
      { type = "item", name = "solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "ingot-chrome", amount = 24 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 60 },
    },
    main_product = "ingot-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-chrome"), 2, angelsmods.smelting.number_tint),
    order = "g[ingot-chrome]-b",
  },
  {
    type = "recipe",
    name = "solid-chrome-oxide-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-chrome-oxide", amount = 24 },
      { type = "item", name = "ingot-chrome", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-chrome", amount = 24 },
      { type = "item", name = "solid-chrome-oxide", amount = 6 },
    },
    main_product = "ingot-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-chrome"), 3, angelsmods.smelting.number_tint),
    order = "g[ingot-chrome]-c",
  },
  {
    type = "recipe",
    name = "powder-chrome",
    category = "advanced-crafting",
    subgroup = "angels-chrome",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-chrome", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-chrome", amount = 1 },
    },
    order = "h[powder-chrome]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-chrome-smelting",
    category = "induction-smelting-3",
    subgroup = "angels-chrome-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-chrome", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-chrome", amount = 120 },
    },
    order = "i[liquid-molten-chrome]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-chrome"),
  },
  {
    type = "recipe",
    name = "roll-chrome-casting",
    category = "strand-casting-3",
    subgroup = "angels-chrome-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-chrome", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-chrome", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-chrome", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-chrome", amount = 2 },
      },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-chrome"), 1, angelsmods.smelting.number_tint),
    order = "j[angels-roll-chrome]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-chrome"),
  },
  {
    type = "recipe",
    name = "roll-chrome-casting-fast",
    category = "strand-casting-4",
    subgroup = "angels-chrome-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-chrome", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-chrome", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-chrome",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-chrome", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-chrome", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-chrome",
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-chrome"), 2, angelsmods.smelting.number_tint),
    order = "j[angels-roll-chrome]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-chrome"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-chrome",
    category = "casting-3",
    subgroup = "angels-chrome-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-chrome", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-chrome", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-chrome", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-chrome", amount = 4 },
      },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-chrome"),
      AF.get_object_icons("liquid-molten-chrome"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-chrome]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-chrome-converting",
    category = "advanced-crafting",
    subgroup = "angels-chrome-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-chrome", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-chrome", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-chrome"),
      AF.get_object_icons("angels-roll-chrome"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-chrome]-b",
  },
})
