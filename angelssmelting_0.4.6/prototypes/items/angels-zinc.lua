data:extend(
{
  {
    type = "item",
    name = "zinc-ore",
    icon = "__angelssmelting__/graphics/icons/ore-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-zinc",
    icon = "__angelssmelting__/graphics/icons/processed-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-zinc",
    icon = "__angelssmelting__/graphics/icons/pellet-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-zinc-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-zinc-oxide.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "cathode-zinc",
    icon = "__angelssmelting__/graphics/icons/cathode-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-zinc",
    icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc",
    order = "f",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-zinc",
    icon = "__angelssmelting__/graphics/icons/molten-zinc.png",
	icon_size = 32,
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 100/255, g = 183/255, b = 177/255},
    flow_color = {r = 100/255, g = 183/255, b = 177/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-zinc",
    icon = "__angelssmelting__/graphics/icons/plate-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc-casting",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-zinc",
    icon = "__angelssmelting__/graphics/icons/roll-zinc.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-zinc-casting",
    order = "h",
    stack_size = 200
  },
}
)