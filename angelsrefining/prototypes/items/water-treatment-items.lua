local function mud_blending(w, alpha) --w is weighting
  local tint_A = util.color("6a492c") --mud custom colour
  local tint_B = angelsmods.functions.fluid_color("Ws") --purified water
  local A = {
    r = tint_A.r or tint_A[1],
    g = tint_A.g or tint_A[1],
    b = tint_A.b or tint_A[1],
    a = tint_A.a or tint_A[1] or 1,
  }
  local B = {
    r = tint_B.r or tint_B[1],
    g = tint_B.g or tint_B[1],
    b = tint_B.b or tint_B[1],
    a = tint_B.a or tint_B[1] or 1,
  }
  return {
    r = A.r * w + B.r * (1 - w),
    g = A.g * w + B.g * (1 - w),
    b = A.b * w + B.b * (1 - w),
    a = alpha or 1,
  }
end

data:extend({
  --ITEMS
  {
    type = "item",
    name = "angels-solid-mud",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-mud.png",
    icon_size = 32,
    subgroup = "angels-water-salination",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-limestone",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
    icon_size = 32,
    subgroup = "angels-water-salination",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-sand",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-sand.png",
    icon_size = 32,
    subgroup = "angels-water-salination",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-clay",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-clay.png",
    icon_size = 32,
    subgroup = "angels-water-salination",
    stack_size = 200,
  },
  --SALTS
  {
    type = "item",
    name = "angels-solid-salt",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-salt.png",
    icon_size = 32,
    subgroup = "angels-water-salination",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-lithium",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-lithium.png",
    icon_size = 32,
    subgroup = "angels-water-salination",
    stack_size = 200,
  },
  --FLUIDS
  {
    type = "fluid",
    name = "angels-water-saline",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 039, 112, 194 }, { 168, 173, 173 }, { 070, 133, 232 }, { 185, 185, 185, 0.8 } }
    ),
    subgroup = "angels-water-washing-fluid",
    order = "f",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ws4NaCl"), --{r = 0.9, g = 0.9, b = 1},
    flow_color = angelsmods.functions.flow_color("Ws4NaCl"), --{r = 0.9, g = 0.9, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-purified",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { { 116, 140, 211 }, nil, { 122, 148, 221 } }),
    subgroup = "angels-water-treatment-fluid",
    order = "b",
    default_temperature = 0,
    heat_capacity = "0.2kJ",
    base_color = angelsmods.functions.fluid_color("Ws"), --{r = 0.7, g = 0.7, b = 1},
    flow_color = angelsmods.functions.flow_color("Ws"), --{r = 0.7, g = 0.7, b = 1},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-yellow-waste",
    --Icons include their respective cleaned counterpart
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      mods["angelspetrochem"] and { icon = "__angelspetrochemgraphics__/graphics/icons/solid-sulfur.png", icon_size = 32 } or {"__base__/graphics/icons/sulfur.png"},
      { { 116, 140, 211 }, { 255, 219, 051 }, { 109, 070, 020, 0.8 }, { 254, 204, 049 } },
      true
    ),
    subgroup = "angels-water-cleaning-fluid",
    order = "a",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("WsS"), --{r = 0.9, g = 0.9, b = 0.4},
    flow_color = angelsmods.functions.flow_color("WsS"), --{r = 0.9, g = 0.9, b = 0.4},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-red-waste",
    --Icons include their respective cleaned counterpart
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      mods["angelspetrochem"] and { icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-nitrate.png", icon_size = 32 } or nil,
      { { 116, 140, 211 }, { 155, 063, 061 }, { 109, 070, 020, 0.8 }, { 124, 050, 048 } },
      true
    ),
    subgroup = "angels-water-cleaning-fluid",
    order = "d",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ws2O"), --{r = 0.9, g = 0.4, b = 0.4}, --red calls for oxy, even though it should be blue for nitrogen
    flow_color = angelsmods.functions.flow_color("Ws2O"), --{r = 0.9, g = 0.4, b = 0.4},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-green-waste",
    --Icons include their respective cleaned counterpart
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      { icon = "__angelsrefininggraphics__/graphics/icons/solid-salt.png", icon_size = 32 },
      { { 116, 140, 211 }, { 102, 204, 049 }, { 109, 070, 020, 0.8 }, { 096, 207, 052 } },
      true
    ),
    subgroup = "angels-water-cleaning-fluid",
    order = "c",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ws1Cl"), --{r = 0.4, g = 0.9, b = 0.4},
    flow_color = angelsmods.functions.flow_color("Ws1Cl"), --{r = 0.4, g = 0.9, b = 0.4},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-greenyellow-waste",
    --Icons include their respective cleaned counterpart
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      { icon = "__angelsrefininggraphics__/graphics/icons/ore-fluorite.png", icon_size = 32 },
      { { 116, 140, 211 }, { 218, 253, 064 }, { 109, 070, 020, 0.8 }, { 173, 210, 042 } },
      true
    ),
    subgroup = "angels-water-cleaning-fluid",
    order = "b",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = angelsmods.functions.fluid_color("Ws1F"), --{r = 0.9, g = 0.9, b = 0.4},
    flow_color = angelsmods.functions.flow_color("Ws1F"), --{r = 0.9, g = 0.9, b = 0.4},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-mineralized",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 039, 112, 194 }, { 093, 067, 049 }, { 070, 133, 232 }, { 109, 070, 020, 0.8 } }
    ),
    subgroup = "angels-water-treatment-fluid",
    order = "d",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = { r = 0.7, g = 0.7, b = 0.6 },
    flow_color = { r = 0.7, g = 0.7, b = 0.6 },
    max_temperature = 0,
  },
  --WASHING
  {
    type = "fluid",
    name = "angels-water-viscous-mud",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 117, 089, 036 }, { 117, 089, 036 }, { 102, 076, 029, 0.8 }, { 102, 076, 029, 0.8 } }
    ),
    subgroup = "angels-water-washing-fluid",
    order = "a",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = mud_blending(1), --{r = 0.55, g = 0.55, b = 0.5},
    flow_color = mud_blending(1, 0.9), --{r = 0.7, g = 0.7, b = 0.6},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-heavy-mud",
    --adds number to icon to better distinguish
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_viscous_liquid_fluid_icon(
        nil,
        { { 070, 133, 232 }, { 117, 089, 036 }, { 102, 076, 029, 0.8 }, { 102, 076, 029, 0.8 } }
      ),
      1, angelsmods.refining.number_tint
    ),
    subgroup = "angels-water-washing-fluid",
    order = "b",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = mud_blending(0.8), --{r = 0.6, g = 0.6, b = 0.55},
    flow_color = mud_blending(0.8, 0.9), --{r = 0.7, g = 0.7, b = 0.6},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-concentrated-mud",
    --adds number to icon to better distinguish
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_viscous_liquid_fluid_icon(
        nil,
        { { 070, 133, 232 }, { 070, 133, 232 }, { 109, 070, 020, 0.8 }, { 109, 070, 020, 0.8 } }
      ),
      2, angelsmods.refining.number_tint
    ),
    subgroup = "angels-water-washing-fluid",
    order = "c",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = mud_blending(0.6), --{r = 0.6, g = 0.65, b = 0.6},
    flow_color = mud_blending(0.6, 0.9), --{r = 0.7, g = 0.7, b = 0.6},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-light-mud",
    --adds number to icon to better distinguish
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_viscous_liquid_fluid_icon(
        nil,
        { { 109, 070, 020 }, { 109, 070, 020 }, { 070, 133, 232, 0.8 }, { 070, 133, 232, 0.8 } }
      ),
      3, angelsmods.refining.number_tint
    ),
    subgroup = "angels-water-washing-fluid",
    order = "d",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = mud_blending(0.4), --{r = 0.65, g = 0.65, b = 0.6},
    flow_color = mud_blending(0.4, 0.9), --{r = 0.7, g = 0.7, b = 0.6},
    max_temperature = 0,
  },
  {
    type = "fluid",
    name = "angels-water-thin-mud",
    --adds number to icon to better distinguish
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_viscous_liquid_fluid_icon(
        nil,
        { { 039, 112, 194 }, { 109, 070, 020 }, { 070, 133, 232, 0.8 }, { 070, 133, 232, 0.8 } }
      ),
      4, angelsmods.refining.number_tint
    ),
    subgroup = "angels-water-washing-fluid",
    order = "e",
    default_temperature = 0,
    heat_capacity = "0.1kJ",
    base_color = mud_blending(0.2), --{r = 0.7, g = 0.7, b = 0.6},
    flow_color = mud_blending(0.2, 0.9), --{r = 0.7, g = 0.7, b = 0.6},
    max_temperature = 0,
  },
  --VOID
  {
    type = "item",
    name = "angels-water-void",
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-mid.png",
        icon_size = 750,
        scale = 32 / 750,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/clarifier.png",
        icon_size = 64,
        scale = 0.7 * 0.5,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/void.png",
        icon_size = 32,
        scale = 0.4,
        shift = { 9.6, 9.6 },
      },
    },
    hidden = true,
    subgroup = "angels-void",
    order = "zzz[water-void]",
    stack_size = 200,
  },
})
