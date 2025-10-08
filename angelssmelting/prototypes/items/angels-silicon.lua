local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  -- ORE
  {
    type = "item",
    name = "angels-quartz",
    icon = "__angelssmeltinggraphics__/graphics/icons/ore-silica.png",
    icon_size = 32,
    subgroup = "angels-silicon",
    order = "a",
    stack_size = 200,
  },
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "angels-processed-silica",
    icon = "__angelssmeltinggraphics__/graphics/icons/processed-silica.png",
    icon_size = 64,
    subgroup = "angels-silicon",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-pellet-silica",
    icon = "__angelssmeltinggraphics__/graphics/icons/pellet-silica.png",
    icon_size = 64,
    subgroup = "angels-silicon",
    order = "c",
    stack_size = 200,
  },
  {
    type = "fluid",
    name = "angels-liquid-trichlorosilane",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "HCl[font=default-tiny-bold]3[/font]Si" }
      or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelssmeltinggraphics__/graphics/icons/molecule-trichlorosilane.png", 72 },
      "SiHCl"
    ),
    subgroup = "angels-silicon",
    order = "d",
    default_temperature = 0,
    heat_capacity = "0kJ",
    base_color = { r = 209 / 255, g = 209 / 255, b = 209 / 255 },
    flow_color = { r = 209 / 255, g = 209 / 255, b = 209 / 255 },
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-silane",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "H[font=default-tiny-bold]4[/font]Si" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelssmeltinggraphics__/graphics/icons/molecule-silane.png", 72 },
      "SiHH"
    ),
    subgroup = "angels-silicon",
    order = "e",
    default_temperature = 0,
    heat_capacity = "0kJ",
    base_color = { r = 209 / 255, g = 209 / 255, b = 209 / 255 },
    flow_color = { r = 209 / 255, g = 209 / 255, b = 209 / 255 },
    max_temperature = 0,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "angels-ingot-silicon",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-silicon.png",
    icon_size = 64,
    subgroup = "angels-silicon",
    order = "f",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-powder-silicon",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-silica.png",
    icon_size = 64,
    subgroup = "angels-silicon",
    order = "g",
    stack_size = 200,
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "angels-liquid-molten-silicon",
    icon = "__angelssmeltinggraphics__/graphics/icons/molten-silicon.png",
    icon_size = 64,
    subgroup = "angels-silicon-casting",
    order = "h",
    default_temperature = 1414,
    heat_capacity = "0kJ",
    base_color = { r = 209 / 255, g = 209 / 255, b = 209 / 255 },
    flow_color = { r = 209 / 255, g = 209 / 255, b = 209 / 255 },
    max_temperature = 1414,
    auto_barrel = false,
  },
  {
    type = "item",
    name = "angels-mono-silicon-seed",
    icon = "__angelssmeltinggraphics__/graphics/icons/silicon-seed.png",
    icon_size = 32,
    subgroup = "angels-silicon-casting",
    order = "i",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-quartz-crucible",
    icon = "__angelssmeltinggraphics__/graphics/icons/silicon-crucible.png",
    icon_size = 32,
    subgroup = "angels-silicon-casting",
    order = "j",
    stack_size = 200,
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-mono-silicon",
    icon = "__angelssmeltinggraphics__/graphics/icons/silicon-mono.png",
    icon_size = 32,
    subgroup = "angels-silicon-casting",
    order = "k",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-silicon-wafer",
    icon = "__angelssmeltinggraphics__/graphics/icons/silicon-wafer.png",
    icon_size = 32,
    subgroup = "angels-silicon-casting",
    order = "l",
    stack_size = 200,
  },
})
