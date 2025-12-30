local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend({
  --RAWS
  {
    type = "fluid",
    name = "angels-gas-natural-1",
    icons = angelsmods.functions.create_gas_fluid_icon(nil, "NgNgNg"),
    --icon_size = 32,
    subgroup = "angels-petrochem-raw-fluids",
    order = "aa",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ng"), --{r = 0.3, g = 0.45, b = 0.3},
    flow_color = angelsmods.functions.flow_color("Ng"), --{r = 0.3, g = 0.45, b = 0.3},
    max_temperature = 0,
  },
  -- {
  -- type = "fluid",
  -- name = "angels-gas-natural-2",
  -- icon = "__angelspetrochemgraphics__/graphics/icons/gas-natural-2.png",
  -- default_temperature = 0,
  -- heat_capacity = "1kJ",
  -- base_color = {r = 0.50, g = 0.70, b = 0.40},
  -- flow_color = {r = 0.50, g = 0.70, b = 0.40},
  -- max_temperature = 0,
  -- },
  {
    type = "fluid",
    name = "angels-liquid-multi-phase-oil",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 100, 100, 100 }, { 127, 163, 109 }, nil, nil, { 171, 161, 055 } }
    ),
    subgroup = "angels-petrochem-raw-fluids",
    order = "ba", --bb=crude oil
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Oi3Ng2C"), --{r = 0.3, g = 0.4, b = 0.3},
    flow_color = angelsmods.functions.flow_color("Oi3Ng2C"), --{r = 0.3, g = 0.4, b = 0.3},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-raw-1",
    icons = angelsmods.functions.create_gas_fluid_icon(nil, "NgNgS"),
    --icon_size = 32,
    subgroup = "angels-petrochem-raw-fluids",
    order = "ab",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ng3C2S"), --{r = 0.2, g = 0.45, b = 0.2},
    flow_color = angelsmods.functions.flow_color("Ng3C2S"), --{r = 0.2, g = 0.45, b = 0.2},
    max_temperature = 0,
  },
  -- {
  -- type = "fluid",
  -- name = "angels-gas-raw-2",
  -- icon = "__angelspetrochemgraphics__/graphics/icons/gas-raw-1.png",
  -- default_temperature = 0,
  -- heat_capacity = "1kJ",
  -- base_color = {r = 0.70, g = 0.90, b = 0.60},
  -- flow_color = {r = 0.70, g = 0.90, b = 0.60},
  -- max_temperature = 0,
  -- },
  {
    type = "fluid",
    name = "angels-liquid-condensates",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      nil,
      { { 106, 106, 106 }, { 093, 093, 093 }, { 071, 071, 071 } }
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-raw-fluids",
    order = "ca",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ng2C"), --{r = 0.5, g = 0.5, b = 0.5},
    flow_color = angelsmods.functions.flow_color("Ng2C"), --{r = 0.5, g = 0.5, b = 0.5},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-acid",
    icons = angelsmods.functions.create_gas_fluid_icon(nil, "SSF"),
    --icon_size = 32,
    subgroup = "angels-petrochem-sulfur-fluids",
    order = "d",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("S2F2H2O"), --{r = 0.8, g = 0.8, b = 0},
    flow_color = angelsmods.functions.flow_color("S2F2H2O"), --{r = 0.8, g = 0.8, b = 0},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-liquid-ngl",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil, "NgNgOi"),
    --icon_size = 32,
    subgroup = "angels-petrochem-raw-fluids",
    order = "ac",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ng3Oi2C"), --{r = 0.3, g = 0.5, b = 0.3},
    flow_color = angelsmods.functions.flow_color("Ng3Oi2C"), --{r = 0.3, g = 0.5, b = 0.3},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-gas-residual",
    icons = angelsmods.functions.create_gas_fluid_icon(
      nil,
      { { 064, 000, 064 }, { 128, 000, 128 }, { 192, 000, 192 } }
    ),
    --icon_size = 32,
    subgroup = "angels-petrochem-raw-fluids",
    order = "cb",
    default_temperature = 0,
    gas_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Sg3H"), --{r = 0.5, g = 0, b = 0.5},
    flow_color = angelsmods.functions.fluid_color("Sg3H"), --{r = 0.5, g = 0, b = 0.5},
    max_temperature = 0,
  },
})

data.raw.fluid["crude-oil"].icon = nil
data.raw.fluid["crude-oil"].icon_size = nil
data.raw.fluid["crude-oil"].icons =
  angelsmods.functions.create_liquid_fluid_icon(nil, { { 069, 069, 069 }, { 054, 054, 054 }, { 036, 036, 036 } })
