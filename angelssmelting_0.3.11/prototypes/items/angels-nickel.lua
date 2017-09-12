data:extend(
{
  {
    type = "item",
    name = "nickel-ore",
    icon = "__angelssmelting__/graphics/icons/ore-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-nickel",
    icon = "__angelssmelting__/graphics/icons/processed-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-nickel",
    icon = "__angelssmelting__/graphics/icons/pellet-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "cathode-nickel",
    icon = "__angelssmelting__/graphics/icons/cathode-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-nickel-carbonyl",
    icon = "__angelssmelting__/graphics/icons/solid-nickel-carbonyl.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-nickel",
    icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-nickel",
    icon = "__angelssmelting__/graphics/icons/powder-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel",
    order = "g",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-nickel",
    icon = "__angelssmelting__/graphics/icons/molten-nickel.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 60/255, g = 125/255, b = 119/255},
    flow_color = {r = 60/255, g = 125/255, b = 119/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-nickel",
    icon = "__angelssmelting__/graphics/icons/plate-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel-casting",
    order = "h",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-nickel",
    icon = "__angelssmelting__/graphics/icons/roll-nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-nickel-casting",
    order = "i",
    stack_size = 200
  },
}
)