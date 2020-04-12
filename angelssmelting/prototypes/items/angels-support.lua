data:extend(
{
  --COOLANT
  {
    type = "fluid",
    name = "liquid-coolant",
    icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
    icon_size = 32,
    subgroup = "water-treatment-fluid",
    order = "fa",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 109/255, g = 136/255, b = 179/255},
    flow_color = {r = 109/255, g = 136/255, b = 179/255},
    max_temperature = 300,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-coolant-used",
    icon = "__angelssmelting__/graphics/icons/liquid-coolant-used.png",
    icon_size = 32,
    subgroup = "water-treatment-fluid",
    order = "fb",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 68/255, g = 85/255, b = 112/255},
    flow_color = {r = 68/255, g = 85/255, b = 112/255},
    max_temperature = 300,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  },
  --MOLDS
  {
    type = "item",
    name = "mold-expendable",
    icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
    icon_size = 32,
    subgroup = "angels-mold-casting",
    order = "a[expendable]",
    stack_size = 200
  },
  {
    type = "item",
    name = "mold-non-expendable",
    icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
    icon_size = 32,
    subgroup = "angels-mold-casting",
    order = "b[non-expendable]-a[new]",
    stack_size = 200
  },
  {
    type = "item",
    name = "spent-mold-non-expendable",
    icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
    icon_size = 32,
    subgroup = "angels-mold-casting",
    order = "b[non-expendable]-b[used]",
    stack_size = 200
  },
}
)