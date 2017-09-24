data:extend(
{
  {
    type = "item",
    name = "gold-ore",
    icon = "__angelssmelting__/graphics/icons/ore-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-gold",
    icon = "__angelssmelting__/graphics/icons/processed-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-gold",
    icon = "__angelssmelting__/graphics/icons/pellet-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "cathode-gold",
    icon = "__angelssmelting__/graphics/icons/cathode-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold",
    order = "d",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-chlorauric-acid",
    icon = "__angelssmelting__/graphics/icons/liquid-chlorauric-acid.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 237/255, g = 191/255, b = 29/255},
    flow_color = {r = 237/255, g = 191/255, b = 29/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "item",
    name = "solid-sodium-gold-cyanide",
    icon = "__angelssmelting__/graphics/icons/solid-sodium-gold-cyanide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-gold",
    icon = "__angelssmelting__/graphics/icons/ingot-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold",
    order = "f",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-gold",
    icon = "__angelssmelting__/graphics/icons/molten-gold.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 237/255, g = 191/255, b = 29/255},
    flow_color = {r = 237/255, g = 191/255, b = 29/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-gold",
    icon = "__angelssmelting__/graphics/icons/plate-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold-casting",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-gold",
    icon = "__angelssmelting__/graphics/icons/roll-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold-casting",
    order = "h",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-gold",
    icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold-casting",
    order = "i",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-gold",
    icon = "__angelssmelting__/graphics/icons/wire-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-gold-casting",
    order = "j",
    stack_size = 200
  },
}
)