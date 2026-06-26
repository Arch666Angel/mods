local cargo_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation
local cargo_selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation

local funcs = require("prototypes.train-functions")
local simulations = require("prototypes.factoriopedia-simulations")

data:extend({
  {
    type = "equipment-grid",
    name = "angels-crawler-cargo-wagon",
    width = 12,
    height = 12,
    equipment_categories = { "angels-void" },
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "angels-crawler-cargo-wagon",
  icon = "__angelsaddons-mobility-graphics-crawler__/graphics/icons/crawler-cargo-wagon.png",
  icon_size = 64,
  subgroup = "angels-vehicle-train-crawler",
  order = "c[cargo-wagon]",
  place_result = "angels-crawler-cargo-wagon",
  stack_size = 5,
})

--- braking_force OR braking_power, but diagnostics wants both to be compliant.
---@diagnostic disable: missing-fields
funcs.generate_train_entities({
  type = "cargo-wagon",
  name = "angels-crawler-cargo-wagon",
  icon = "__angelsaddons-mobility-graphics-crawler__/graphics/icons/crawler-cargo-wagon.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  inventory_size = 60,
  minable = { mining_time = 1, result = "angels-crawler-cargo-wagon" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 1000,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  factoriopedia_simulation = simulations.factoriopedia_crawler_wagon,
  collision_box = { { -0.6, -2.4 }, { 0.6, 2.4 } },
  selection_box = { { -1, -2.703125 }, { 1, 3.296875 } },
  vertical_selection_shift = -0.796875,
  weight = 1500,
  max_speed = 1.5,
  braking_force = 3,
  friction_force = 0.50,
  air_resistance = 0.01,
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 5,
  equipment_grid = "angels-crawler-cargo-wagon",
  fast_replaceable_group = "angels-crawler-cargo-wagon",
  allow_robot_dispatch_in_automatic_mode = true,
  minimap_representation = cargo_minimap_representation,
  selected_minimap_representation = cargo_selected_minimap_representation,
  allow_manual_color = true,
  color = funcs.default_train_colors.crawler,
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
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon",
          {
            dice = 4,
            priority = "very-low",
            allow_low_quality_rotation = true,
            back_equals_front = true,
            direction_count = 128,
            scale = 0.5,
            usage = "train",
          }
        ),
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-mask",
          {
            dice = 4,
            priority = "very-low",
            apply_runtime_tint = true,
            tint_as_overlay = true,
            flags = { "mask" },
            allow_low_quality_rotation = true,
            back_equals_front = true,
            direction_count = 128,
            scale = 0.5,
            usage = "train",
          }
        ),
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-shadow",
          {
            dice = 4,
            priority = "very-low",
            flags = { "shadow" },
            draw_as_shadow = true,
            allow_low_quality_rotation = true,
            back_equals_front = true,
            direction_count = 128,
            scale = 0.5,
            usage = "train",
          }
        ),
      },
    },
    slope_angle_between_frames = 1.25,
    slope_back_equals_front = true,
    sloped = funcs.use_sloped_train_features
        and {
          layers = {
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-sloped",
              {
                dice = 4,
                priority = "very-low",
                direction_count = 80,
                scale = 0.5,
                usage = "train",
              }
            ),
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-sloped-mask",
              {
                dice = 4,
                priority = "very-low",
                apply_runtime_tint = true,
                tint_as_overlay = true,
                flags = { "mask" },
                direction_count = 80,
                scale = 0.5,
                usage = "train",
              }
            ),
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-sloped-shadow",
              {
                dice = 4,
                priority = "very-low",
                flags = { "shadow" },
                draw_as_shadow = true,
                direction_count = 80,
                scale = 0.5,
                usage = "train",
              }
            ),
          },
        }
      or nil,
  },
  horizontal_doors = {
    layers = {
      util.sprite_load(
        "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-door-horizontal",
        {
          frame_count = 8,
          scale = 0.5,
          usage = "train",
        }
      ),
      util.sprite_load(
        "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-door-horizontal-mask",
        {
          apply_runtime_tint = true,
          tint_as_overlay = true,
          flags = { "mask" },
          frame_count = 8,
          scale = 0.5,
          usage = "train",
        }
      ),
      util.sprite_load(
        "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-door-horizontal-shadow",
        {
          flags = { "shadow" },
          draw_as_shadow = true,
          frame_count = 8,
          scale = 0.5,
          usage = "train",
        }
      ),
    },
  },
  vertical_doors = {
    layers = {
      util.sprite_load(
        "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-door-vertical",
        {
          frame_count = 8,
          scale = 0.5,
          usage = "train",
        }
      ),
      util.sprite_load(
        "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-door-vertical-mask",
        {
          apply_runtime_tint = true,
          tint_as_overlay = true,
          flags = { "mask" },
          frame_count = 8,
          scale = 0.5,
          usage = "train",
        }
      ),
      util.sprite_load(
        "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-cargo-wagon/crawler-cargo-wagon-door-vertical-shadow",
        {
          flags = { "shadow" },
          draw_as_shadow = true,
          frame_count = 8,
          scale = 0.5,
          usage = "train",
        }
      ),
    },
  },
  wheels = funcs.standard_train_wheels,
  drive_over_tie_trigger = {
    type = "play-sound",
    sound = sound_variations(
      "__base__/sound/train-tie",
      6,
      0.4,
      { volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3) }
    ),
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
  impact_category = "wood",
})
