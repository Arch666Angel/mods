local setting = require("prototypes/settings").equipment
local energyInterface = setting["energy-interface"]

local localisedPrefixes = {
  { "si-prefix-symbol-kilo" },
  { "si-prefix-symbol-mega" },
  { "si-prefix-symbol-giga" },
  { "si-prefix-symbol-tera" },
  { "si-prefix-symbol-peta" },
  { "si-prefix-symbol-exa" },
  { "si-prefix-symbol-zetta" },
  { "si-prefix-symbol-yotta" },
}
local getLocalisedUnit = function(value, localisedUnitSymbol, roundPresicion)
  -- roundPresicion defaults to 0 (aka integer value)

  local prefix = #localisedPrefixes
  local prefixIndex = 0
  while value > 1000 and prefixIndex < prefix do
    value = value / 1000
    prefixIndex = prefixIndex + 1
  end
  prefix = localisedPrefixes[prefixIndex]

  if roundPresicion then -- make sure it is an uint value
    roundPresicion = math.floor(roundPresicion + 0.5)
    roundPresicion = roundPresicion > 0 and roundPresicion or nil
  end

  return {
    "",
    string.format(roundPresicion and "%." .. roundPresicion .. "f " or "%i ", value),
    prefix or localisedUnitSymbol,
    prefix and localisedUnitSymbol or nil,
  }
end

-------------------------------------------------------------------------------
-- CAB ENERGY TRANSFER PORT MK1                                              --
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = string.format(energyInterface.name, "-mk1"),
    localised_name = { "equipment-name." .. string.format(energyInterface.name, ""), "MK1" },
    localised_description = {
      "",
      { "equipment-description." .. string.format(energyInterface.name, "") },
      {
        "tooltip-description.custom-parameter",
        { "custom-parameter-description.maximum-power-transfer" },
        getLocalisedUnit(energyInterface.transferRates["mk1"] * 60, { "si-unit-symbol-watt" }),
      },
      {
        "tooltip-description.custom-parameter",
        { "description.supply-area" },
        string.format("%i×%i", energyInterface.supplyArea, energyInterface.supplyArea),
      },
    },
    icon = "__angelsaddons-cab__/graphics/icons/cab-energy-interface-mk1.png",
    icon_size = 32,
    placed_as_equipment_result = string.format(energyInterface.name, "-mk1"),
    subgroup = mods["angelsindustries"] and "angels-vehicle-car" or "angels-cab",
    order = mods["angelsindustries"] and "b[crawlers]-e" or "e[angels-cab-energy-interface]-a",
    stack_size = 50,
    default_request_amount = 10,
  },
})
data:extend({
  {
    type = "night-vision-equipment",
    name = data.raw["item"][string.format(energyInterface.name, "-mk1")].placed_as_equipment_result,
    localised_name = data.raw["item"][string.format(energyInterface.name, "-mk1")].localised_name,
    localised_description = data.raw["item"][string.format(energyInterface.name, "-mk1")].localised_description,
    sprite = {
      filename = "__angelsaddons-cab__/graphics/equipment/cab-energy-interface-mk1.png",
      width = 96,
      height = 96,
      priority = "medium",
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = string.format("%iJ", energyInterface.transferRates["mk1"]),
      --drain             = "0W",
      input_flow_limit = string.format("%iW", energyInterface.transferRates["mk1"] * 60),
      --output_flow_limit = "0W",
    },
    energy_input = "0W",
    tint = { r = 1, g = 1, b = 1, a = 0 },
    desaturation_params = {
      smoothstep_min = 0.1,
      smoothstep_max = 0.7,
      minimum = 0.3,
      maximum = 1.0,
    },
    light_params = {
      smoothstep_min = 0.1,
      smoothstep_max = 0.7,
      minimum = 0.666,
      maximum = 1.0,
    },
    categories = { "angels-cab" },
    darkness_to_turn_on = 0,
    color_lookup = { { 0.5, "__core__/graphics/color_luts/nightvision.png" } },
  },
})
data:extend({
  {
    type = "electric-energy-interface",
    name = data.raw["item"][string.format(energyInterface.name, "-mk1")].placed_as_equipment_result,
    localised_name = data.raw["item"][string.format(energyInterface.name, "-mk1")].localised_name,
    localised_description = data.raw["item"][string.format(energyInterface.name, "-mk1")].localised_description,
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = { "not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info" },
    enable_gui = false,
    allow_copy_paste = false,
    --minable = {mining_time = 1, result = energyInterfaceItem.name},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
    collision_mask = {},
    --selection_box = {{-0.35, -0.35}, {0.35, 0.35}},
    energy_source = {
      type = "electric",
      usage_priority = "tertiary",
      buffer_capacity = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk1")].energy_source.buffer_capacity,
      drain = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk1")].energy_source.drain,
      input_flow_limit = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk1")].energy_source.output_flow_limit,
      output_flow_limit = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk1")].energy_source.input_flow_limit,

      render_no_network_icon = false,
      render_no_power_icon = false,
    },
    energy_production = "0kW",
    energy_consumption = "0kW",
    picture = {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
    },
    working_sound = nil,
  },
})

