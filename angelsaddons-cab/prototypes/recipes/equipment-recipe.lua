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
  {
    type = "recipe",
    name = "angels-burner-generator-vequip",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "electronic-circuit", amount = 20 },
    },
    results = {{ type = "item", name = "angels-burner-generator-vequip", amount = 1 }},
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-fusion-reactor-vequip",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
    },
    results = {{ type = "item", name = "angels-fusion-reactor-vequip", amount = 1 }},
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-repair-roboport-vequip",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
    },
    results = {{ type = "item", name = "angels-repair-roboport-vequip", amount = 1 }},
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-construction-roboport-vequip",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "electronic-circuit", amount = 20 },
    },
    results = {{ type = "item", name = "angels-construction-roboport-vequip", amount = 1 }},
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-heavy-energy-shield-vequip",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
    },
    results = {{ type = "item", name = "angels-heavy-energy-shield-vequip", amount = 1 }},
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-rocket-defense-equipment-vequip",
    energy_required = 10,
    enabled = false,
    hidden = true,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
    },
    results = {{ type = "item", name = "angels-rocket-defense-equipment-vequip", amount = 1 }},
    icon_size = 32,
  },
})
