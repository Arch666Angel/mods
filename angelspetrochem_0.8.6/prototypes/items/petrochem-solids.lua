data:extend(
{
  --PLASTICS
  {
    type = "fluid",
    name = "liquid-plastic",
    icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.8, g = 0.8, b = 1},
    flow_color = {r = 0.8, g = 0.8, b = 1},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-resin",
    icon = "__angelspetrochem__/graphics/icons/liquid-resin.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 1, g = 0.8, b = 0.4},
    flow_color = {r = 1, g = 0.8, b = 0.4},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-rubber",
    icon = "__angelspetrochem__/graphics/icons/liquid-rubber.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.2, g = 0.8, b = 0.4},
    flow_color = {r = 0.2, g = 0.8, b = 0.4},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  --SOLIDS
  {
    type = "item",
    name = "solid-resin",
    icon = "__angelspetrochem__/graphics/icons/solid-resin.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-resin]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-rubber",
    icon = "__angelspetrochem__/graphics/icons/solid-rubber.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-rubber]",
    stack_size = 200
  },
  {
    type = "item",
    name = "fluorite-ore",
    icon = "__angelspetrochem__/graphics/icons/ore-fluorite.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[fluorite-ore]",
    stack_size = 200
  },
  --CHEMICAL POWDERS
  {
    type = "item",
    name = "solid-calcium-chloride",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-calcium-chloride]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-oil-residual",
    icon = "__angelspetrochem__/graphics/icons/solid-oil-residual.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-oil-residual]",
    stack_size = 200
  },
  --SODIUM
  {
    type = "item",
    name = "solid-sodium",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-sodium]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-hydroxide",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-sodium-hydroxide]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-carbonate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-carbonate.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-sodium-carbonate]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-hypochlorite",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hypochlorite.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-sodium-hypochlorite]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-cyanide",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-cyanide.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[solid-sodium-cyanide]",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-aqueous-sodium-hydroxide",
    icon = "__angelspetrochem__/graphics/icons/liquid-aqueous-sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "fluids-petro",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.9, g = 0.9, b = 0.9},
    flow_color = {r = 0.9, g = 0.9, b = 0.9},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  --CATALYSTS
  {
    type = "item",
    name = "catalyst-metal-carrier",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-carrier.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[catalyst-metal-carrier]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-red",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-red.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "b[catalyst-metal-red]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-green",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-green.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "c[catalyst-metal-red]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-blue",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-blue.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "c[catalyst-metal-blue]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-yellow",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-yellow.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "d[catalyst-metal-yellow]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-electrode",
    icon = "__angelspetrochem__/graphics/icons/solid-electrode.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-electrode-used",
    icon = "__angelspetrochem__/graphics/icons/solid-electrode-used.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "b",
    stack_size = 200
  },
  --COAL/CARBON
  {
    type = "item",
    name = "coal-crushed",
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[carbon]",
    fuel_category = "chemical",
    fuel_value = "2MJ",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-coke",
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[carbon]",
    fuel_category = "chemical",
    fuel_value = "2.5MJ",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-coke",
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[coke]",
    fuel_category = "chemical",
    fuel_value = "15MJ",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-carbon",
    icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
    icon_size = 32,
    subgroup = "petrochem-raw",
    order = "a[carbon]",
    fuel_category = "chemical",
    fuel_value = "3MJ",
    stack_size = 200
  },
  --SALTS
  {
    type = "item",
    name = "solid-salt",
    icon = "__angelspetrochem__/graphics/icons/solid-salt.png",
    icon_size = 32,
    subgroup = "water-salination",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-lithium",
    icon = "__angelspetrochem__/graphics/icons/solid-lithium.png",
    icon_size = 32,
    subgroup = "water-salination",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-ammonium-nitrate",
    icon = "__angelspetrochem__/graphics/icons/solid-ammonium-nitrate.png",
    icon_size = 32,
    subgroup = "petrochem-nitrogen",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-ammonium-perchlorate",
    icon = "__angelspetrochem__/graphics/icons/solid-ammonium-perchlorate.png",
    icon_size = 32,
    subgroup = "petrochem-nitrogen",
    order = "a",
    stack_size = 200
  },
  --ROCKET PARTS
  {
    type = "item",
    name = "rocket-fuel-capsule",
    icon = "__angelspetrochem__/graphics/icons/rocket-fuel-capsule.png",
    icon_size = 32,
    subgroup = "petrochem-nitrogen",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "rocket-oxidizer-capsule",
    icon = "__angelspetrochem__/graphics/icons/rocket-oxidizer-capsule.png",
    icon_size = 32,
    subgroup = "petrochem-nitrogen",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "rocket-booster",
    icon = "__angelspetrochem__/graphics/icons/rocket-booster.png",
    icon_size = 32,
    subgroup = "petrochem-nitrogen",
    order = "a",
    fuel_category = "chemical",
    fuel_value = "10MJ",
    fuel_acceleration_multiplier = 1.8,
    fuel_top_speed_multiplier = 1.15,
    stack_size = 200
  },
}
)
