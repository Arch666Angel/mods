data:extend(
{
  {
    type = "item",
    name = "processed-iron",
    icon = "__angelssmelting__/graphics/icons/processed-iron.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-iron",
    icon = "__angelssmelting__/graphics/icons/pellet-iron.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-iron-hydroxide",
    icon = "__angelssmelting__/graphics/icons/solid-iron-hydroxide.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-iron",
    icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-iron",
    icon = "__angelssmelting__/graphics/icons/powder-iron.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron",
    order = "ea",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-iron",
    icon = "__angelssmelting__/graphics/icons/molten-iron.png",
	icon_size = 32,
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 125/255, g = 145/255, b = 161/255},
    flow_color = {r = 125/255, g = 145/255, b = 161/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-iron",
    icon = "__angelssmelting__/graphics/icons/plate-iron.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron-casting",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-iron",
    icon = "__angelssmelting__/graphics/icons/roll-iron.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-iron-casting",
    order = "h",
    stack_size = 200
  },
}
)