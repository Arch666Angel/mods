local AF = angelsmods.functions
local tints = {
  ["solid-sodium-carbonate"] = AF.fluid_color("Na2CO3"),
  ["solid-alginic-acid"] = AF.fluid_color("C6H8O6"),
  ["algae-brown"] = { r = 225 / 255, g = 160 / 255, b = 106 / 255 },
  ["algae-green"] = { r = 84 / 255, g = 118 / 255, b = 76 / 255 },
  ["algae-blue"] = { r = 89 / 255, g = 89 / 255, b = 188 / 255 },
  ["algae-red"] = { r = 188 / 255, g = 89 / 255, b = 89 / 255 },
}
data:extend({
  --BROWN
  {
    type = "recipe",
    name = "algae-brown",
    localised_name = { "item-name.algae-brown" },
    category = "bio-processing-2",
    subgroup = "bio-processing-brown",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "fluid", name = "water-saline", amount = 100 },
    },
    results = {
      { type = "item", name = "algae-brown", amount = 40 },
    },
    allow_productivity = true,
    icon_size = 32,
    order = "a[algae-brown]",
  },
  {
    type = "recipe",
    name = "algae-brown-burning", --burn for alkali (lithium, iod, kalzium)
    category = "smelting",
    subgroup = "bio-processing-brown",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "algae-brown", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    icon_size = 32,
    order = "b[algae-brown-burning]",
  },
  {
    type = "recipe",
    name = "algae-brown-burning-wash",
    localised_name = { "item-name.solid-sodium-carbonate" },
    category = "liquifying",
    subgroup = "bio-processing-brown",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "algae-brown", amount = 20 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-sodium-carbonate", amount = 1 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      tints["solid-sodium-carbonate"],
      tints["algae-brown"],
      "water-purified",
      tints["solid-sodium-carbonate"],
    }),
    order = "b[algae-brown-burning-wash]",
  },
  {
    type = "recipe",
    name = "solid-alginic-acid",
    localised_name = { "item-name.solid-alginic-acid" },
    category = "crafting",
    subgroup = "bio-processing-brown",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "algae-brown", amount = 10 },
    },
    results = {
      { type = "item", name = "solid-alginic-acid", amount = 2 },
    },
    icon_size = 32,
    order = "c[solid-alginic-acid]",
  },
  --[[{
      type = "recipe",
      name = "circuit-wood-fiber-board",
      icon = "__angelsbioprocessinggraphics__/graphics/icons/wood-fiber-board.png",
      category = "advanced-crafting",
      subgroup = "bio-processing-brown",
      enabled = false,
      energy_required = 4,
      ingredients =
      {
        {type="item", name="cellulose-fiber", amount=4},
        {type="item", name="solid-alginic-acid", amount=1},
      },
      results=
      {
        {type="item", name="circuit-wood-fiber-board", amount=3},
      },
      icon_size = 32,
      order = "c[circuit-wood-fiber-board]",
    },]]

  --GREEN
  {
    type = "recipe",
    name = "algae-green-simple",
    category = "bio-processing",
    subgroup = "bio-processing-green",
    enabled = false,
    energy_required = 30,
    main_product = "algae-green",
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
    },
    results = {
      { type = "item", name = "algae-green", amount = 25 },
      { type = "item", name = "algae-brown", amount = 5 },
    },
    allow_productivity = true,
    icons = AF.add_number_icon_layer({
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/algae-green.png",
        icon_size = 32,
      },
    }, 1, angelsmods.bioprocessing.number_tint),
    order = "aa[algae-farming]",
  },
  {
    type = "recipe",
    name = "algae-green",
    localised_name = { "item-name.algae-green" },
    category = "bio-processing-2",
    subgroup = "bio-processing-green",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "fluid", name = "water-mineralized", amount = 80 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 80 },
    },
    results = {
      { type = "item", name = "algae-green", amount = 50 },
    },
    allow_productivity = true,
    icons = AF.add_number_icon_layer({
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/algae-green.png",
        icon_size = 32,
      },
    }, 2, angelsmods.bioprocessing.number_tint),
    order = "ab[algae-farming]",
  },
  {
    type = "recipe",
    name = "cellulose-fiber-algae",
    category = "crafting",
    subgroup = "bio-processing-green",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "algae-green", amount = 10 },
    },
    results = {
      { type = "item", name = "cellulose-fiber", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/cellulose-fiber-algae.png",
    icon_size = 32,
    order = "b[cellulose-fiber-algae]",
  },
  {
    type = "recipe",
    name = "gas-methanol-from-wood",
    category = "liquifying",
    subgroup = "bio-processing-green",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "cellulose-fiber", amount = 20 },
    },
    results = {
      { type = "fluid", name = "gas-methanol", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methanol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_fluid_recipe_tint("gas-methanol"),
    order = "k[gas-methanol-from-wood]",
  },
  --BLUE
  {
    type = "recipe",
    name = "algae-blue",
    localised_name = { "item-name.algae-blue" },
    category = "bio-processing-4",
    subgroup = "bio-processing-blue",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "fluid", name = "water-yellow-waste", amount = 100 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 100 },
    },
    results = {
      { type = "item", name = "algae-blue", amount = 40 },
    },
    allow_productivity = true,
    icon = "__angelsbioprocessinggraphics__/graphics/icons/algae-blue.png",
    icon_size = 32,
    order = "a[algae-blue]",
  },
  {
    type = "recipe",
    name = "blue-fiber-algae",
    localised_name = { "item-name.blue-cellulose-fiber" },
    category = "crafting",
    subgroup = "bio-processing-blue",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "algae-blue", amount = 10 },
    },
    results = {
      { type = "item", name = "blue-cellulose-fiber", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/blue-cellulose-fiber.png",
    icon_size = 32,
    order = "b[blue-fiber-algae]",
  },
  {
    type = "recipe",
    name = "gas-ammonia-from-blue-fiber",
    localised_name = { "recipe-name.gas-ammonia" },
    category = "liquifying",
    subgroup = "bio-processing-blue",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "blue-cellulose-fiber", amount = 20 },
    },
    results = {
      { type = "fluid", name = "gas-ammonia", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ammonia.png", 72 },
    }, "NHH"),
    crafting_machine_tint = AF.get_fluid_recipe_tint("gas-ammonia"),
    order = "c[gas-ammonia-from-blue-fiber]",
  },
  --RED
  {
    type = "recipe",
    name = "algae-red",
    localised_name = { "item-name.algae-red" },
    category = "bio-processing-3",
    subgroup = "bio-processing-red",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "fluid", name = "thermal-water", amount = 100 },
      { type = "fluid", name = "gas-ammonia", amount = 100 },
    },
    results = {
      { type = "item", name = "algae-red", amount = 40 },
    },
    allow_productivity = true,
    icon = "__angelsbioprocessinggraphics__/graphics/icons/algae-red.png",
    icon_size = 32,
    order = "a[algae-red]",
  },
  {
    type = "recipe",
    name = "red-fiber-algae",
    localised_name = { "item-name.red-cellulose-fiber" },
    category = "crafting",
    subgroup = "bio-processing-red",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "algae-red", amount = 10 },
    },
    results = {
      { type = "item", name = "red-cellulose-fiber", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/red-cellulose-fiber.png",
    icon_size = 32,
    order = "b[red-fiber-algae]",
  },
  {
    type = "recipe",
    name = "solid-calcium-carbonate",
    localised_name = { "item-name.solid-calcium-carbonate" },
    category = "liquifying",
    subgroup = "bio-processing-red",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "red-cellulose-fiber", amount = 20 },
    },
    results = {
      { type = "item", name = "solid-calcium-carbonate", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/solid-calcium-carbonate.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      tints["solid-calcium-carbonate"],
      tints["algae-red"],
      tints["solid-calcium-carbonate"],
      tints["algae-red"],
    }),
    order = "c[solid-calcium-carbonate]",
  },
})
