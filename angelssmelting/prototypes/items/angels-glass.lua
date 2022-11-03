data:extend({
  -- ORE
  -- SMELTING INTERMEDIATE
  -- SMELTING RESULTS
  {
    type = "item",
    name = "solid-glass-mixture",
    icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
    icon_size = 32,
    subgroup = "angels-glass",
    order = "a",
    stack_size = 200,
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-glass",
    icon = "__angelssmelting__/graphics/icons/molten-glass.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-glass-casting",
    order = "b",
    default_temperature = 1500,
    heat_capacity = "0KJ",
    base_color = { r = 130 / 255, g = 127 / 255, b = 127 / 255 },
    flow_color = { r = 130 / 255, g = 127 / 255, b = 127 / 255 },
    max_temperature = 1500,
    auto_barrel = false,
  },
  {
    type = "item",
    name = "angels-coil-glass-fiber",
    icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-glass-casting",
    order = "c",
    stack_size = 200,
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-glass",
    icon = "__angelssmelting__/graphics/icons/plate-glass.png",
    icon_size = 32,
    subgroup = "angels-glass-casting",
    order = "d",
    stack_size = 200,
  },
  -- order e is reserved for glass fiber board
})
