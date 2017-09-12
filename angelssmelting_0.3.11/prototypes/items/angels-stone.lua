data:extend(
{
  {
    type = "item",
    name = "solid-lime",
    icon = "__angelssmelting__/graphics/icons/solid-lime.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-stone",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-cement",
    icon = "__angelssmelting__/graphics/icons/solid-cement.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-stone",
    order = "c",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-concrete",
    icon = "__angelssmelting__/graphics/icons/molten-concrete.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 99/255, g = 99/255, b = 99/255},
    flow_color = {r = 99/255, g = 99/255, b = 99/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "clay-brick-raw",
    icon = "__angelssmelting__/graphics/icons/brick-clay-raw.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-stone",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "clay-brick",
    icon = "__angelssmelting__/graphics/icons/brick-clay.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-stone",
    order = "f",
    stack_size = 1000,
    place_as_tile =
    {
      result = "clay-bricks",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
  {
    type = "item",
    name = "concrete-brick",
    icon = "__angelssmelting__/graphics/icons/brick-concrete.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-stone",
    order = "g",
    stack_size = 1000,
    place_as_tile =
    {
      result = "concrete",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
  {
    type = "item",
    name = "reinforced-concrete-brick",
    icon = "__angelssmelting__/graphics/icons/brick-reinforced.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-stone",
    order = "h",
    stack_size = 1000,
    place_as_tile =
    {
      result = "concrete",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
}
)