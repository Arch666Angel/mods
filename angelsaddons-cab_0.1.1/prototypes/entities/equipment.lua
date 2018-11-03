data:extend(
{
  --CAB DEPLOYMENT
  {
    type = "item",
    name = "angels-cab-energy-interface-vequip",
    icon = "__angelsaddons-cab__/graphics/icons/cab-energy-interface-ico.png",
    icon_size = 32,
    placed_as_equipment_result = "angels-cab-energy-interface-vequip",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-cab",
    order = "e[angels-cab-energy-interface-vequip]-a",
    stack_size = 50,
    default_request_amount = 10
  },
  {
    type = "night-vision-equipment",
    name = "angels-cab-energy-interface-vequip",
    sprite =
    {
      filename = "__angelsaddons-cab__/graphics/equipment/cab-energy-interface-vequip.png",
      width = 96,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = data.raw["electric-energy-interface"]["angels-cab-energy-interface"].energy_source.buffer_capacity,
      input_flow_limit = data.raw["electric-energy-interface"]["angels-cab-energy-interface"].energy_source.output_flow_limit,
      output_flow_limit = data.raw["electric-energy-interface"]["angels-cab-energy-interface"].energy_source.input_flow_limit,
      drain = data.raw["electric-energy-interface"]["angels-cab-energy-interface"].energy_source.drain,
      usage_priority = "primary-input",
    },
    energy_input = "0kW",
    tint = {r = 1, g = 1, b = 1, a = 0},
    desaturation_params =
    {
      smoothstep_min = 0.1,
      smoothstep_max = 0.7,
      minimum = 0.3,
      maximum = 1.0
    },
    light_params =
    {
      smoothstep_min = 0.1,
      smoothstep_max = 0.7,
      minimum = 0.666,
      maximum = 1.0
    },
    categories = {"angels-cab"},
    darkness_to_turn_on = 0
  },
}
)
