data:extend(
{
  {
    type = "item",
    name = "platinum-ore",
    icon = "__angelssmelting__/graphics/icons/ore-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-platinum",
    icon = "__angelssmelting__/graphics/icons/processed-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-platinum",
    icon = "__angelssmelting__/graphics/icons/pellet-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-ammonium-chloroplatinate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-chloroplatinate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-platinum",
    icon = "__angelssmelting__/graphics/icons/ingot-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum",
    order = "e",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-hexachloroplatinic-acid",
    icon = "__angelssmelting__/graphics/icons/liquid-hexachloroplatinic-acid.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 242/255, g = 212/255, b = 194/255},
    flow_color = {r = 242/255, g = 212/255, b = 194/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-molten-platinum",
    icon = "__angelssmelting__/graphics/icons/molten-platinum.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 242/255, g = 212/255, b = 194/255},
    flow_color = {r = 242/255, g = 212/255, b = 194/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-platinum",
    icon = "__angelssmelting__/graphics/icons/plate-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum-casting",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-platinum",
    icon = "__angelssmelting__/graphics/icons/roll-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum-casting",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-platinum",
    icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum-casting",
    order = "h",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-platinum",
    icon = "__angelssmelting__/graphics/icons/wire-platinum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-platinum-casting",
    order = "i",
    stack_size = 200
  },
}
)