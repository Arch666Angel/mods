local cargo_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation
local cargo_selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation

local funcs = require("prototypes.train-functions")
local simulations = require("prototypes.factoriopedia-simulations")

local fixed_tint = { r = 119 / 255, g = 127 / 255, b = 113 / 255, a = 0.8 }
local tintable_tint = { r = 1, g = 0.38, b = 0.0, a = 0.5 } -- alpha must be 0.5 due to base game...

data:extend({
  {
    type = "equipment-grid",
    name = "angels-smelting-wagon",
    width = 12,
    height = 12,
    equipment_categories = { "angels-void" }, --"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "smelting-wagon-1",
  icon = "__angelsaddons-mobility__/graphics/icons/smelting-wagon1.png",
  icon_size = 32,
  subgroup = "angels-smeltingtrain",
  order = "z[angel-train]-b[smelting]-c[wagon]",
  place_result = "smelting-wagon-1",
  stack_size = 5,
})

funcs.generate_train_entities({
  type = "cargo-wagon",
  name = "smelting-wagon-1",
  icon = "__angelsaddons-mobility__/graphics/icons/smelting-wagon1.png",
  icon_size = 32,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  inventory_size = 64,
  minable = { mining_time = 1, result = "smelting-wagon-1" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 1000,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  factoriopedia_simulation = simulations.factoriopedia_smelting_wagon,
  collision_box = { { -0.6, -2.4 }, { 0.6, 2.4 } },
  selection_box = { { -1, -2.703125 }, { 1, 3.296875 } },
  vertical_selection_shift = -0.796875,
  weight = 2000,
  max_speed = 1.5,
  braking_force = 0.1,
  friction_force = 0.50,
  air_resistance = 0.01,
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 5,
  equipment_grid = "angels-smelting-wagon",
  fast_replaceable_group = "angels-smelting-wagon",
  allow_robot_dispatch_in_automatic_mode = true,
  minimap_representation = cargo_minimap_representation,
  selected_minimap_representation = cargo_selected_minimap_representation,
  allow_manual_color = true,
  color = tintable_tint,
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
  back_light = {
    {
      minimum_darkness = 0.3,
      color = { 1, 0.1, 0.05, 0 },
      shift = { -0.6, 3.5 },
      size = 2,
      intensity = 0.6,
      add_perspective = true,
    },
    {
      minimum_darkness = 0.3,
      color = { 1, 0.1, 0.05, 0 },
      shift = { 0.6, 3.5 },
      size = 2,
      intensity = 0.6,
      add_perspective = true,
    },
  },
  stand_by_light = {
    {
      minimum_darkness = 0.3,
      color = { 0.05, 0.2, 1, 0 },
      shift = { -0.6, -3.5 },
      size = 2,
      intensity = 0.5,
      add_perspective = true,
    },
    {
      minimum_darkness = 0.3,
      color = { 0.05, 0.2, 1, 0 },
      shift = { 0.6, -3.5 },
      size = 2,
      intensity = 0.5,
      add_perspective = true,
    },
  },
  pictures = {
    rotated = {
      layers = {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 64,
          filenames = {
            "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-1-base.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.0, -0.75 },
          back_equals_front = true,
        },
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 64,
          filenames = {
            "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-1-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = false,
          tint = fixed_tint,
          shift = { 0.0, -0.75 },
          back_equals_front = true,
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 256,
          height = 256,
          direction_count = 64,
          filenames = {
            "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-1-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = true,
          shift = { 0.0, -0.75 },
          back_equals_front = true,
        },
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 64,
          draw_as_shadow = true,
          filenames = {
            "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-shadow-1.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.5, -0.5 },
        },
      },
    },
  },
  horizontal_doors = {
    layers = {
      {
        filename = "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-door-horizontal-base.png",
        line_length = 8,
        width = 256,
        height = 256,
        frame_count = 8,
        shift = { 0.0, -0.75 },
      },
      {
        filename = "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-door-horizontal-tint.png",
        line_length = 8,
        width = 256,
        height = 256,
        frame_count = 8,
        apply_runtime_tint = false,
        tint = fixed_tint,
        shift = { 0.0, -0.75 },
      },
      {
        flags = { "mask" },
        filename = "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-door-horizontal-tint.png",
        line_length = 8,
        width = 256,
        height = 256,
        frame_count = 8,
        apply_runtime_tint = true,
        shift = { 0.0, -0.75 },
      },
    },
  },
  vertical_doors = {
    layers = {
      {
        filename = "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-door-vertical-base.png",
        line_length = 8,
        width = 256,
        height = 256,
        frame_count = 8,
        shift = { 0.0, -0.75 },
      },
      {
        filename = "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-door-vertical-tint.png",
        line_length = 8,
        width = 256,
        height = 256,
        frame_count = 8,
        apply_runtime_tint = false,
        tint = fixed_tint,
        shift = { 0.0, -0.75 },
      },
      {
        flags = { "mask" },
        filename = "__angelsaddons-mobility__/graphics/entity/smelting-wagon1/smelting-wagon1-door-vertical-tint.png",
        line_length = 8,
        width = 256,
        height = 256,
        frame_count = 8,
        apply_runtime_tint = true,
        shift = { 0.0, -0.75 },
      },
    },
  },
  wheels = funcs.standard_train_wheels,
  drive_over_tie_trigger = {
    type = "play-sound",
    sound = sound_variations("__base__/sound/train-tie", 6, 0.4, { volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3) }),
  },
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
  impact_category = "metal",
})
