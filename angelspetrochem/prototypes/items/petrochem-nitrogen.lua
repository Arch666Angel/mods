local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  --NITROGEN
  {
    type = "fluid",
    name = "angels-gas-nitrogen",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "N[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitrogen.png", 64 },
      "NNN"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "a",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("N"), --{r = 0, g = 0, b = 1},
    flow_color = angelsmods.functions.flow_color("N"), --{r = 0, g = 0, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-ammonia",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "NH[font=default-tiny-bold]3[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ammonia.png", 72 },
      "NHH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "b",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("NH3"), --{r = 0.05, g = 0.05, b = 1},
    flow_color = angelsmods.functions.flow_color("NH3"), --{r = 0.05, g = 0.05, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-nitrogen-monoxide",
    localised_description = show_formula and { "tooltip-description.chemical-formula", "NO" } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-oxide.png", 72 },
      "NNO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "c",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("NO"), --{r = 0.1, g = 0.1, b = 1},
    flow_color = angelsmods.functions.flow_color("NO"), --{r = 0.1, g = 0.1, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-nitrogen-dioxide",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "NO[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
      "NOO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "d",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("NO2"), --{r = 0.15, g = 0.15, b = 1},
    flow_color = angelsmods.functions.flow_color("NO2"), --{r = 0.15, g = 0.15, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-dinitrogen-tetroxide",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "N[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]4[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/dinitrogen-tetroxide.png", 72 },
      "NNO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "e",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("N2O4Xx"), --{r = 0.2, g = 0.2, b = 1},
    flow_color = angelsmods.functions.flow_color("N2O4Xx"), --{r = 0.2, g = 0.2, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-ammonium-chloride",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "ClH[font=default-tiny-bold]4[/font]N" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ammonium-chloride.png", 72 },
      "NHCl"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "f",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("NH4Cl"), --{r = 0.25, g = 0.25, b = 1},
    flow_color = angelsmods.functions.flow_color("NH4Cl"), --{r = 0.25, g = 0.25, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-urea",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "CH[font=default-tiny-bold]4[/font]N[font=default-tiny-bold]2[/font]O",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/urea.png", 72 },
      "CNO"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "g",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("CH4N2O"), --{r = 0.3, g = 0.3, b = 1},
    flow_color = angelsmods.functions.flow_color("CH4N2O"), --{r = 0.3, g = 0.3, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-melamine",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]N[font=default-tiny-bold]6[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/melamine.png", 72 },
      "CHN"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "h",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("C3H6N6"), --{r = 0.35, g = 0.35, b = 1},
    flow_color = angelsmods.functions.flow_color("C3H6N6"), --{r = 0.35, g = 0.35, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-liquid-nitric-acid",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "HNO[font=default-tiny-bold]3[/font]" }
      or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-acid.png", 72 },
      "NOH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "i",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("HNO3Ws"), --{r = 0.4, g = 0.4, b = 0.1},
    flow_color = angelsmods.functions.flow_color("HNO3Ws"), --{r = 0.4, g = 0.4, b = 0.1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-monochloramine",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "NH[font=default-tiny-bold]2[/font]Cl" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/chloramine.png", 72 },
      "NHCl"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "j",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("NH2Cl"), --{r = 0.45, g = 0.45, b = 1},
    flow_color = angelsmods.functions.flow_color("NH2Cl"), --{r = 0.45, g = 0.45, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-hydrazine",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "N[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrazine.png", 72 },
      "NHH"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "k",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("N2H4"), --{r = 0.5, g = 0.5, b = 1},
    flow_color = angelsmods.functions.flow_color("N2H4"), --{r = 0.5, g = 0.5, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-methylamine",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "CH[font=default-tiny-bold]5[/font]N" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methylamine.png", 72 },
      "CHN"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "l",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("CH5N"), --{r = 0.55, g = 0.55, b = 0.1},
    flow_color = angelsmods.functions.flow_color("CH5N"), --{r = 0.55, g = 0.55, b = 0.1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-dimethylamine",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "(CH[font=default-tiny-bold]3[/font])[font=default-tiny-bold]2[/font]NH",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/dimethylamine.png", 72 },
      "CHN"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "m",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("C2H7N"), --{r = 0.6, g = 0.6, b = 1},
    flow_color = angelsmods.functions.flow_color("C2H7N"), --{r = 0.6, g = 0.6, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-dimethylhydrazine",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]8[/font]N[font=default-tiny-bold]2[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochemgraphics__/graphics/icons/molecules/dimethylhydrazine.png", 72 },
      "CHN"
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-nitrogen-fluids",
    order = "n",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("C2H8N2"), --{r = 0.65, g = 0.65, b = 1},
    flow_color = angelsmods.functions.flow_color("C2H8N2"), --{r = 0.65, g = 0.65, b = 1},
    max_temperature = 0,
  },
  -- order "o" reserved for bobwarfare
})
