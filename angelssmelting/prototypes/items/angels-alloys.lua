data:extend(
{
  -- STEEL SMELTING INTERMEDIATE
  -- STEEL SMELTING RESULTS
  {
    type = "item",
    name = "ingot-steel",
    icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
    icon_size = 32,
    subgroup = "angels-iron",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-steel",
    icon = "__angelssmelting__/graphics/icons/powder-steel.png",
    icon_size = 32,
    subgroup = "angels-iron",
    order = "h",
    stack_size = 200
  },
  -- STEEL CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-steel",
    icon = "__angelssmelting__/graphics/icons/molten-steel.png",
    icon_size = 32,
    subgroup = "angels-steel-casting",
    order = "i",
    default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 187/255, g = 192/255, b = 199/255},
    flow_color = {r = 187/255, g = 192/255, b = 199/255},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  },
  {
    type = "item",
    name = "angels-roll-steel",
    icon = "__angelssmelting__/graphics/icons/roll-steel.png",
    icon_size = 32,
    subgroup = "angels-steel-casting",
    order = "j",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-rod-stack-steel",
    icon = "__angelssmelting__/graphics/icons/rod-stack-steel.png",
    icon_size = 32,
    subgroup = "angels-steel-casting",
    order = "k",
    stack_size = 200
  },
  -- STEEL CASTING RESULT
  {
    type = "item",
    name = "angels-plate-steel",
    icon = "__angelssmelting__/graphics/icons/plate-steel.png",
    icon_size = 32,
    subgroup = "angels-steel-casting",
    order = "l",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-rod-steel",
    icon = "__angelssmelting__/graphics/icons/rod-steel.png",
    icon_size = 32,
    subgroup = "angels-steel-casting",
    order = "m",
    stack_size = 200
  },
  -- order n reserved for motor casting (see industries)



  -- SOLDER SMELTING INTERMEDIATE
  -- SOLDER SMELTING RESULTS
  {
    type = "item",
    name = "angels-solder-mixture",
    icon = "__angelssmelting__/graphics/icons/solder-mixture.png",
    icon_size = 32,
    subgroup = "angels-alloys",
    order = "a[solder]-a",
    stack_size = 200
  },
  -- SOLDER CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-solder",
    icon = "__angelssmelting__/graphics/icons/molten-solder-1.png",
    icon_size = 32,
    subgroup = "angels-solder-casting",
    order = "b",
    default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 106/255, g = 138/255, b = 129/255},
    flow_color = {r = 106/255, g = 138/255, b = 129/255},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  },
  {
    type = "item",
    name = "angels-roll-solder",
    icon = "__angelssmelting__/graphics/icons/roll-solder.png",
    icon_size = 32,
    subgroup = "angels-solder-casting",
    order = "c",
    stack_size = 200
  },
  -- SOLDER CASTING RESULT
  {
    type = "item",
    name = "angels-solder",
    icon = "__angelssmelting__/graphics/icons/solder.png",
    icon_size = 32,
    subgroup = "angels-solder-casting",
    order = "d",
    stack_size = 200
  },
}
)