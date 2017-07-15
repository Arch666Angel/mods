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
    base_color = {r = 0.1, g = 0.1, b = 0.1},
    flow_color = {r = 0.1, g = 0.1, b = 0.1},
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
    base_color = {r = 0.1, g = 0.1, b = 0.1},
    flow_color = {r = 0.1, g = 0.1, b = 0.1},
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
--BRONZE
  {
    type = "fluid",
    name = "liquid-molten-bronze",
    icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 224/256, g = 155/256, b = 58/256},
    flow_color = {r = 224/256, g = 155/256, b = 58/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-bronze",
    icon = "__angelssmelting__/graphics/icons/plate-bronze.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "a",
    stack_size = 200
  },
--BRASS
  {
    type = "fluid",
    name = "liquid-molten-brass",
    icon = "__angelssmelting__/graphics/icons/molten-brass.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 204/256, g = 153/256, b = 102/256},
    flow_color = {r = 204/256, g = 153/256, b = 102/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-brass",
    icon = "__angelssmelting__/graphics/icons/plate-brass.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "b",
    stack_size = 200
  },
--ELECTRUM
  {
    type = "fluid",
    name = "liquid-molten-electrum",
    icon = "__angelssmelting__/graphics/icons/molten-electrum.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 143/256, g = 126/256, b = 93/256},
    flow_color = {r = 143/256, g = 126/256, b = 93/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-electrum",
    icon = "__angelssmelting__/graphics/icons/plate-electrum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "c",
    stack_size = 200
  },
--GUNMETAL
  {
    type = "fluid",
    name = "liquid-molten-gunmetal",
    icon = "__angelssmelting__/graphics/icons/molten-gunmetal.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 224/256, g = 103/256, b = 70/256},
    flow_color = {r = 224/256, g = 103/256, b = 70/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-gunmetal",
    icon = "__angelssmelting__/graphics/icons/plate-gunmetal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "d",
    stack_size = 200
  },
--INVAR
  {
    type = "fluid",
    name = "liquid-molten-invar",
    icon = "__angelssmelting__/graphics/icons/molten-invar.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 95/256, g = 125/256, b = 122/256},
    flow_color = {r = 95/256, g = 125/256, b = 122/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-invar",
    icon = "__angelssmelting__/graphics/icons/plate-invar.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "e",
    stack_size = 200
  },
--COBALT STEEL
  {
    type = "fluid",
    name = "liquid-molten-cobalt-steel",
    icon = "__angelssmelting__/graphics/icons/molten-cobalt-steel.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 61/256, g = 107/256, b = 153/256},
    flow_color = {r = 61/256, g = 107/256, b = 153/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-cobalt-steel",
    icon = "__angelssmelting__/graphics/icons/plate-cobalt-steel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "f",
    stack_size = 200
  },
--NITINOL
  {
    type = "fluid",
    name = "liquid-molten-nitinol",
    icon = "__angelssmelting__/graphics/icons/molten-nitinol.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 106/256, g = 92/256, b = 153/256},
    flow_color = {r = 106/256, g = 92/256, b = 153/256},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-nitinol",
    icon = "__angelssmelting__/graphics/icons/plate-nitinol.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-alloys-casting",
    order = "g",
    stack_size = 200
  },
}
)