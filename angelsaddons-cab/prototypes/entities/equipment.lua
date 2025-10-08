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
    place_as_equipment_result = string.format(energyInterface.name, "-mk1"),
    subgroup = mods["angelsindustries"] and "angels-vehicle-car" or "angels-cab",
    order = mods["angelsindustries"] and "b[crawlers]-e" or "e[angels-cab-energy-interface]-a",
    stack_size = 50,
  },
})
data:extend({
  {
    type = "night-vision-equipment",
    name = data.raw["item"][string.format(energyInterface.name, "-mk1")].place_as_equipment_result,
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
    categories = { "angels-cab" },
    darkness_to_turn_on = 0,
    color_lookup = { { 0.5, "__core__/graphics/color_luts/nightvision.png" } },
  },
})
data:extend({
  {
    type = "electric-energy-interface",
    name = data.raw["item"][string.format(energyInterface.name, "-mk1")].place_as_equipment_result,
    localised_name = data.raw["item"][string.format(energyInterface.name, "-mk1")].localised_name,
    localised_description = data.raw["item"][string.format(energyInterface.name, "-mk1")].localised_description,
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = { "not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info" },
    allow_copy_paste = false,
    --minable = {mining_time = 1, result = energyInterfaceItem.name},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
    collision_mask = { layers = {} },
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
    energy_usage = "0kW",
    picture = {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
    },
    working_sound = nil,
    subgroup = mods["angelsindustries"] and "angels-vehicle-car" or "angels-cab",
    order = "f",
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
  place_as_equipment_result = string.format(energyInterface.name, "-mk2"),
  subgroup = "angels-cab",
  order = "e[angels-cab-energy-interface]-b",
  stack_size = 50,
}}
data:extend{{
  type = "night-vision-equipment",
  name = data.raw["item"][string.format(energyInterface.name, "-mk2")].place_as_equipment_result,
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
    usage_priority    = data.raw["night-vision-equipment"][data.raw["item"][string.format(energyInterface.name, "-mk1")].place_as_equipment_result].energy_source.usage_priority,
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
  name = data.raw["item"][string.format(energyInterface.name, "-mk2")].place_as_equipment_result,
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
  collision_mask = { layers = {} },
  --selection_box = {{-0.35, -0.35}, {0.35, 0.35}},
  energy_source =
  {
    type              = "electric",
    usage_priority    = data.raw["electric-energy-interface"][data.raw["item"][string.format(energyInterface.name, "-mk1")].place_as_equipment_result].energy_source.usage_priority,
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

data:extend({
  --ENERGY
  {
    type = "item",
    name = "angels-burner-generator-vequip",
    icon = "__angelsaddons-cab__/graphics/icons/burner-generator-ico.png",
    icon_size = 32,
    place_as_equipment_result = "angels-burner-generator-vequip",
    subgroup = "angels-vehicle-equipment",
    order = "a[angels-burner-generator-vequip]",
    stack_size = 50,
  },
  {
    type = "generator-equipment",
    name = "angels-burner-generator-vequip",
    sprite = {
      filename = "__angelsaddons-cab__/graphics/equipment/burner-generator-vequip.png",
      width = 64,
      height = 96,
      priority = "medium",
    },
    shape = {
      width = 3,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    burner = {
      type = "burner",
      fuel_categories = { "chemical" },
      effectivity = 0.5,
      fuel_inventory_size = 3,
      burnt_inventory_size = 1,
    },
    power = "7500kW",
    categories = { "angels-energy" },
  },
  {
    type = "item",
    name = "angels-fusion-reactor-vequip",
    icon = "__angelsaddons-cab__/graphics/equipment/fusion-reactor-vequip.png",
    icon_size = 256,
    place_as_equipment_result = "angels-fusion-reactor-vequip",
    subgroup = "angels-vehicle-equipment",
    order = "b[angels-fusion-reactor-vequip]",
    stack_size = 50,
  },
  {
    type = "generator-equipment",
    name = "angels-fusion-reactor-vequip",
    sprite = {
      filename = "__angelsaddons-cab__/graphics/equipment/fusion-reactor-vequip.png",
      width = 256,
      height = 256,
      priority = "medium",
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "15000kW",
    categories = { "angels-energy" },
  },
  --MOVEMENT
  --ROBO
  {
    type = "item",
    name = "angels-repair-roboport-vequip",
    icon = "__angelsaddons-cab__/graphics/equipment/repair-roboport-vequip.png",
    place_as_equipment_result = "angels-repair-roboport-vequip",
    icon_size = 64,
    subgroup = "angels-vehicle-equipment",
    order = "d[angels-repair-roboport-vequip]",
    stack_size = 50,
  },
  {
    type = "roboport-equipment",
    name = "angels-repair-roboport-vequip",
    sprite = {
      filename = "__angelsaddons-cab__/graphics/equipment/repair-roboport-vequip.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "35MJ",
      input_flow_limit = "3500kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 5,
    construction_radius = 3,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "angels-repair" },
  },
  {
    type = "item",
    name = "angels-construction-roboport-vequip",
    icon = "__angelsaddons-cab__/graphics/icons/construction-roboport-ico.png",
    icon_size = 32,
    place_as_equipment_result = "angels-construction-roboport-vequip",
    subgroup = "angels-vehicle-equipment",
    order = "c[angels-construction-roboport-vequip]",
    stack_size = 50,
  },
  {
    type = "roboport-equipment",
    name = "angels-construction-roboport-vequip",
    sprite = {
      filename = "__angelsaddons-cab__/graphics/equipment/construction-roboport-vequip.png",
      width = 96,
      height = 96,
      priority = "medium",
    },
    shape = {
      width = 5,
      height = 5,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "70MJ",
      input_flow_limit = "7000kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "2000kW",
    robot_limit = 50,
    construction_radius = 30,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "angels-construction" },
  },
  --LIGHT DEFENSE
  --HEAVY DEFENSE
  {
    type = "item",
    name = "angels-heavy-energy-shield-vequip",
    icon = "__base__/graphics/icons/energy-shield-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "angels-heavy-energy-shield-vequip",
    subgroup = "angels-vehicle-equipment",
    order = "e[angels-energy-heavy-shield-vequip]",
    stack_size = 20,
  },
  {
    type = "energy-shield-equipment",
    name = "angels-heavy-energy-shield-vequip",
    sprite = {
      filename = "__base__/graphics/equipment/energy-shield-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 3,
      height = 3,
      type = "full",
    },
    max_shield_value = 250,
    energy_source = {
      type = "electric",
      buffer_capacity = "2500kJ",
      input_flow_limit = "5000kW",
      usage_priority = "primary-input",
    },
    energy_per_shield = "150kJ",
    categories = { "angels-heavy-defense" },
  },
  --LIGHT ATTACK
  --HEAVY ATTACK
  {
    type = "item",
    name = "angels-rocket-defense-equipment-vequip",
    hidden = true,  
    icon = "__angelsaddons-cab__/graphics/icons/heavy-tank-rocket-launcher-icon.png",
    icon_size = 32,
    place_as_equipment_result = "angels-rocket-defense-equipment-vequip",
    subgroup = "angels-vehicle-equipment",
    order = "f[rocket-defense-equipment]",
    stack_size = 20,
  },
  {
    type = "active-defense-equipment",
    name = "angels-rocket-defense-equipment-vequip",
    hidden = true,
    sprite = {
      filename = "__angelsaddons-cab__/graphics/equipment/rocket-launcher-equip.png",
      width = 96,
      height = 96,
      priority = "medium",
    },
    shape = {
      width = 3,
      height = 3,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "1000kJ",
    },
    attack_parameters = {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.8,
      cooldown = 60,
      projectile_creation_distance = 0.6,
      range = 20,
      projectile_center = { 1, 0 },
      sound = {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7,
        },
      },
      ammo_type = {
        action = {
          type = "direct",
          action_delivery = {
            type = "projectile",
            projectile = "rocket",
            starting_speed = 0.1,
            source_effects = {
              type = "create-entity",
              entity_name = "explosion-hit",
            },
          },
        },
      },
    },
    automatic = true,
    categories = { "angels-heavy-attack" },
  },
})
