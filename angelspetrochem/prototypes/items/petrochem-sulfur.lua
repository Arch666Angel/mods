local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  --SULFUR
  {
    type = "fluid",
    name = "angels-gas-hydrogen-sulfide",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "H[font=default-tiny-bold]2[/font]S" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
      "SHH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-sulfur-fluids",
    order = "a[hydrogen-sulfide]-a[normal]",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("H2S"), --{r = 1, g = 1, b = 0.3},
    flow_color = angelsmods.functions.flow_color("H2S"), --{r = 1, g = 1, b = 0.3},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-enriched-hydrogen-sulfide",
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
      "SWsWs"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-sulfur-fluids",
    order = "a[hydrogen-sulfide]-b[enriched]-b[normal]",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("S2HWt"), --{r = 1, g = 1, b = 0.3},
    flow_color = angelsmods.functions.flow_color("S2HWt"), --{r = 1, g = 1, b = 0.3},
    max_temperature = 100,
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "angels-gas-sulfur-dioxide",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "SO[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/sulfur-dioxide.png", 72 },
      "SOO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-sulfur-fluids",
    order = "b",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("SO2"), --{r = 0.9, g = 0.9, b = 0.2},
    flow_color = angelsmods.functions.flow_color("SO2"), --{r = 0.9, g = 0.9, b = 0.2},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-liquid-sulfuric-acid",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "H[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4[/font]",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png", 72 },
      "SHO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-sulfur-fluids",
    order = "ca",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("SH2O4Ws"), --{r = 0.8, g = 0.8, b = 0.1},
    flow_color = angelsmods.functions.flow_color("SH2O4Ws"), --{r = 0.8, g = 0.8, b = 0.1},
    max_temperature = 0,
  },
  {
    type = "item",
    name = "angels-solid-calcium-sulfate",
    icon = "__angelspetrochemgraphics__/graphics/icons/solid-calcium-sulfate.png",
    icon_size = 32,
    subgroup = "angels-petrochem-sulfur",
    order = "b[solid-calcium-sulfate]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-sodium-sulfate",
    icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-sulfate.png",
    icon_size = 32,
    subgroup = "angels-petrochem-sodium",
    order = "d[sodium-hydroxide]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-filter-lime",
    icon = "__angelspetrochemgraphics__/graphics/icons/filter-lime.png",
    icon_size = 32,
    subgroup = "angels-petrochem-catalysts",
    order = "b[filter-lime]-a[new]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-filter-lime-used",
    icon = "__angelspetrochemgraphics__/graphics/icons/filter-lime-used.png",
    icon_size = 32,
    subgroup = "angels-petrochem-catalysts",
    order = "b[filter-lime]-a[used]",
    stack_size = 200,
  },
})
