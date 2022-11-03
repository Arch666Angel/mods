local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  --CARBON BASIC
  --GAS
  {
    type = "fluid",
    name = "gas-methane",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "CH[font=default-tiny-bold]4[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ba",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("CH4"), --{r = 0.3, g = 0.3, b = 0.3},
    flow_color = angelsmods.functions.flow_color("CH4"), --{r = 0.3, g = 0.3, b = 0.3},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-ethane",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]6[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/ethane.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "bb",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C2H6"), --{r = 0.35, g = 0.35, b = 0.35},
    flow_color = angelsmods.functions.flow_color("C2H6"), --{r = 0.35, g = 0.35, b = 0.35},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-butane",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]10[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "bc",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C4H10"), --{r = 0.4, g = 0.4, b = 0.4},
    flow_color = angelsmods.functions.flow_color("C4H10"), --{r = 0.4, g = 0.4, b = 0.4},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-propene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/propene.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "bd",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C3H6"), --{r = 0.1, g = 0.1, b = 0.1},
    flow_color = angelsmods.functions.flow_color("C3H6"), --{r = 0.1, g = 0.1, b = 0.1},
    max_temperature = 100,
  },
  --OIL
  {
    type = "fluid",
    name = "liquid-naphtha",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { { 196, 075, 085 }, { 148, 066, 075 } }),
    subgroup = "petrochem-carbon-fluids",
    order = "dba",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = { r = 0.8, g = 0.4, b = 0.4 },
    flow_color = { r = 0.9, g = 0.5, b = 0.5 },
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-mineral-oil",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { { 063, 189, 063 }, { 053, 159, 053 } }),
    subgroup = "petrochem-carbon-fluids",
    order = "dca",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = { r = 0.2, g = 0.6, b = 0.2 },
    flow_color = { r = 0.3, g = 0.7, b = 0.3 },
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-fuel-oil",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { { 247, 216, 081 }, { 237, 212, 104 } }),
    subgroup = "petrochem-carbon-fluids",
    order = "daa",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = { r = 0.8, g = 0.8, b = 0 },
    flow_color = { r = 0.9, g = 0.9, b = 0.1 },
    max_temperature = 100,
  },
  --CRACKING
  {
    type = "fluid",
    name = "gas-methanol",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "CH[font=default-tiny-bold]3[/font]OH" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/methanol.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ca",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("CH4O"), --{r = 0.5, g = 0.3, b = 0.3},
    flow_color = angelsmods.functions.flow_color("CH4O"), --{r = 0.5, g = 0.3, b = 0.3},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-ethylene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "cb",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C2H4"), --{r = 0.45, g = 0.45, b = 0.45},
    flow_color = angelsmods.functions.flow_color("C2H4"), --{r = 0.45, g = 0.45, b = 0.45},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-benzene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]6[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/benzene.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "cc",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C6H6"), --{r = 0.5, g = 0.5, b = 0.5},
    flow_color = angelsmods.functions.flow_color("C6H6"), --{r = 0.5, g = 0.5, b = 0.5},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-synthesis",
    icons = angelsmods.functions.create_gas_fluid_icon(
      nil,
      { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "dd",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("Sg"), --{r = 210 / 255, g = 120 / 255, b = 210 / 255},
    flow_color = angelsmods.functions.flow_color("Sg"), --{r = 210 / 255, g = 120 / 255, b = 210 / 255},
    max_temperature = 100,
  },
  --CHEMICAL PROCESSING
  {
    type = "fluid",
    name = "liquid-toluene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]7[/font]H[font=default-tiny-bold]8[/font]",
    } or nil,
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 077, 072, 072 }, { 077, 072, 072 }, { 052, 035, 034 }, { 052, 035, 034 } }
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ea",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C7H8"), --{r = 0.15, g = 0.15, b = 0.15},
    flow_color = angelsmods.functions.flow_color("C7H8"), --{r = 0.15, g = 0.15, b = 0.15},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-butadiene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]6[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/butadiene.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "eb",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C2H3"), --{r = 0.1, g = 0.1, b = 0.1},
    flow_color = angelsmods.functions.flow_color("C2H3"), --{r = 0.1, g = 0.1, b = 0.1},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-phenol",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]6[/font]O",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/phenol.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ec",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C6H6O"), --{r = 0.7, g = 0.35, b = 0.35},
    flow_color = angelsmods.functions.flow_color("C6H6O"), --{r = 0.7, g = 0.35, b = 0.35},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-ethylbenzene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]8[/font]H[font=default-tiny-bold]10[/font]",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/ethylbenzene.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ed",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C4H5"), --{r = 0.55, g = 0.55, b = 0.55},
    flow_color = angelsmods.functions.flow_color("C4H5"), --{r = 0.55, g = 0.55, b = 0.55},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-styrene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]8[/font]H[font=default-tiny-bold]8[/font]",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/styrene.png", 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ee",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C8H8"), --{r = 0.6, g = 0.6, b = 0.6},
    flow_color = angelsmods.functions.flow_color("C8H8"), --{r = 0.6, g = 0.6, b = 0.6},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-formaldehyde",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "CH[font=default-tiny-bold]2[/font]O" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/formaldehyde.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ef",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("CH2O"), --{r = 0.8, g = 0.4, b = 0.4},
    flow_color = angelsmods.functions.flow_color("CH2O"), --{r = 0.8, g = 0.4, b = 0.4},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-polyethylene",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font])[font=default-tiny-bold]n[/font]",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/polyethylene_rotated.png", 72, { -10, 0 }, 32 / 72 },
      "CHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ef",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C2H4"), --{r = 0.65, g = 0.65, b = 0.65},
    flow_color = angelsmods.functions.flow_color("C2H4"), --{r = 0.65, g = 0.65, b = 0.65},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-glycerol",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]8[/font]O[font=default-tiny-bold]3[/font]",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "eh",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C3H8O3"), --{r = 0.9, g = 0.45, b = 0.45},
    flow_color = angelsmods.functions.flow_color("C3H8O3"), --{r = 0.9, g = 0.45, b = 0.45},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-bisphenol-a", --really should be a solid
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]15[/font]H[font=default-tiny-bold]16[/font]O[font=default-tiny-bold]2[/font]",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/bisphenol_a.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ei",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C15H16O2"), --{r = 0.9, g = 0.7, b = 0.7},
    flow_color = angelsmods.functions.flow_color("C15H16O2"), --{r = 0.9, g = 0.7, b = 0.7},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-acetone",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/acetone.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ej",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C3H6O"), --{r = 1, g = 0.3, b = 0.3},
    flow_color = angelsmods.functions.flow_color("C3H6O"), --{r = 1, g = 0.3, b = 0.3},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-ethylene-oxide", --C2H4O
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/ethylene-oxide.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "ek",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C2H4O"), --{r = 1, g = 0.3, b = 0.3},
    flow_color = angelsmods.functions.flow_color("C2H4O"), --{r = 1, g = 0.3, b = 0.3},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-ethylene-carbonate", --(CH2O)2CO
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "(CH[font=default-tiny-bold]2[/font]O)[font=default-tiny-bold]2[/font]CO",
    } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/ethylene-carbonate.png", 72 },
      "COH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-carbon-fluids",
    order = "el",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("C3H4O3"), --{r = 1, g = 0.3, b = 0.3},
    flow_color = angelsmods.functions.flow_color("C3H4O3"), --{r = 1, g = 0.3, b = 0.3},
    max_temperature = 240,
  },
})

data.raw.fluid["lubricant"].icon = nil
data.raw.fluid["lubricant"].icon_size = nil
data.raw.fluid["lubricant"].icons =
  angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { { 063, 189, 063 }, nil, { 060, 209, 60 } })
