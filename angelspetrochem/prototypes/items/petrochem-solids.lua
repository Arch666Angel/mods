data:extend(
{
  --PLASTICS
  {
    type = "fluid",
    name = "liquid-plastic",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {255,255,255}, {255,255,255} }),
    subgroup = "petrochem-solids-fluids",
    order = "a[plastic]",
    default_temperature = 0,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.8, g = 0.8, b = 1},
    flow_color = {r = 0.8, g = 0.8, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "liquid-resin",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {255,225,155}, {255,225,155} }),
    subgroup = "petrochem-solids-fluids",
    order = "b[resin]",
    default_temperature = 0,
    heat_capacity = "0.1KJ",
    base_color = {r = 1, g = 0.8, b = 0.4},
    flow_color = {r = 1, g = 0.8, b = 0.4},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "liquid-rubber",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {193,197,255}, {193,197,255} }),
    subgroup = "petrochem-solids-fluids",
    order = "c[rubber]",
    default_temperature = 0,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.75, g = 0.75, b = 1},
    flow_color = {r = 0.75, g = 0.75, b = 1},
    max_temperature = 0,
  },
  --SOLIDS
  {
    type = "item",
    name = "solid-resin",
    icon = "__angelspetrochem__/graphics/icons/solid-resin.png",
    icon_size = 32,
    subgroup = "petrochem-solids",
    order = "a[petrochem-solids]-b[resin]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-rubber",
    icon = "__angelspetrochem__/graphics/icons/solid-rubber.png",
    icon_size = 32,
    subgroup = "petrochem-solids",
    order = "a[petrochem-solids]-c[rubber]",
    stack_size = 200
  },
  {
    type = "item",
    name = "fluorite-ore",
    icon = "__angelspetrochem__/graphics/icons/ore-fluorite.png",
    icon_size = 32,
    subgroup = "petrochem-sulfur",
    order = "a[sulfer]-b[fluorite]",
    stack_size = 200
  },
  --CHEMICAL POWDERS
  {
    type = "item",
    name = "solid-calcium-chloride",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    icon_size = 32,
    subgroup = "petrochem-sulfur",
    order = "c[solid-calcium-chloride]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-oil-residual",
    icon = "__angelspetrochem__/graphics/icons/solid-oil-residual.png",
    icon_size = 32,
    subgroup = "petrochem-carbon-oil-feed",
    order = "a[solid-oil-residual]",
    stack_size = 200
  },
  --SODIUM
  {
    type = "item",
    name = "solid-sodium",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "a[sodium]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-hydroxide",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "c[sodium-hydroxide]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-carbonate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-carbonate.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "b[sodium]-a[sodium-carbonate]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-hypochlorite",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hypochlorite.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "f[liquid-sodium-hydroxide]-a[sodium-hypochlorite]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-cyanide",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-cyanide.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "b[sodium]-b[solid-sodium-cyanide]",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-nitrate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-nitrate.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "b[sodium]-c[solid-sodium-nitrate]",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-aqueous-sodium-hydroxide",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {151,212,255}, {255,255,255} }),
    subgroup = "petrochem-chlorine-fluids",
    order = "j",
    default_temperature = 0,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("Na2O2H2Ws"),--{r = 0.9, g = 0.9, b = 0.9},
    flow_color = angelsmods.functions.flow_color("Na2O2H2Ws"),--{r = 0.9, g = 0.9, b = 0.9},
    max_temperature = 0,
  },
  --CATALYSTS
  {
    type = "item",
    name = "catalyst-metal-carrier",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-carrier.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "c[catalyst-metal]-a[carrier]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-red",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-red.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "c[catalyst-metal]-b[red]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-green",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-green.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "c[catalyst-metal]-c[green]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-blue",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-blue.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "c[catalyst-metal]-d[blue]",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalyst-metal-yellow",
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-yellow.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "c[catalyst-metal]-e[yellow]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-electrode",
    icon = "__angelspetrochem__/graphics/icons/solid-electrode.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "a[electrode]-a[new]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-electrode-used",
    icon = "__angelspetrochem__/graphics/icons/solid-electrode-used.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "a[electrode]-b[used]",
    stack_size = 200
  },
  --COAL/CARBON
  {
    type = "item",
    name = "coal-crushed",
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    icon_size = 32,
    subgroup = "petrochem-coal",
    order = "a[carbon]-b",
    fuel_category = "chemical",
    fuel_value = "2MJ",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-coke",
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    icon_size = 32,
    subgroup = "petrochem-coal",
    order = "a[carbon]-c",
    fuel_category = "chemical",
    fuel_value = "2.5MJ",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-coke",
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    icon_size = 32,
    subgroup = "petrochem-coal",
    order = "b[coke]",
    fuel_category = "chemical",
    fuel_value = "15MJ",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-carbon",
    icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
    icon_size = 32,
    subgroup = "petrochem-coal",
    order = "a[carbon]-d",
    fuel_category = "chemical",
    fuel_value = "3MJ",
    stack_size = 200
  },
  --SALTS --solid-salt and lithia-salt moved to refining's water treatment items
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
    subgroup = "petrochem-fuel",
    order = "b[rocket-fuel]-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "rocket-oxidizer-capsule",
    icon = "__angelspetrochem__/graphics/icons/rocket-oxidizer-capsule.png",
    icon_size = 32,
    subgroup = "petrochem-fuel",
    order = "b[rocket-fuel]-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "rocket-booster",
    icon = "__angelspetrochem__/graphics/icons/rocket-booster.png",
    icon_size = 32,
    subgroup = "petrochem-fuel",
    order = "c[rocket-booster]",
    fuel_category = "chemical",
    fuel_value = "10MJ",
    fuel_acceleration_multiplier = 1.8,
    fuel_top_speed_multiplier = 1.15,
    stack_size = 200
  },
}
)
