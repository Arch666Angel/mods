local AF = angelsmods.functions
data:extend({
  --BASIC CHEMISTRY
  {
    type = "recipe",
    name = "angels-steam-water",
    localised_name = { "fluid-name.steam" },
    category = "angels-petrochem-boiler",
    subgroup = "angels-water-boiling",
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
    localised_name = { "fluid-name.steam" },
    category = "angels-petrochem-boiler",
    subgroup = "angels-water-boiling",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-water-purified", amount = 40 },
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
        "angels-water-purified",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "steam", "angels-water-purified" }),
    order = "a[steam]-b",
  },
  {
    type = "recipe",
    name = "angels-dirt-water-separation",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-basics",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 30 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 40 },
      { type = "item", name = "angels-slag", amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
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
    name = "angels-dirt-water-separation-2",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
      { type = "item", name = "angels-electrode", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 30 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 40 },
      { type = "item", name = "angels-slag", amount = 1 },
      { type = "item", name = "angels-electrode-used", amount = 1, ignored_by_productivity = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
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
    name = "angels-water-separation",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-basics",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-water-purified", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
      },
      "OHH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
        "angels-water-purified",
      }
    ),
    order = "a[water-separation]-b[water-purified]-a",
    crafting_machine_tint = AF.get_recipe_tints({ "hydrogen", "angels-water-purified", "oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-water-separation-2",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-water-purified", amount = 100 },
      { type = "item", name = "angels-electrode", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 60 },
      { type = "item", name = "angels-electrode-used", amount = 1, ignored_by_productivity = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
      },
      "OHH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
        "angels-water-purified",
      }
    ),
    order = "a[water-separation]-b[water-purified]-b",
    crafting_machine_tint = AF.get_recipe_tints({ "hydrogen", "angels-water-purified", "oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-water-synthesis",
    localised_name = { "fluid-name.angels-water-purified" },
    category = "chemistry",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 90 },
    },
    results = {
      { type = "fluid", name = "angels-water-purified", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      "angels-water-purified",
    }, "WsWsWs"),
    order = "a[water-synthesis]",
    crafting_machine_tint = AF.get_recipe_tints({ "angels-water-purified", "hydrogen", "oxygen" }),--[[{
        primary = {r = 1, g = 1, b = 1, a = 0},
        secondary = {r = 0.7, g = 0.7, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-gas-carbon-monoxide",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-carbon", amount = 1 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      { { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-monoxide.png", 72 } },
      "CCOc"
    ),
    order = "b[gas-carbon-monoxide]",
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-carbon-monoxide",
      "angels-water-purified",
      { r = 0, g = 0, b = 0, a = 1 },
    }),--[[{
        primary = {r = 0.7, g = 0.7, b = 1, a = 0},
        secondary = {r = 1, g = 0.4, b = 0.4, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-gas-carbon-dioxide",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      { { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-dioxide.png", 72 } },
      "COcOc"
    ),
    order = "d[gas-carbon-dioxide]",
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-carbon-dioxide", { r = 0, g = 0, b = 0, a = 1 } }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-solid-calcium-chloride",
    localised_name = { "item-name.angels-solid-calcium-chloride" },
    category = "chemistry",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-stone-crushed", amount = 6 },
      { type = "fluid", name = "angels-gas-hydrogen-chloride", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-solid-calcium-chloride", amount = 3 },
    },
    icons = {
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-calcium-chloride.png",
        icon_size = 32,
      },
    },
    order = "e[solid-calcium-chloride]",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 168 / 255, g = 203 / 255, b = 105 / 255, a = 0 / 255 },
      "angels-gas-hydrogen-chloride",
    }),--[[{
        primary = {r = 0.1, g = 1, b = 0.1, a = 0},
        secondary = {r = 168 / 255, g = 203 / 255, b = 105 / 255, a = 0 / 255},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-water-gas-shift-1",
    category = "chemistry",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 50 },
      { type = "fluid", name = "steam", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 50 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-dioxide.png", 72 },
    }, "WsHOi"),
    order = "f",
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-carbon-dioxide",
      "steam",
      "angels-gas-hydrogen",
      "angels-gas-carbon-monoxide",
    }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-water-gas-shift-2",
    category = "chemistry",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-hydrogen", amount = 50 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      "angels-water-purified",
      { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-monoxide.png", 72 },
    }, "WsHOi"),
    order = "g",
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-carbon-monoxide",
      "angels-gas-hydrogen",
      "angels-water-purified",
      "angels-gas-carbon-dioxide",
    }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  --COAL CRACKING
  {
    type = "recipe",
    name = "angels-coal-cracking-1", --Gasification
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-coal",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "coal", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 50 },
      { type = "fluid", name = "angels-gas-benzene", amount = 30 },
      { type = "fluid", name = "angels-gas-methane", amount = 70 },
      { type = "item", name = "angels-solid-coke", amount = 6 }, --COKE
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/benzene.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "OiOiOi"),
    order = "f[coal-cracking-1]",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 1, g = 1, b = 1 },--[[coke]]
      "angels-gas-hydrogen-sulfide",
      "angels-gas-methane",
      "angels-gas-benzene",
    }),--[[{
        primary = {r = 1, g = 1, b = 0.3, a = 0},
        secondary = {r = 0.5, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 0.3, g = 0.3, b = 0.3, a = 0}
      }]]
  },
  {
    type = "recipe",
    name = "angels-coal-cracking-2", --Bergius-Process
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-coal",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "coal", amount = 5 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 60 },
      { type = "fluid", name = "angels-liquid-ngl", amount = 30 },
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 20 },
      { type = "item", name = "angels-solid-coke", amount = 6 }, --COKE
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      "angels-liquid-mineral-oil",
      "angels-liquid-ngl",
      "angels-liquid-naphtha",
    }, "OiOiOi"),
    order = "g[coal-cracking-2]",
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-naphtha",
      { r = 1, g = 1, b = 1 },
      "angels-liquid-ngl",
      "angels-gas-hydrogen",
      "angels-liquid-mineral-oil",
    }),--[[{
        primary = {r = 0.8, g = 0.4, b = 0.4, a = 0},
        secondary = {r = 0.3, g = 0.5, b = 0.3, a = 0},
        tertiary = {r = 0.2, g = 0.6, b = 0.2, a = 0}
      }]]
  },
  {
    type = "recipe",
    name = "angels-coal-cracking-3", --Fischer-Tropsch Ammonia and Methanol feed
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-coal",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 5 },
      { type = "fluid", name = "steam", amount = 50 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 20 },
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 30 },
      -- {type="fluid", name="angels-gas-hydrogen", amount=1},
      -- {type="fluid", name="angels-gas-methane", amount=1},
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      "angels-gas-synthesis",
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "OiOiOi"),
    order = "h[coal-cracking-3]",
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-synthesis",
      "angels-gas-oxygen",
      "angels-gas-carbon-dioxide",
      "steam",
      "angels-gas-hydrogen-sulfide",
    }),--[[{
        primary = {r = 210 / 255, g = 120 / 255, b = 210 / 255, a = 0 / 255},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 1, g = 1, b = 0.3, a = 0}
      }]]
  },
  {
    type = "recipe",
    name = "angels-solid-carbon",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-coal",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-coke", amount = 2 },
      { type = "fluid", name = "steam", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-solid-carbon", amount = 3 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-solid-carbon"), 1, angelsmods.petrochem.number_tint),
    order = "d[coke-purification]-a",
    crafting_machine_tint = AF.get_recipe_tints({ { r = 1, g = 1, b = 1 }, { r = 1, g = 1, b = 1 }, "steam" }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-coke-purification-2",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-coal",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-coke", amount = 4 },
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 1 },
      { type = "fluid", name = "angels-gas-nitrogen", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-solid-carbon", amount = 6 },
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 1 },
      { type = "fluid", name = "water", amount = 10 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-solid-carbon"), 2, angelsmods.petrochem.number_tint),
    order = "d[coke-purification]-b",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 1, g = 1, b = 1 },
      "angels-gas-nitrogen",
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
    name = "angels-coal-crushed",
    localised_name = { "item-name.angels-coal-crushed" },
    category = "angels-ore-refining-t1",
    subgroup = "angels-petrochem-coal",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "coal", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-coal-crushed", amount = 2 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-coal-crushed"),
      { 10, 10 },
      0.5
    ),
    order = "b[coal-crushed]",
  },
  {
    type = "recipe",
    name = "angels-solid-coke",
    localised_name = { "item-name.angels-solid-coke" },
    category = "smelting",
    subgroup = "angels-petrochem-coal",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-coal-crushed", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-solid-coke", amount = 2 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-solid-coke"), 1, angelsmods.petrochem.number_tint),
    order = "c[coke]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-coke-sulfur",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-coal",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-coal-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-coke", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-solid-coke"), 2, angelsmods.petrochem.number_tint),
    order = "c[coke]-b",
    crafting_machine_tint = AF.get_recipe_tints({ "angels-water-yellow-waste", "angels-water-purified" }),--[[{
        primary = {r = 1, g = 0.5, b = 0.5, a = 0},
        secondary = {r = 0.9, g = 0.9, b = 0.4, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-pellet-coke",
    localised_name = { "item-name.angels-pellet-coke" },
    category = "crafting",
    subgroup = "angels-petrochem-coal",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-coke", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-pellet-coke", amount = 1 },
    },
    icon = "__angelspetrochemgraphics__/graphics/icons/pellet-coke.png",
    icon_size = 32,
    order = "e[pellet-coke]",
  },
  --ENRICHED WATER
  {
    type = "recipe",
    name = "angels-liquid-water-semiheavy-1",
    localised_name = { "recipe-name.angels-water-enrichment", "1", "0", "7.5" },
    category = "angels-advanced-chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-water-saline", amount = 60 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "fluid", name = "angels-gas-enriched-hydrogen-sulfide", amount = 100, minimum_temperature = 95 },
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 100 },
      { type = "fluid", name = "angels-liquid-water-semiheavy-1", amount = 50, temperature = 100 },
      { type = "fluid", name = "angels-water-green-waste", amount = 60 },
    },
    main_product = "angels-liquid-water-semiheavy-1",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.refining.number_tint),
        {
          icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png",
          icon_size = 72,
        },
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-semiheavy-1"),
    order = "k[water-enrichment]-a[enriching]-a[semiheavy-1]",
  },
  {
    type = "recipe",
    name = "angels-liquid-water-semiheavy-2",
    localised_name = { "recipe-name.angels-water-enrichment", "2", "7.5", "12.5" },
    category = "angels-advanced-chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-water-saline", amount = 60 },
      { type = "fluid", name = "angels-liquid-water-semiheavy-1", amount = 50, maximum_temperature = 30 },
      { type = "fluid", name = "angels-gas-enriched-hydrogen-sulfide", amount = 100, minimum_temperature = 95 },
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 100 },
      { type = "fluid", name = "angels-liquid-water-semiheavy-2", amount = 50, temperature = 100 },
      { type = "fluid", name = "angels-water-green-waste", amount = 60 },
    },
    main_product = "angels-liquid-water-semiheavy-2",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.refining.number_tint),
        {
          icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png",
          icon_size = 72,
        },
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-semiheavy-2"),
    order = "k[water-enrichment]-a[enriching]-b[semiheavy-2]",
  },
  {
    type = "recipe",
    name = "angels-liquid-water-semiheavy-3",
    localised_name = { "recipe-name.angels-water-enrichment", "3", "12.5", "15" },
    category = "angels-advanced-chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-water-saline", amount = 60 },
      { type = "fluid", name = "angels-liquid-water-semiheavy-2", amount = 50, maximum_temperature = 30 },
      { type = "fluid", name = "angels-gas-enriched-hydrogen-sulfide", amount = 100, minimum_temperature = 95 },
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 100 },
      { type = "fluid", name = "angels-liquid-water-semiheavy-3", amount = 50, temperature = 100 },
      { type = "fluid", name = "angels-water-green-waste", amount = 60 },
    },
    main_product = "angels-liquid-water-semiheavy-3",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 3, angelsmods.refining.number_tint),
        {
          icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png",
          icon_size = 72,
        },
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-semiheavy-3"),
    order = "k[water-enrichment]-a[enriching]-c[semiheavy-3]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-1",
    localised_name = { "recipe-name.angels-water-enriched-cooling", "1" },
    category = mods["angelssmelting"] and "angels-cooling" or "chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "angels-liquid-water-semiheavy-1",
        amount = 200,
        ignored_by_stats = 200,
        minimum_temperature = 26,
      },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-water-semiheavy-1", amount = 200, ignored_by_stats = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    main_product = "angels-liquid-water-semiheavy-1",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.refining.number_tint),
        mods["angelssmelting"] and {
          icon = "__angelssmeltinggraphics__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-semiheavy-1"),
    order = "k[water-enrichment]-b[cooling]-a[semiheavy-1]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-2",
    localised_name = { "recipe-name.angels-water-enriched-cooling", "2" },
    category = mods["angelssmelting"] and "angels-cooling" or "chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "angels-liquid-water-semiheavy-2",
        amount = 200,
        ignored_by_stats = 200,
        minimum_temperature = 26,
      },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-water-semiheavy-2", amount = 200, ignored_by_stats = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    main_product = "angels-liquid-water-semiheavy-2",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.refining.number_tint),
        mods["angelssmelting"] and {
          icon = "__angelssmeltinggraphics__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-semiheavy-2"),
    order = "k[water-enrichment]-b[cooling]-b[semiheavy-2]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-3",
    localised_name = { "recipe-name.angels-water-enriched-cooling", "3" },
    category = mods["angelssmelting"] and "angels-cooling" or "chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "angels-liquid-water-semiheavy-3",
        amount = 200,
        ignored_by_stats = 200,
        minimum_temperature = 26,
      },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-water-semiheavy-3", amount = 200, ignored_by_stats = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    main_product = "angels-liquid-water-semiheavy-3",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      },
      "OHdH",
      {
        AF.add_number_icon_layer({}, 3, angelsmods.refining.number_tint),
        mods["angelssmelting"] and {
          icon = "__angelssmeltinggraphics__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-semiheavy-3"),
    order = "k[water-enrichment]-b[cooling]-c[semiheavy-3]",
  },
  {
    type = "recipe",
    name = "angels-liquid-water-heavy",
    category = "angels-petrochem-boiler",
    subgroup = "angels-water-enrichment",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-water-semiheavy-3", amount = 100, maximum_temperature = 30 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-water-heavy", amount = 5, temperature = 100, fluidbox_index = 1 },
      { type = "fluid", name = "steam", amount = 95, temperature = 125, fluidbox_index = 2 },
    },
    main_product = "angels-liquid-water-heavy",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/heavy-water.png", 64 },
      },
      "OHdHd",
      {
        nil,
        { "__angelspetrochemgraphics__/graphics/icons/molecules/semiheavy-water.png", 72 },
      }
    ),
    order = "k[water-enrichment]-a[enriching]-d[heavy]",
  },
  {
    type = "recipe",
    name = "angels-heavy-water-cooling",
    category = mods["angelssmelting"] and "angels-cooling" or "chemistry",
    subgroup = "angels-water-enrichment",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-water-heavy", amount = 100, ignored_by_stats = 100, minimum_temperature = 26 },
      { type = "fluid", name = "angels-water-purified", amount = 25 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-water-heavy", amount = 100, ignored_by_stats = 100, temperature = 25 },
      { type = "fluid", name = "steam", amount = 25, temperature = 125 },
    },
    main_product = "angels-liquid-water-heavy",
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/heavy-water.png", 64 },
      },
      "OHdHd",
      {
        nil,
        mods["angelssmelting"] and {
          icon = "__angelssmeltinggraphics__/graphics/icons/liquid-coolant.png",
          icon_size = 32,
        } or nil,
      }
    ),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-water-heavy"),
    order = "k[water-enrichment]-b[cooling]-d[heavy-water]",
  },
  {
    type = "recipe",
    name = "angels-heavy-water-separation",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-basics",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-water-heavy", amount = 100, maximum_temperature = 30 },
    },
    results = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
      { type = "fluid", name = "angels-gas-deuterium", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/deuterium.png", 64 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
      },
      "OHdHd",
      {
        AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
        { "__angelspetrochemgraphics__/graphics/icons/molecules/heavy-water.png", 64 },
      }
    ),
    order = "a[water-separation]-c[water-heavy]-a",
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-deuterium", "angels-liquid-water-heavy", "angels-gas-oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
  {
    type = "recipe",
    name = "angels-heavy-water-separation-2",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-basics",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-water-heavy", amount = 100, maximum_temperature = 30 },
      { type = "item", name = "angels-electrode", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
      { type = "fluid", name = "angels-gas-deuterium", amount = 60 },
      { type = "item", name = "angels-electrode-used", amount = 1, ignored_by_productivity = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/deuterium.png", 64 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
      },
      "OHdHd",
      {
        AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
        { "__angelspetrochemgraphics__/graphics/icons/molecules/heavy-water.png", 64 },
      }
    ),
    order = "a[water-separation]-c[water-heavy]-b",
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-deuterium", "angels-liquid-water-heavy", "angels-gas-oxygen" }),--[[{
        primary = {r = 1, g = 0, b = 0, a = 0},
        secondary = {r = 1, g = 1, b = 1, a = 0},
        tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
      }]]
  },
})
