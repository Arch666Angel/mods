local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  -- ORE
  {
    type = "item",
    name = "angels-rutile-ore",
    icon = "__angelssmeltinggraphics__/graphics/icons/ore-rutile.png",
    icon_size = 32,
    subgroup = "angels-titanium",
    order = "a",
    stack_size = 200,
  },
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "angels-processed-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/processed-titanium.png",
    icon_size = 64,
    subgroup = "angels-titanium",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-pellet-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/pellet-titanium.png",
    icon_size = 64,
    subgroup = "angels-titanium",
    order = "c",
    stack_size = 200,
  },
  {
    type = "fluid",
    name = "angels-liquid-titanium-tetrachloride",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "TiCl[font=default-tiny-bold]4[/font]" }
      or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelssmeltinggraphics__/graphics/icons/molecule-titanium-tetrachloride.png", 72 },
      "SiClCl"
    ),
    subgroup = "angels-titanium",
    order = "d",
    default_temperature = 1668,
    heat_capacity = "1kJ",
    base_color = { r = 126 / 255, g = 98 / 255, b = 123 / 255 },
    flow_color = { r = 126 / 255, g = 98 / 255, b = 123 / 255 },
    max_temperature = 1668,
  },
  {
    type = "item",
    name = "angels-sponge-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/sponge-titanium.png",
    icon_size = 32,
    subgroup = "angels-titanium",
    order = "e",
    stack_size = 200,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "angels-ingot-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-titanium.png",
    icon_size = 64,
    subgroup = "angels-titanium",
    order = "f",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-powder-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-titanium.png",
    icon_size = 64,
    subgroup = "angels-titanium",
    order = "g",
    stack_size = 200,
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "angels-liquid-molten-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/molten-titanium.png",
    icon_size = 64,
    subgroup = "angels-titanium-casting",
    order = "h",
    default_temperature = 0,
    heat_capacity = "0kJ",
    base_color = { r = 126 / 255, g = 98 / 255, b = 123 / 255 },
    flow_color = { r = 126 / 255, g = 98 / 255, b = 123 / 255 },
    max_temperature = 0,
    auto_barrel = false,
  },
  {
    type = "item",
    name = "angels-roll-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-titanium.png",
    icon_size = 64,
    subgroup = "angels-titanium-casting",
    order = "i",
    stack_size = 200,
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-titanium",
    icon = "__angelssmeltinggraphics__/graphics/icons/plate-titanium.png",
    icon_size = 32,
    subgroup = "angels-titanium-casting",
    order = "j",
    stack_size = 200,
  },
  -- order k reserved for motor casting (see industries)
})
