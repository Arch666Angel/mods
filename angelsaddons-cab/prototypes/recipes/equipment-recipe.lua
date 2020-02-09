local energyInterfaceName = "angels-cab-energy-interface%s"

data:extend{
  {
    type = "recipe",
    name = string.format(energyInterfaceName, "-mk1"),
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {"medium-electric-pole", 1},
      {"red-wire", 10},
      {"green-wire", 10},
      {"electronic-circuit", 20},
    },
    result = string.format(energyInterfaceName, "-mk1"),
  },
  --[[{
    type = "recipe",
    name = string.format(energyInterfaceName, "-mk2"),
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {string.format(energyInterfaceName, "-mk1"), 10},
    },
    result = string.format(energyInterfaceName, "-mk2"),
  },]]
}
