local minimap_representation = data.raw["locomotive"]["locomotive"].minimap_representation
local selected_minimap_representation = data.raw["locomotive"]["locomotive"].selected_minimap_representation

local funcs = require("prototypes/train-functions")

local fixed_tint = { r = 000 / 255, g = 000 / 255, b = 000 / 255, a = 0.4 }
local tintable_tint = { r = 210 / 255, g = 020 / 255, b = 000 / 255, a = 0.5 } -- alpha must be 0.5 due to base game...

data:extend({
  {
    type = "equipment-grid",
    name = "angels-petro-locomotive",
    width = 6,
    height = 6,
    equipment_categories = { "angels-void" }, --"angels-energy", "angels-heavy-defense", "angels-movement"
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "petro-locomotive-1",
  icon = "__angelsaddons-mobility__/graphics/icons/petro-loco-1-ico.png",
  icon_size = 32,
  subgroup = "angels-petrotrain",
  order = "z[angel-train]-c[petro]-a[locomotive]",
  place_result = "petro-locomotive-1",
  stack_size = 5,
})

funcs.generate_train_entities({
  type = "locomotive",
  name = "petro-locomotive-1",
  icon = "__angelsaddons-mobility__/graphics/icons/petro-loco-1-ico.png",
  icon_size = 32,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  minable = { mining_time = 1, result = "petro-locomotive-1" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 2500,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
  selection_box = { { -1, -3 }, { 1, 3 } },
  drawing_box = { { -1, -4 }, { 1, 3 } },
  color = tintable_tint,
  allow_manual_color = true,
  weight = 3000,
  max_speed = 1.2,
  max_power = "800kW",
  reversing_power_modifier = 0.6,
  braking_force = 15,
  friction_force = 0.60,
  vertical_selection_shift = -0.5,
  air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 5,
  equipment_grid = "angels-petro-locomotive",
  fast_replaceable_group = "angels-petro-locomotive",
  allow_robot_dispatch_in_automatic_mode = true,
  minimap_representation = minimap_representation,
  selected_minimap_representation = selected_minimap_representation,
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
  burner = {
    fuel_category = "chemical",
    effectivity = 1,
    fuel_inventory_size = 3,
    smoke = {
      {
        name = "train-smoke",
        deviation = { 0.3, 0.3 },
        frequency = 100,
        position = { 0, 2 },
        starting_frame = 0,
        starting_frame_deviation = 60,
        height = 2,
        height_deviation = 0.5,
        starting_vertical_speed = 0.2,
        starting_vertical_speed_deviation = 0.1,
      },
    },
  },
  front_light = {
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture = {
        filename = "__core__/graphics/light-cone.png",
        priority = "medium",
        scale = 2,
        width = 200,
        height = 200,
      },
      shift = { -0.6, -17 },
      size = 2,
      intensity = 0.6,
    },
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture = {
        filename = "__core__/graphics/light-cone.png",
        priority = "medium",
        scale = 2,
        width = 200,
        height = 200,
      },
      shift = { 0.6, -17 },
      size = 2,
      intensity = 0.6,
    },
  },
  back_light = rolling_stock_back_light(),
  stand_by_light = rolling_stock_stand_by_light(),
  pictures = {
    layers = {
      {
        priority = "very-low",
        width = 256,
        height = 256,
        direction_count = 128,
        filenames = {
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-1.png",
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-2.png",
        },
        line_length = 8,
        lines_per_file = 8,
        shift = { 0.0, -0.75 },
      },
      {
        priority = "very-low",
        flags = { "mask" },
        width = 256,
        height = 256,
        direction_count = 128,
        filenames = {
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-1-tint.png",
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-2-tint.png",
        },
        line_length = 8,
        lines_per_file = 8,
        apply_runtime_tint = true,
        shift = { 0.0, -0.75 },
      },
      {
        priority = "very-low",
        flags = { "mask" },
        width = 256,
        height = 256,
        direction_count = 128,
        filenames = {
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-1-tint.png",
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-2-tint.png",
        },
        line_length = 8,
        lines_per_file = 8,
        apply_runtime_tint = false,
        tint = fixed_tint,
        shift = { 0.0, -0.75 },
      },
      {
        priority = "very-low",
        flags = { "compressed" },
        width = 256,
        height = 256,
        direction_count = 128,
        draw_as_shadow = true,
        filenames = {
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-shadow-1.png",
          "__angelsaddons-mobility__/graphics/entity/petro-loco1/petro-loco1-shadow-2.png",
        },
        line_length = 8,
        lines_per_file = 8,
        shift = { 0.5, -0.5 },
      },
    },
  },
  wheels = standard_train_wheels,
  stop_trigger = {
    -- left side
    {
      type = "create-trivial-smoke",
      repeat_count = 50,
      smoke_name = "smoke-train-stop",
      initial_height = 0,
      -- smoke goes to the left
      speed = { -0.03, 0 },
      speed_multiplier = 0.75,
      speed_multiplier_deviation = 1.1,
      offset_deviation = { { -0.75, -2.7 }, { -0.3, -1 } },
    },
    -- right side
    {
      type = "create-trivial-smoke",
      repeat_count = 50,
      smoke_name = "smoke-train-stop",
      initial_height = 0,
      -- smoke goes to the right
      speed = { 0.03, 0 },
      speed_multiplier = 0.75,
      speed_multiplier_deviation = 1.1,
      offset_deviation = { { 0.3, -2.7 }, { 0.75, -1 } },
    },
    {
      type = "play-sound",
      sound = {
        {
          filename = "__base__/sound/train-breaks.ogg",
          volume = 0.6,
        },
      },
    },
  },
  drive_over_tie_trigger = drive_over_tie(),
  tie_distance = 50,
  vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound = {
    sound = {
      filename = "__base__/sound/train-engine.ogg",
      volume = 0.4,
    },
    match_speed_to_activity = true,
  },
  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
  close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
  sound_minimum_speed = 0.5,
})
