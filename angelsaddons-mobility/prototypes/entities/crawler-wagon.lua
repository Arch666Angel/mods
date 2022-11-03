local cargo_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation
local cargo_selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation

local funcs = require("prototypes/train-functions")

data:extend({
  {
    type = "equipment-grid",
    name = "angels-crawler-wagon",
    width = 12,
    height = 12,
    equipment_categories = { "angels-void" },
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "crawler-wagon",
  icon = "__angelsaddons-mobility__/graphics/icons/crawler-wagon-ico.png",
  icon_size = 32,
  subgroup = "angels-vehicle-train-crawler",
  order = "c[wagon]",
  place_result = "crawler-wagon",
  stack_size = 5,
})

funcs.generate_train_entities({
  type = "cargo-wagon",
  name = "crawler-wagon",
  icon = "__angelsaddons-mobility__/graphics/icons/crawler-wagon-ico.png",
  icon_size = 32,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  inventory_size = 60,
  minable = { mining_time = 1, result = "crawler-wagon" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 1000,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  collision_box = { { -0.6, -2.4 }, { 0.6, 2.4 } },
  selection_box = { { -1, -2.703125 }, { 1, 3.296875 } },
  color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
  allow_manual_color = true,
  vertical_selection_shift = -0.796875,
  weight = 1500,
  max_speed = 1.5,
  braking_force = 3,
  friction_force = 0.50,
  air_resistance = 0.01,
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 5,
  equipment_grid = "angels-crawler-wagon",
  fast_replaceable_group = "angels-crawler-wagon",
  allow_robot_dispatch_in_automatic_mode = true,
  minimap_representation = cargo_minimap_representation,
  selected_minimap_representation = cargo_selected_minimap_representation,
  resistances = {
    {
      type = "fire",
      decrease = 15,
      percent = 50,
    },
    {
      type = "physical",
      decrease = 15,
      percent = 30,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "explosion",
      decrease = 15,
      percent = 30,
    },
    {
      type = "acid",
      decrease = 10,
      percent = 20,
    },
  },
  back_light = rolling_stock_back_light(),
  stand_by_light = rolling_stock_stand_by_light(),
  pictures = {
    priority = "very-low",
    width = 256,
    height = 256,
    direction_count = 64,
    filenames = {
      "__angelsaddons-mobility__/graphics/entity/crawler-train/crawler-wagon.png",
    },
    line_length = 8,
    lines_per_file = 8,
    shift = { 0, -0.75 },
  },
  wheels = standard_train_wheels,
  drive_over_tie_trigger = drive_over_tie(),
  tie_distance = 50,
  working_sound = {
    sound = {
      filename = "__base__/sound/train-wheels.ogg",
      volume = 0.6,
    },
    match_volume_to_activity = true,
  },
  crash_trigger = crash_trigger(),
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  sound_minimum_speed = 0.5,
  vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
})
