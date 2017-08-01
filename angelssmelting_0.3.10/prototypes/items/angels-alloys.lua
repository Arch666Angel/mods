data:extend(
{
--STEEL
  {
    type = "item",
    name = "ingot-steel",
    icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron",
    order = "f",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-steel",
    icon = "__angelssmelting__/graphics/icons/molten-steel.png",
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
    name = "powder-steel",
    icon = "__angelssmelting__/graphics/icons/powder-steel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-steel-casting",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-plate-steel",
    icon = "__angelssmelting__/graphics/icons/plate-steel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-steel-casting",
    order = "h",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-steel",
    icon = "__angelssmelting__/graphics/icons/roll-steel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-steel-casting",
    order = "i",
    stack_size = 200
  },
--SOLDER
  {
    type = "fluid",
    name = "liquid-molten-solder",
    icon = "__angelssmelting__/graphics/icons/molten-solder-1.png",
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
    name = "angels-solder",
    icon = "__angelssmelting__/graphics/icons/solder.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-solder-casting",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-solder",
    icon = "__angelssmelting__/graphics/icons/roll-solder.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-solder-casting",
    order = "b",
    stack_size = 200
  },
}
)