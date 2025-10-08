local AF = angelsmods.functions
local tints = {
  ["angels-solid-sodium-carbonate"] = AF.fluid_color("Na2CO3"),
  ["angels-solid-alginic-acid"] = AF.fluid_color("C6H8O6"),
  ["angels-algae-brown"] = { r = 225 / 255, g = 160 / 255, b = 106 / 255 },
  ["angels-algae-green"] = { r = 84 / 255, g = 118 / 255, b = 76 / 255 },
  ["angels-algae-blue"] = { r = 89 / 255, g = 89 / 255, b = 188 / 255 },
  ["angels-algae-red"] = { r = 188 / 255, g = 89 / 255, b = 89 / 255 },
}
data:extend({
  --BROWN
  {
    type = "recipe",
    name = "angels-algae-brown",
    category = "angels-bio-processing-2",
    subgroup = "angels-bio-processing-brown",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "fluid", name = "angels-water-saline", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-algae-brown", amount = 40 },
    },
    allow_productivity = true,
    icon_size = 32,
    order = "a[algae-brown]",
  },
  {
    type = "recipe",
    name = "angels-algae-brown-burning",
    localised_name = { "item-name.angels-solid-lithium" },
    category = "smelting",
    subgroup = "angels-bio-processing-brown",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "angels-algae-brown", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-lithium", amount = 2 },
    },
    icon_size = 32,
    order = "b[algae-brown-burning]",
  },
  {
    type = "recipe",
    name = "angels-algae-brown-burning-wash",
    localised_name = { "item-name.angels-solid-sodium-carbonate" },
    category = "angels-liquifying",
    subgroup = "angels-bio-processing-brown",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "angels-algae-brown", amount = 20 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 1 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      tints["angels-solid-sodium-carbonate"],
      tints["angels-algae-brown"],
      "angels-water-purified",
      tints["angels-solid-sodium-carbonate"],
    }),
    order = "b[algae-brown-burning-wash]",
  },
  {
    type = "recipe",
    name = "angels-solid-alginic-acid",
    category = "crafting",
    subgroup = "angels-bio-processing-brown",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "angels-algae-brown", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-solid-alginic-acid", amount = 2 },
    },
    icon_size = 32,
    order = "c[solid-alginic-acid]",
  },

  --GREEN
  {
    type = "recipe",
    name = "angels-algae-green-simple",
    category = "angels-bio-processing",
    subgroup = "angels-bio-processing-green",
    enabled = false,
    energy_required = 30,
    main_product = "angels-algae-green",
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-algae-green", amount = 25 },
      { type = "item", name = "angels-algae-brown", amount = 5 },
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
    name = "angels-algae-green",
    category = "angels-bio-processing-2",
    subgroup = "angels-bio-processing-green",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "fluid", name = "angels-water-mineralized", amount = 80 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 80 },
    },
    results = {
      { type = "item", name = "angels-algae-green", amount = 50 },
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
    name = "angels-cellulose-fiber",
    category = "crafting",
    subgroup = "angels-bio-processing-green",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "angels-algae-green", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-cellulose-fiber", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/cellulose-fiber-algae.png",
    icon_size = 32,
    order = "b[cellulose-fiber-algae]",
  },
  {
    type = "recipe",
    name = "angels-gas-methanol-from-wood",
    category = "angels-liquifying",
    subgroup = "angels-bio-processing-green",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-cellulose-fiber", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methanol", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methanol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-gas-methanol"),
    order = "k[gas-methanol-from-wood]",
  },
  --BLUE
  {
    type = "recipe",
    name = "angels-algae-blue",
    category = "angels-bio-processing-4",
    subgroup = "angels-bio-processing-blue",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "fluid", name = "angels-water-yellow-waste", amount = 100 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-algae-blue", amount = 40 },
    },
    allow_productivity = true,
    icon = "__angelsbioprocessinggraphics__/graphics/icons/algae-blue.png",
    icon_size = 32,
    order = "a[algae-blue]",
  },
  {
    type = "recipe",
    name = "angels-blue-cellulose-fiber",
    category = "crafting",
    subgroup = "angels-bio-processing-blue",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "angels-algae-blue", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-blue-cellulose-fiber", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/blue-cellulose-fiber.png",
    icon_size = 32,
    order = "b[blue-fiber-algae]",
  },
  {
    type = "recipe",
    name = "angels-gas-ammonia-from-blue-fiber",
    localised_name = { "fluid-name.angels-gas-ammonia" },
    category = "angels-liquifying",
    subgroup = "angels-bio-processing-blue",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-blue-cellulose-fiber", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ammonia.png", 72 },
    }, "NHH"),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-gas-ammonia"),
    order = "c[gas-ammonia-from-blue-fiber]",
  },
  --RED
  {
    type = "recipe",
    name = "angels-algae-red",
    category = "angels-bio-processing-3",
    subgroup = "angels-bio-processing-red",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "fluid", name = "angels-thermal-water", amount = 100 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-algae-red", amount = 40 },
    },
    allow_productivity = true,
    icon = "__angelsbioprocessinggraphics__/graphics/icons/algae-red.png",
    icon_size = 32,
    order = "a[algae-red]",
  },
  {
    type = "recipe",
    name = "angels-red-cellulose-fiber",
    category = "crafting",
    subgroup = "angels-bio-processing-red",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "angels-algae-red", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-red-cellulose-fiber", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/red-cellulose-fiber.png",
    icon_size = 32,
    order = "b[red-fiber-algae]",
  },
  {
    type = "recipe",
    name = "angels-solid-calcium-carbonate",
    category = "angels-liquifying",
    subgroup = "angels-bio-processing-red",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-red-cellulose-fiber", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-calcium-carbonate", amount = 5 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/solid-calcium-carbonate.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      tints["angels-solid-calcium-carbonate"],
      tints["angels-algae-red"],
      tints["angels-solid-calcium-carbonate"],
      tints["angels-algae-red"],
    }),
    order = "c[solid-calcium-carbonate]",
  },
})
