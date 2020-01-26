data:extend(
{
  --SULFUR
  {
    type = "fluid",
    name = "gas-hydrogen-sulfide",
    icon = "__angelspetrochem__/graphics/icons/gas-hydrogen-sulfide.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 1, g = 1, b = 0.3},
    flow_color = {r = 1, g = 1, b = 0.3},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "gas-sulfur-dioxide",
    icon = "__angelspetrochem__/graphics/icons/gas-sulfur-dioxide.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.9, g = 0.9, b = 0.2},
    flow_color = {r = 0.9, g = 0.9, b = 0.2},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-sulfuric-acid",
    icon = "__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.8, g = 0.8, b = 0.1},
    flow_color = {r = 0.8, g = 0.8, b = 0.1},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "item",
    name = "solid-calcium-sulfate",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-sulfate.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-calcium-sulfate]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-sulfate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "filter-lime",
    icon = "__angelspetrochem__/graphics/icons/filter-lime.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "filter-lime-used",
    icon = "__angelspetrochem__/graphics/icons/filter-lime-used.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "c",
    stack_size = 200
  },
}
)
