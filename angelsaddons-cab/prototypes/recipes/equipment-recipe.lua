local energyInterfaceName = "angels-cab-energy-interface%s"

data:extend({
  {
    type = "recipe",
    name = string.format(energyInterfaceName, "-mk1"),
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "medium-electric-pole", amount = 1 },
      { type = "item", name = "copper-cable", amount = 20 },
      { type = "item", name = "electronic-circuit", amount = 20 },
    },
    results = {{ type = "item", name = string.format(energyInterfaceName, "-mk1"), amount = 1, }},
  },
  --[[{
    type = "recipe",
    name = string.format(energyInterfaceName, "-mk2"),
    energy_required = 10,
    enabled = false,
    ingredients ={
      {string.format(energyInterfaceName, "-mk1"), 10},
    },
    results = {{ type = "item", name = string.format(energyInterfaceName, "-mk2"), amount = 1, }},
  },]]
})
