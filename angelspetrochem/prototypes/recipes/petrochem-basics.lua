local AF = angelsmods.functions
data:extend({
  --BASIC CHEMISTRY
  {
    type = "recipe",
    name = "angels-steam-water",
    category = "petrochem-boiler",
    subgroup = "water-boiling",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "fluid", name = "steam", amount = 40, temperature = 165, fluidbox_index = 2 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        "steam",
      },
      "WsWsWs",
      {
        "water",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "steam", "water" }),
    order = "a[steam]-b",
  },
  {
    type = "recipe",
    name = "angels-steam-water-purified",
    category = "petrochem-boiler",
    subgroup = "water-boiling",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-purified", amount = 40 },
    },
    results = {
      { type = "fluid", name = "steam", amount = 40, temperature = 165, fluidbox_index = 2 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        "steam",
      },
      "WsWsWs",
      {
        "water-purified",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "steam", "water-purified" }),
    order = "a[steam]-b",
  },
  {
    type = "recipe",
    name = "dirt-water-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-oxygen", amount = 30 },
      { type = "fluid", name = "gas-hydrogen", amount = 40 },
      { type = "item", name = "slag", amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      },
      "OHH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
        "water",
      }
    ),
    order = "a[water-separation]-a[water]-a",
    crafting_machine_tint = AF.get_recipe_tints({ "hydrogen", "water", "oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "dirt-water-separation-2",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
      { type = "item", name = "angels-electrode", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-oxygen", amount = 30 },
      { type = "fluid", name = "gas-hydrogen", amount = 40 },
      { type = "item", name = "slag", amount = 1 },
      { type = "item", name = "angels-electrode-used", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      },
      "OHH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
        "water",
      }
    ),
    order = "a[water-separation]-a[water]-b",
    crafting_machine_tint = AF.get_recipe_tints({ "hydrogen", "water", "oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "water-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-purified", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-oxygen", amount = 40 },
      { type = "fluid", name = "gas-hydrogen", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      },
      "OHH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
        "water-purified",
      }
    ),
    order = "a[water-separation]-b[water-purified]-a",
    crafting_machine_tint = AF.get_recipe_tints({ "hydrogen", "water-purified", "oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "water-separation-2",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-purified", amount = 100 },
      { type = "item", name = "angels-electrode", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-oxygen", amount = 40 },
      { type = "fluid", name = "gas-hydrogen", amount = 60 },
      { type = "item", name = "angels-electrode-used", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      },
      "OHH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
        "water-purified",
      }
    ),
    order = "a[water-separation]-b[water-purified]-b",
    crafting_machine_tint = AF.get_recipe_tints({ "hydrogen", "water-purified", "oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "water-synthesis",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-oxygen", amount = 60 },
      { type = "fluid", name = "gas-hydrogen", amount = 90 },
    },
    results = {
      { type = "fluid", name = "water-purified", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      "water-purified",
    }, "WsWsWs"),
    order = "a[water-synthesis]",
    crafting_machine_tint = AF.get_recipe_tints({ "water-purified", "hydrogen", "oxygen" }),--[[{
        primary = {r = 1, g = 1, b = 1, a = 0},
        secondary = {r = 0.7, g = 0.7, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "carbon-separation-1",
    category = "liquifying",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-carbon", amount = 1 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-carbon-monoxide", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      { { "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 } },
      "CCOc"
    ),
    order = "b[carbon-separation-1]",
    crafting_machine_tint = AF.get_recipe_tints({ "gas-carbon-monoxide", "water-purified", { r = 0, g = 0, b = 0, a = 1 } }),--[[{
        primary = {r = 0.7, g = 0.7, b = 1, a = 0},
        secondary = {r = 1, g = 0.4, b = 0.4, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "carbon-separation-2",
    category = "liquifying",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-carbon-dioxide", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      { { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 } },
      "COcOc"
    ),
    order = "d[carbon-separation-2]",
    crafting_machine_tint = AF.get_recipe_tints({ "gas-carbon-dioxide", { r = 0, g = 0, b = 0, a = 1 } }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "solid-calcium-chloride",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "stone-crushed", amount = 6 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 30 },
    },
    results = {
      { type = "item", name = "solid-calcium-chloride", amount = 3 },
    },
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    icon_size = 32,
    order = "e[solid-calcium-chloride]",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 168 / 255, g = 203 / 255, b = 105 / 255, a = 0 / 255 },
      "gas-hydrogen-chloride",
    }),--[[{
        primary = {r = 0.1, g = 1, b = 0.1, a = 0},
        secondary = {r = 168 / 255, g = 203 / 255, b = 105 / 255, a = 0 / 255},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "water-gas-shift-1",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-carbon-monoxide", amount = 50 },
      { type = "fluid", name = "steam", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-carbon-dioxide", amount = 50 },
      { type = "fluid", name = "gas-hydrogen", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
    }, "WsHOi"),
    order = "f",
    crafting_machine_tint = AF.get_recipe_tints({ "gas-carbon-dioxide", "steam", "gas-hydrogen", "gas-carbon-monoxide" }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "water-gas-shift-2",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-hydrogen", amount = 50 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 50 },
    },
    results = {
      { type = "fluid", name = "water-purified", amount = 50 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      "water-purified",
      { "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 },
    }, "WsHOi"),
    order = "g",
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-carbon-monoxide",
      "gas-hydrogen",
      "water-purified",
      "gas-carbon-dioxide",
    }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  --COAL CRACKING
  {
    type = "recipe",
    name = "coal-cracking-1", --Gasification
    category = "advanced-chemistry",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 5 },
    },
    results = {
      { type = "fluid", name = "gas-hydrogen-sulfide", amount = 50 },
      { type = "fluid", name = "gas-benzene", amount = 30 },
      { type = "fluid", name = "gas-methane", amount = 70 },
      { type = "item", name = "solid-coke", amount = 6 }, --COKE
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/benzene.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "OiOiOi"),
    order = "f[coal-cracking-1]",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 1, g = 1, b = 1 },--[[coke]]
      "gas-hydrogen-sulfide",
      "gas-methane",
      "gas-benzene",
    }),--[[{
        primary = {r = 1, g = 1, b = 0.3, a = 0},
        secondary = {r = 0.5, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 0.3, g = 0.3, b = 0.3, a = 0}
      }]]
  },
  {
    type = "recipe",
    name = "coal-cracking-2", --Bergius-Process
    category = "advanced-chemistry",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 5 },
      { type = "fluid", name = "gas-hydrogen", amount = 50 },
      { type = "item", name = "catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "liquid-naphtha", amount = 60 },
      { type = "fluid", name = "liquid-ngl", amount = 30 },
      { type = "fluid", name = "liquid-mineral-oil", amount = 20 },
      { type = "item", name = "solid-coke", amount = 6 }, --COKE
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      "liquid-mineral-oil",
      "liquid-ngl",
      "liquid-naphtha",
    }, "OiOiOi"),
    order = "g[coal-cracking-2]",
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-naphtha",
      { r = 1, g = 1, b = 1 },
      "liquid-ngl",
      "gas-hydrogen",
      "liquid-mineral-oil",
    }),--[[{
        primary = {r = 0.8, g = 0.4, b = 0.4, a = 0},
        secondary = {r = 0.3, g = 0.5, b = 0.3, a = 0},
        tertiary = {r = 0.2, g = 0.6, b = 0.2, a = 0}
      }]]
  },
  {
    type = "recipe",
    name = "coal-cracking-3", --Fischer-Tropsch Ammonia and Methanol feed
    category = "advanced-chemistry",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 5 },
      { type = "fluid", name = "steam", amount = 50 },
      { type = "fluid", name = "gas-oxygen", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 20 },
      { type = "fluid", name = "gas-hydrogen-sulfide", amount = 30 },
      -- {type="fluid", name="gas-hydrogen", amount=1},
      -- {type="fluid", name="gas-methane", amount=1},
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      "gas-synthesis",
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "OiOiOi"),
    order = "h[coal-cracking-3]",
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-synthesis",
      "gas-oxygen",
      "gas-carbon-dioxide",
      "steam",
      "gas-hydrogen-sulfide",
    }),--[[{
        primary = {r = 210 / 255, g = 120 / 255, b = 210 / 255, a = 0 / 255},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 1, g = 1, b = 0.3, a = 0}
      }]]
  },
  {
    type = "recipe",
    name = "coke-purification",
    category = "liquifying",
    subgroup = "petrochem-coal",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 2 },
      { type = "fluid", name = "steam", amount = 30 },
    },
    results = {
      { type = "item", name = "solid-carbon", amount = 3 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("solid-carbon"), 1, angelsmods.petrochem.number_tint),
    order = "d[coke-purification]",
    crafting_machine_tint = AF.get_recipe_tints({ { r = 1, g = 1, b = 1 }, { r = 1, g = 1, b = 1 }, "steam" }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "coke-purification-2",
    category = "liquifying",
    subgroup = "petrochem-coal",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 4 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 1 },
      { type = "fluid", name = "gas-nitrogen", amount = 30 },
    },
    results = {
      { type = "item", name = "solid-carbon", amount = 6 },
      { type = "item", name = "solid-sodium-carbonate", amount = 1 },
      { type = "fluid", name = "water", amount = 10 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("solid-carbon"), 2, angelsmods.petrochem.number_tint),
    order = "d[coke-purification]",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 1, g = 1, b = 1 },
      "gas-nitrogen",
      "water",
      AF.fluid_color("NaCO3"),
    }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "coal-crushed",
    category = "ore-refining-t1",
    subgroup = "petrochem-coal",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 1 },
    },
    results = {
      { type = "item", name = "coal-crushed", amount = 2 },
    },
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    icon_size = 32,
    order = "a[coal-crushed]",
  },
  {
    type = "recipe",
    name = "solid-coke",
    category = "smelting",
    subgroup = "petrochem-coal",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal-crushed", amount = 2 },
    },
    results = {
      { type = "item", name = "solid-coke", amount = 2 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("solid-coke"), 1, angelsmods.petrochem.number_tint),
    order = "b[coal-crushed]",
  },
  {
    type = "recipe",
    name = "solid-coke-sulfur",
    category = "liquifying",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal-crushed", amount = 2 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-coke", amount = 2 },
      { type = "fluid", name = "water-yellow-waste", amount = 50 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("solid-coke"), 2, angelsmods.petrochem.number_tint),
    order = "c[solid-coke-sulfur]",
    crafting_machine_tint = AF.get_recipe_tints({ "water-yellow-waste", "water-purified" }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 0.9, g = 0.9, b = 0.4, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "pellet-coke",
    category = "crafting",
    subgroup = "petrochem-coal",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 5 },
    },
    results = {
      { type = "item", name = "pellet-coke", amount = 1 },
    },
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    icon_size = 32,
    order = "e[pellet-coke]",
  },
  --ENRICHED WATER
  {
    type = "recipe",
    name = "angels-water-enrichment-1",
    localised_name = { "recipe-name.angels-water-enrichment", "1", "0", "7.5" },
    category = "advanced-chemistry",
    subgroup = "water-enrichment",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-saline", amount = 60 },
      { type = "fluid", name = "water-purified", amount = 50 },
      { type = "fluid", name = "gas-enriched-hydrogen-sulfide", amount = 100, minimum_temperature = 95 },
    },
    results = {
      { type = "fluid", name = "gas-hydrogen-sulfide", amount = 100 },
      { type = "fluid", name = "liquid-water-semiheavy-1", amount = 50, temperature = 100 },
      { type = "fluid", name = "water-green-waste", amount = 60 },
    },
    main_product = "liquid-water-semiheavy-1",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.refining.number_tint),
        {
          icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png",
          icon_size = 72,
        },
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-semiheavy-1"),
    order = "k[water-enrichment]-a[enriching]-a[semiheavy-1]",
  },
  {
    type = "recipe",
    name = "angels-water-enrichment-2",
    localised_name = { "recipe-name.angels-water-enrichment", "2", "7.5", "12.5" },
    category = "advanced-chemistry",
    subgroup = "water-enrichment",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-saline", amount = 60 },
      { type = "fluid", name = "liquid-water-semiheavy-1", amount = 50, maximum_temperature = 30 },
      { type = "fluid", name = "gas-enriched-hydrogen-sulfide", amount = 100, minimum_temperature = 95 },
    },
    results = {
      { type = "fluid", name = "gas-hydrogen-sulfide", amount = 100 },
      { type = "fluid", name = "liquid-water-semiheavy-2", amount = 50, temperature = 100 },
      { type = "fluid", name = "water-green-waste", amount = 60 },
    },
    main_product = "liquid-water-semiheavy-2",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.refining.number_tint),
        {
          icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png",
          icon_size = 72,
        },
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-semiheavy-2"),
    order = "k[water-enrichment]-a[enriching]-b[semiheavy-2]",
  },
  {
    type = "recipe",
    name = "angels-water-enrichment-3",
    localised_name = { "recipe-name.angels-water-enrichment", "3", "12.5", "15" },
    category = "advanced-chemistry",
    subgroup = "water-enrichment",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-saline", amount = 60 },
      { type = "fluid", name = "liquid-water-semiheavy-2", amount = 50, maximum_temperature = 30 },
      { type = "fluid", name = "gas-enriched-hydrogen-sulfide", amount = 100, minimum_temperature = 95 },
    },
    results = {
      { type = "fluid", name = "gas-hydrogen-sulfide", amount = 100 },
      { type = "fluid", name = "liquid-water-semiheavy-3", amount = 50, temperature = 100 },
      { type = "fluid", name = "water-green-waste", amount = 60 },
    },
    main_product = "liquid-water-semiheavy-3",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 3, angelsmods.refining.number_tint),
        {
          icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png",
          icon_size = 72,
        },
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-semiheavy-3"),
    order = "k[water-enrichment]-a[enriching]-c[semiheavy-3]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-1",
    localised_name = { "recipe-name.angels-water-enriched-cooling", "1" },
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-semiheavy-1", amount = 200, minimum_temperature = 26 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-water-semiheavy-1", amount = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    main_product = "liquid-water-semiheavy-1",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.refining.number_tint),
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-semiheavy-1"),
    order = "k[water-enrichment]-b[cooling]-a[semiheavy-1]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-2",
    localised_name = { "recipe-name.angels-water-enriched-cooling", "2" },
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-semiheavy-2", amount = 200, minimum_temperature = 26 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-water-semiheavy-2", amount = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    main_product = "liquid-water-semiheavy-2",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.refining.number_tint),
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-semiheavy-2"),
    order = "k[water-enrichment]-b[cooling]-b[semiheavy-2]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-3",
    localised_name = { "recipe-name.angels-water-enriched-cooling", "3" },
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-semiheavy-3", amount = 200, minimum_temperature = 26 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-water-semiheavy-3", amount = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    main_product = "liquid-water-semiheavy-3",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 3, angelsmods.refining.number_tint),
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-semiheavy-3"),
    order = "k[water-enrichment]-b[cooling]-c[semiheavy-3]",
  },
  {
    type = "recipe",
    name = "angels-heavy-water-extraction",
    localised_name = { "recipe-name.angels-heavy-water-extraction" },
    category = "petrochem-boiler",
    subgroup = "water-enrichment",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-semiheavy-3", amount = 100, maximum_temperature = 30 },
    },
    results = {
      { type = "fluid", name = "liquid-water-heavy", amount = 5, temperature = 100, fluidbox_index = 1 },
      { type = "fluid", name = "steam", amount = 95, temperature = 125, fluidbox_index = 2 },
    },
    main_product = "liquid-water-heavy",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/heavy-water.png", 64 },
      },
      "OHdHd",
      {
        nil,
        { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      }
    ),
    order = "k[water-enrichment]-a[enriching]-d[heavy]",
  },
  {
    type = "recipe",
    name = "angels-heavy-water-cooling",
    localised_name = { "recipe-name.angels-heavy-water-cooling" },
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-heavy", amount = 100, minimum_temperature = 26 },
      { type = "fluid", name = "water-purified", amount = 25 },
    },
    results = {
      { type = "fluid", name = "liquid-water-heavy", amount = 100, temperature = 25 },
      { type = "fluid", name = "steam", amount = 25, temperature = 125 },
    },
    main_product = "liquid-water-heavy",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/heavy-water.png", 64 },
      },
      "OHdHd",
      {
        nil,
        mods["angelssmelting"] and {
          icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-water-heavy"),
    order = "k[water-enrichment]-b[cooling]-d[heavy-water]",
  },
  {
    type = "recipe",
    name = "angels-heavy-water-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-heavy", amount = 100, maximum_temperature = 30 },
    },
    results = {
      { type = "fluid", name = "gas-oxygen", amount = 40 },
      { type = "fluid", name = "gas-deuterium", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/deuterium.png", 64 },
        { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      },
      "OHdHd",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
        { "__angelspetrochem__/graphics/icons/molecules/heavy-water.png", 64 },
      }
    ),
    order = "a[water-separation]-c[water-heavy]-a",
    crafting_machine_tint = AF.get_recipe_tints({ "gas-deuterium", "liquid-water-heavy", "gas-oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-heavy-water-separation-2",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-water-heavy", amount = 100, maximum_temperature = 30 },
      { type = "item", name = "angels-electrode", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-oxygen", amount = 40 },
      { type = "fluid", name = "gas-deuterium", amount = 60 },
      { type = "item", name = "angels-electrode-used", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/deuterium.png", 64 },
        { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      },
      "OHdHd",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
        { "__angelspetrochem__/graphics/icons/molecules/heavy-water.png", 64 },
      }
    ),
    order = "a[water-separation]-c[water-heavy]-b",
    crafting_machine_tint = AF.get_recipe_tints({ "gas-deuterium", "liquid-water-heavy", "gas-oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
})
