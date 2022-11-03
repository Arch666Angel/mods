local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  --CHEMICAL BASIC
  {
    type = "fluid",
    name = "gas-compressed-air",
    icons = angelsmods.functions.create_gas_fluid_icon(
      nil,
      { { 180, 180, 225 }, { 150, 150, 187 }, { 120, 120, 150 } }
    ),
    --icon_size = 32,
    subgroup = "petrochem-basic-fluids",
    order = "b",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = { r = 180 / 255, g = 180 / 255, b = 225 / 255 },
    flow_color = { r = 120 / 255, g = 120 / 255, b = 150 / 255 },
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-hydrogen",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "H[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      "HHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-basic-fluids",
    order = "h",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("H"), --{r = 1, g = 1, b = 1},
    flow_color = angelsmods.functions.flow_color("H"), --{r = 1, g = 1, b = 1},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-oxygen",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "O[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      "OOO"
    ),
    --icon_size = 32,
    subgroup = "petrochem-basic-fluids",
    order = "d",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("O"), --{r = 1, g = 0, b = 0},
    flow_color = angelsmods.functions.flow_color("O"), --{r = 1, g = 0, b = 0},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-hydrogen-peroxide",
    localised_description = show_formula and {
      "tooltip-description.chemical-formula",
      "H[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]",
    } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-peroxide.png", 72 },
      "OOH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-basic-fluids",
    order = "e",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("HO"), --{r = 1, g = 0, b = 0},
    flow_color = angelsmods.functions.flow_color("HO"), --{r = 1, g = 0, b = 0},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-carbon-monoxide",
    localised_description = show_formula and { "tooltip-description.chemical-formula", "CO" } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 },
      "CCOc"
    ),
    --icon_size = 32,
    subgroup = "petrochem-basic-fluids",
    order = "f",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("CO"), --{r = 1, g = 0.4, b = 0.4},
    flow_color = angelsmods.functions.flow_color("CO"), --{r = 1, g = 0.4, b = 0.4},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-carbon-dioxide",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "CO[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      "COcOc"
    ),
    --icon_size = 32,
    subgroup = "petrochem-basic-fluids",
    order = "g",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("CO2"), --{r = 1, g = 0.5, b = 0.5},
    flow_color = angelsmods.functions.flow_color("CO2"), --{r = 1, g = 0.5, b = 0.5},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "gas-hydrogen-fluoride",
    localised_description = show_formula and { "tooltip-description.chemical-formula", "HF" } or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
      "FHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-sulfer-fluids",
    order = "e",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("HF"), --{r = 0, g = 1, b = 0.5},
    flow_color = angelsmods.functions.flow_color("HF"), --{r = 0, g = 1, b = 0.5},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-hydrofluoric-acid",
    localised_description = show_formula and { "tooltip-description.chemical-formula", "HF" } or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
      "FHH"
    ),
    --icon_size = 32,
    subgroup = "petrochem-sulfer-fluids",
    order = "f",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("HFWs"), --{r = 0, g = 1, b = 0.5},
    flow_color = angelsmods.functions.flow_color("HFWs"), --{r = 0, g = 1, b = 0.5},
    max_temperature = 100,
  },
  --ENRICHED WATER
  {
    type = "fluid",
    name = "liquid-water-semiheavy-1",
    localised_name = { "fluid-name.liquid-water-semiheavy", "7.5" },
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      "OHdH"
    ),
    subgroup = "water-enrichment",
    order = "h[water-enriched]-a[semiheavy]-a[mk1]",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("Ws5Hd1"), --{r = 255/255, g = 128/255, b = 128/255},
    flow_color = angelsmods.functions.flow_color("Ws5Hd1"), --{r = 255/255, g = 128/255, b = 128/255},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-water-semiheavy-2",
    localised_name = { "fluid-name.liquid-water-semiheavy", "12.5" },
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      "OHdH"
    ),
    subgroup = "water-enrichment",
    order = "h[water-enriched]-a[semiheavy]-b[mk2]",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("Ws3Hd1"), --{r = 255/255, g = 128/255, b = 128/255},
    flow_color = angelsmods.functions.flow_color("Ws3Hd1"), --{r = 255/255, g = 128/255, b = 128/255},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-water-semiheavy-3",
    localised_name = { "fluid-name.liquid-water-semiheavy", "15" },
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      "OHdH"
    ),
    subgroup = "water-enrichment",
    order = "h[water-enriched]-a[semiheavy]-c[mk3]",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("WsHd3"), --{r = 255/255, g = 128/255, b = 128/255},
    flow_color = angelsmods.functions.flow_color("WsHd3"), --{r = 255/255, g = 128/255, b = 128/255},
    max_temperature = 100,
  },
  {
    type = "fluid",
    name = "liquid-water-heavy",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "D[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/heavy-water.png", 64 },
      "OHdHd"
    ),
    subgroup = "water-enrichment",
    order = "h[water-enriched]-b[heavy]",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("WsHd5"), --{r = 255/255, g = 128/255, b = 128/255},
    flow_color = angelsmods.functions.flow_color("WsHd5"), --{r = 255/255, g = 128/255, b = 128/255},
    max_temperature = 101,
  },
  {
    type = "fluid",
    name = "gas-deuterium",
    localised_description = show_formula
        and { "tooltip-description.chemical-formula", "D[font=default-tiny-bold]2[/font]" }
      or nil,
    icons = angelsmods.functions.create_gas_fluid_icon(
      { "__angelspetrochem__/graphics/icons/molecules/deuterium.png", 64 },
      "HdHdHd"
    ),
    subgroup = "petrochem-basic-fluids",
    order = "i",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = angelsmods.functions.fluid_color("Hd"), --{r = 196 / 255, g = 196 / 255, b = 156 / 255},
    flow_color = angelsmods.functions.flow_color("Hd"), --{r = 196 / 255, g = 196 / 255, b = 156 / 255},
    max_temperature = 100,
  },
  --VOID
  {
    type = "item",
    name = "chemical-void",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
        icon_size = 64,
        icon_mipmaps = 4,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 0.4,
        shift = { 9.6, 9.6 },
      },
    },
    flags = { "hidden" },
    subgroup = "angels-void",
    order = "zzz[chemical-void]",
    stack_size = 200,
  },
})
