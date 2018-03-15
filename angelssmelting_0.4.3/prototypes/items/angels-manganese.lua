data:extend(
{
  {
    type = "item",
    name = "manganese-ore",
    icon = "__angelssmelting__/graphics/icons/ore-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-manganese",
    icon = "__angelssmelting__/graphics/icons/processed-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-manganese",
    icon = "__angelssmelting__/graphics/icons/pellet-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-manganese-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-manganese-oxide.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "cathode-manganese",
    icon = "__angelssmelting__/graphics/icons/cathode-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-manganese",
    icon = "__angelssmelting__/graphics/icons/ingot-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese",
    order = "e",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-manganese",
    icon = "__angelssmelting__/graphics/icons/molten-manganese.png",
	icon_size = 32,
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 242/255, g = 97/255, b = 97/255},
    flow_color = {r = 242/255, g = 97/255, b = 97/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-manganese",
    icon = "__angelssmelting__/graphics/icons/plate-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese-casting",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-manganese",
    icon = "__angelssmelting__/graphics/icons/roll-manganese.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-manganese-casting",
    order = "g",
    stack_size = 200
  },
}
)