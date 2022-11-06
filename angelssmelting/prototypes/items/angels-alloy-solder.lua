data:extend({
  -- SOLDER SMELTING INTERMEDIATE
  -- SOLDER SMELTING RESULTS
  {
    type = "item",
    name = "angels-solder-mixture",
    icon = "__angelssmelting__/graphics/icons/solder-mixture.png",
    icon_size = 32,
    subgroup = "angels-alloys",
    order = "a[solder]-a",
    stack_size = 200,
  },
  -- SOLDER CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-solder",
    icon = "__angelssmelting__/graphics/icons/molten-solder.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-solder-casting",
    order = "b",
    default_temperature = 200,
    heat_capacity = "0KJ",
    base_color = { r = 106 / 255, g = 138 / 255, b = 129 / 255 },
    flow_color = { r = 106 / 255, g = 138 / 255, b = 129 / 255 },
    max_temperature = 200,
    auto_barrel = false,
  },
  {
    type = "item",
    name = "angels-roll-solder",
    icon = "__angelssmelting__/graphics/icons/roll-solder.png",
    icon_size = 32,
    subgroup = "angels-solder-casting",
    order = "c",
    stack_size = 200,
  },
  -- SOLDER CASTING RESULT
  {
    type = "item",
    name = "angels-solder",
    icon = "__angelssmelting__/graphics/icons/solder.png",
    icon_size = 32,
    subgroup = "angels-solder-casting",
    order = "d",
    stack_size = 200,
  },
})
