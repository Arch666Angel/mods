local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend(
  {
    --CHEMICAL BASIC
    {
      type = "fluid",
      name = "gas-compressed-air",
      icons = angelsmods.functions.create_gas_fluid_icon(nil, {{180, 180, 225}, {150, 150, 187}, {120, 120, 150}}),
      --icon_size = 32,
      subgroup = "petrochem-basic-fluids",
      order = "b",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 1, g = 1, b = 1},
      flow_color = {r = 1, g = 1, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "gas-hydrogen",
      localised_description = show_formula and
        {"tooltip-description.chemical-formula", "H[font=default-tiny-bold]2[/font]"} or
        nil,
      icons = angelsmods.functions.create_gas_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
        "hhh"
      ),
      --icon_size = 32,
      subgroup = "petrochem-basic-fluids",
      order = "h",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 1, g = 1, b = 1},
      flow_color = {r = 1, g = 1, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "gas-oxygen",
      localised_description = show_formula and
        {"tooltip-description.chemical-formula", "O[font=default-tiny-bold]2[/font]"} or
        nil,
      icons = angelsmods.functions.create_gas_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        "ooo"
      ),
      --icon_size = 32,
      subgroup = "petrochem-basic-fluids",
      order = "d",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 1, g = 0, b = 0},
      flow_color = {r = 1, g = 0, b = 0},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "gas-hydrogen-peroxide",
      localised_description = show_formula and
        {"tooltip-description.chemical-formula", "H[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or
        nil,
      icons = angelsmods.functions.create_gas_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen-peroxide.png", 72},
        "ooh"
      ),
      --icon_size = 32,
      subgroup = "petrochem-basic-fluids",
      order = "e",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 1, g = 0, b = 0},
      flow_color = {r = 1, g = 0, b = 0},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "gas-carbon-monoxide",
      localised_description = show_formula and {"tooltip-description.chemical-formula", "CO"} or nil,
      icons = angelsmods.functions.create_gas_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72},
        "ccc"
      ),
      --icon_size = 32,
      subgroup = "petrochem-basic-fluids",
      order = "f",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 1, g = 0.4, b = 0.4},
      flow_color = {r = 1, g = 0.4, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "gas-carbon-dioxide",
      localised_description = show_formula and
        {"tooltip-description.chemical-formula", "CO[font=default-tiny-bold]2[/font]"} or
        nil,
      icons = angelsmods.functions.create_gas_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72},
        "ccc"
      ),
      --icon_size = 32,
      subgroup = "petrochem-basic-fluids",
      order = "g",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 1, g = 0.5, b = 0.5},
      flow_color = {r = 1, g = 0.5, b = 0.5},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "liquid-hydrofluoric-acid",
      localised_description = show_formula and {"tooltip-description.chemical-formula", "HF"} or nil,
      icons = angelsmods.functions.create_liquid_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72},
        "fhh"
      ),
      --icon_size = 32,
      subgroup = "petrochem-sulfer-fluids",
      order = "e",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0, g = 1, b = 0.5},
      flow_color = {r = 0, g = 1, b = 0.5},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    --ENRICHED WATER
    {
      type = "fluid",
      name = "liquid-water-semiheavy-1",
      localised_name = {"fluid-name.liquid-water-semiheavy", "7.5"},
      icons = angelsmods.functions.create_liquid_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72},
        "odh"
      ),
      subgroup = "water-enrichment",
      order = "h[water-enriched]-a[semiheavy]-a[mk1]",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 1},
      flow_color = {r = 0.7, g = 0.7, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "liquid-water-semiheavy-2",
      localised_name = {"fluid-name.liquid-water-semiheavy", "12.5"},
      icons = angelsmods.functions.create_liquid_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72},
        "odh"
      ),
      subgroup = "water-enrichment",
      order = "h[water-enriched]-a[semiheavy]-b[mk2]",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 1},
      flow_color = {r = 0.7, g = 0.7, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "liquid-water-semiheavy-3",
      localised_name = {"fluid-name.liquid-water-semiheavy", "15"},
      icons = angelsmods.functions.create_liquid_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72},
        "odh"
      ),
      subgroup = "water-enrichment",
      order = "h[water-enriched]-a[semiheavy]-c[mk3]",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 1},
      flow_color = {r = 0.7, g = 0.7, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "liquid-water-heavy",
      localised_description = show_formula and
        {"tooltip-description.chemical-formula", "D[font=default-tiny-bold]2[/font]"} or
        nil,
      icons = angelsmods.functions.create_liquid_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/heavy-water.png", 64},
        "odd"
      ),
      subgroup = "water-enrichment",
      order = "h[water-enriched]-b[heavy]",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 1},
      flow_color = {r = 0.7, g = 0.7, b = 1},
      max_temperature = 101,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "gas-deuterium",
      localised_description = show_formula and
        {"tooltip-description.chemical-formula", "D[font=default-tiny-bold]2[/font]"} or
        nil,
      icons = angelsmods.functions.create_gas_fluid_icon(
        {"__angelspetrochem__/graphics/icons/molecules/deuterium.png", 64},
        "ddd"
      ),
      subgroup = "petrochem-basic-fluids",
      order = "i",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 196 / 255, g = 196 / 255, b = 156 / 255},
      flow_color = {r = 196 / 255, g = 196 / 255, b = 156 / 255},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    --VOID
    {
      type = "item",
      name = "chemical-void",
      icon = "__angelsrefining__/graphics/icons/void.png",
      icon_size = 32,
      flags = {"hidden"},
      subgroup = "petrochem-basic-fluids",
      order = "zzz[chemical-void]",
      stack_size = 200
    }
  }
)
