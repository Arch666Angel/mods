local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  --CHLORINE
  {
    type = "fluid",
    name = "angels-gas-chlorine",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "Cl[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/chlorine.png", 72 },
      "ClClCl"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "a",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("CCl2"), --{r = 0, g = 1, b = 0},
    flow_color = angelsmods.functions.flow_color("CCl2"), --{r = 0, g = 1, b = 0},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-hydrogen-chloride",
    localised_description = show_formula and { "tooltip-description.chemical-formula", "HCl" } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-chloride.png", 72 },
      "ClClH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "b",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("HCl"), --{r = 0.1, g = 1, b = 0.1},
    flow_color = angelsmods.functions.flow_color("HCl"), --{r = 0.1, g = 1, b = 0.1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-liquid-hydrochloric-acid",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "HCl[font=default-tiny-bold](aq)[/font]" }
      or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrochloric-acid.png", 72 },
      "ClHO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "c",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("H2Cl2Ws"), --{r = 0.5, g = 1, b = 0.5},
    flow_color = angelsmods.functions.flow_color("H2Cl2Ws"), --{r = 0.5, g = 1, b = 0.5},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-allylchlorid",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]5[/font]ClO",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/allyl-chloride.png", 72 },
      "CClH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "d",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("C3H5ClO"), --{r = 0.2, g = 1, b = 0.2},
    flow_color = angelsmods.functions.flow_color("C3H5ClO"), --{r = 0.2, g = 1, b = 0.2},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-epichlorohydrin",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]5[/font]Cl",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/epichlorohydrin.png", 72 },
      "CHCl"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "e",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("C3H5Cl"), --{r = 0.3, g = 1, b = 0.3},
    flow_color = angelsmods.functions.flow_color("C3H5Cl"), --{r = 0.3, g = 1, b = 0.3},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-chlor-methane",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "CH[font=default-tiny-bold]3[/font]Cl" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/chloromethane.png", 72 },
      "CClH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "f",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("CH3Cl"), --{r = 0.1, g = 0.8, b = 0.1},
    flow_color = angelsmods.functions.flow_color("CH3Cl"), --{r = 0.1, g = 0.8, b = 0.1},
    max_temperature = 0,
  },
  {
    type = "item",
    name = "angels-solid-sodium-chlorate",
    icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-chlorate.png",
    icon_size = 32,
    subgroup = "angels-petrochem-sodium",
    order = "f[liquid-sodium-hydroxide]-b[solid-sodium-chlorate]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-sodium-perchlorate",
    icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-perchlorate.png",
    icon_size = 32,
    subgroup = "angels-petrochem-sodium",
    order = "f[liquid-sodium-hydroxide]-c[solid-sodium-perchlorate]",
    stack_size = 200,
  },
  {
    type = "fluid",
    name = "angels-liquid-perchloric-acid",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "HClO[font=default-tiny-bold]4[/font]" }
      or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/perchloric-acid.png", 72 },
      "ClHO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "g",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("HClO4Ws"), --{r = 0.5, g = 1, b = 0.5},
    flow_color = angelsmods.functions.flow_color("HClO4Ws"), --{r = 0.5, g = 1, b = 0.5},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-liquid-ferric-chloride-solution",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "Fe(III)Cl[font=default-tiny-bold]3[/font]" }
      or nil,
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 104, 112, 113 }, { 104, 112, 113 }, { 099, 146, 191 }, { 099, 146, 191 } }
    ),
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "ia",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Fe4Cl3Ws"), --{r = 99 / 255, g = 146 / 255, b = 191 / 255},
    flow_color = angelsmods.functions.flow_color("Fe4Cl3Ws"), --{r = 99 / 255, g = 146 / 255, b = 191 / 255},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-liquid-cupric-chloride-solution",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "Cu(II)Cl[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 095, 106, 090 }, { 095, 106, 090 }, { 165, 093, 051 }, { 165, 093, 051 } }
    ),
    subgroup = "angels-petrochem-chlorine-fluids",
    order = "ib",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Cu4Cl2Ws"), --{r = 165 / 255, g = 93 / 255, b = 51 / 255},
    flow_color = angelsmods.functions.flow_color("Cu4Cl2Ws"), --{r = 165 / 255, g = 93 / 255, b = 51 / 255},
    max_temperature = 0,
  },
})