-------------------------------------------------------------------------------
-- CAB ENERGY TRANSFER PORT MK2                                              --
-------------------------------------------------------------------------------
--[[data:extend{{
  type = "item",
  name = string.format(energyInterface.name, "-mk2"),
  localised_name = {"equipment-name."..string.format(energyInterface.name, ""), "MK2"},
  localised_description = {"",
    {"equipment-description."..string.format(energyInterface.name, "")},
    {"tooltip-description.custom-parameter",
      {"custom-parameter-description.maximum-power-transfer"},
      getLocalisedUnit(energyInterface.transferRates["mk2"] * 60, {"si-unit-symbol-watt"})
    },
    {"tooltip-description.custom-parameter",
      {"description.supply-area"},
      string.format("%i×%i", energyInterface.supplyArea, energyInterface.supplyArea)
    },
  },
  icon = "__angelsaddons-cab__/graphics/icons/cab-energy-interface-mk2.png",
  icon_size = 32,
  placed_as_equipment_result = string.format(energyInterface.name, "-mk2"),
  subgroup = "angels-cab",
  order = "e[angels-cab-energy-interface]-b",
  stack_size = 50,
  default_request_amount = 10
}}
data:extend{{
  type = "night-vision-equipment",
  name = data.raw["item"][string.format(energyInterface.name, "-mk2")].placed_as_equipment_result,
  localised_name        = data.raw["item"][string.format(energyInterface.name, "-mk2")].localised_name,
  localised_description = data.raw["item"][string.format(energyInterface.name, "-mk2")].localised_description,
  sprite =
  {
    filename = "__angelsaddons-cab__/graphics/equipment/cab-energy-interface-mk2.png",
    width = 96*2,
    height = 96*2,
    priority = "medium"
  },
  shape =
  {
    width = 8,
    height = 8,
    type = "manual",
    points = {
      {0, 0}, {1, 0}, {2, 0}, {3, 0}, {4, 0}, {5, 0}, {6, 0}, {7, 0},
      {0, 1}, {1, 1}, {2, 1}, {3, 1}, {4, 1}, {5, 1}, {6, 1}, {7, 1},
      {0, 2}, {1, 2},                                 {6, 2}, {7, 2},
      {0, 3}, {1, 3},                                 {6, 3}, {7, 3},
      {0, 4}, {1, 4},                                 {6, 4}, {7, 4},
      {0, 5}, {1, 5},                                 {6, 5}, {7, 5},
      {0, 6}, {1, 6}, {2, 6}, {3, 6}, {4, 6}, {5, 6}, {6, 6}, {7, 6},
      {0, 7}, {1, 7}, {2, 7}, {3, 7}, {4, 7}, {5, 7}, {6, 7}, {7, 7},
    },
  },
  energy_source =
  {
    type              = "electric",
    usage_priority    = data.raw["night-vision-equipment"][data.raw["item"][string.format(energyInterface.name, "-mk1")].placed_as_equipment_result].energy_source.usage_priority,
    buffer_capacity   = string.format("%iJ", energyInterface.transferRates["mk2"]),
    --drain             = "0W",
    input_flow_limit  = string.format("%iW", energyInterface.transferRates["mk2"] * 60),
    --output_flow_limit = "0W",
  },
  energy_input = "0W",
  tint = {r = 1, g = 1, b = 1, a = 0},
  desaturation_params =
  {
    smoothstep_min = 0.1,
    smoothstep_max = 0.7,
    minimum = 0.3,
    maximum = 1.0
  },
  light_params =
  {
    smoothstep_min = 0.1,
    smoothstep_max = 0.7,
    minimum = 0.666,
    maximum = 1.0
  },
  categories = {"angels-cab"},
  darkness_to_turn_on = 0
}}
data:extend{{
  type = "electric-energy-interface",
  name = data.raw["item"][string.format(energyInterface.name, "-mk2")].placed_as_equipment_result,
  localised_name        = data.raw["item"][string.format(energyInterface.name, "-mk2")].localised_name,
  localised_description = data.raw["item"][string.format(energyInterface.name, "-mk2")].localised_description,
  icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
  icon_size = 32,
  flags = {"not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info"},
  enable_gui = false,
  allow_copy_paste = false,
  --minable = {mining_time = 1, result = energyInterfaceItem.name},
  max_health = 50,
  corpse = "small-remnants",
  collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
  collision_mask = {},
  --selection_box = {{-0.35, -0.35}, {0.35, 0.35}},
  energy_source =
  {
    type              = "electric",
    usage_priority    = data.raw["electric-energy-interface"][data.raw["item"][string.format(energyInterface.name, "-mk1")].placed_as_equipment_result].energy_source.usage_priority,
    buffer_capacity   = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk2")].energy_source.buffer_capacity,
    drain             = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk2")].energy_source.drain,
    input_flow_limit  = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk2")].energy_source.output_flow_limit,
    output_flow_limit = data.raw["night-vision-equipment"][string.format(energyInterface.name, "-mk2")].energy_source.input_flow_limit,

    render_no_network_icon = false,
    render_no_power_icon = false,
  },
  energy_production = "0kW",
  energy_consumption = "0kW",
  picture =
  {
    filename = "__core__/graphics/empty.png",
    priority = "low",
    width = 1,
    height = 1,
  },
  working_sound = nil,
}}--]]
