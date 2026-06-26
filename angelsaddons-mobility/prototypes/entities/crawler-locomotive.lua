local minimap_representation = data.raw["locomotive"]["locomotive"].minimap_representation
local selected_minimap_representation = data.raw["locomotive"]["locomotive"].selected_minimap_representation

local funcs = require("prototypes.train-functions")
local simulations = require("prototypes.factoriopedia-simulations")

data:extend({
  {
    type = "equipment-grid",
    name = "angels-crawler-locomotive",
    width = 6,
    height = 6,
    equipment_categories = { "angels-void" },
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "angels-crawler-locomotive",
  icon = "__angelsaddons-mobility-graphics-crawler__/graphics/icons/crawler-locomotive.png",
  icon_size = 64,
  subgroup = "angels-vehicle-train-crawler",
  order = "a[locomotive]",
  place_result = "angels-crawler-locomotive",
  stack_size = 5,
})

--- braking_force OR braking_power, but diagnostics wants both to be compliant.
---@diagnostic disable: missing-fields
funcs.generate_train_entities({
  type = "locomotive",
  name = "angels-crawler-locomotive",
  icon = "__angelsaddons-mobility-graphics-crawler__/graphics/icons/crawler-locomotive.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  minable = { mining_time = 1, result = "angels-crawler-locomotive" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 2500,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  factoriopedia_simulation = simulations.factoriopedia_crawler_locomotive,
  collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
  selection_box = { { -1, -3 }, { 1, 3 } },
  allow_manual_color = true,
  allow_remote_driving = true,
  color = funcs.default_train_colors.crawler,
  weight = 3000,
  max_speed = 1.2 * 300 / 259,
  max_power = "800kW",
  reversing_power_modifier = 0.6,
  braking_force = 15,
  friction_force = 0.60,
  vertical_selection_shift = -0.5,
  air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 5,
  equipment_grid = "angels-crawler-locomotive",
  fast_replaceable_group = "angels-crawler-locomotive",
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
  energy_source = {
    type = "burner",
    fuel_categories = { "chemical" },
    effectivity = 1,
    fuel_inventory_size = 3,
    smoke = {
      {
        name = "train-smoke",
        deviation = { 0.3, 0.3 },
        frequency = 100,
        position = { 0, 3 },
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
      shift = { -0.6, -16 },
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
      shift = { 0.6, -16 },
      size = 2,
      intensity = 0.6,
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
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive",
          {
            dice = 4,
            priority = "very-low",
            allow_low_quality_rotation = true,
            direction_count = 256,
            scale = 0.5,
            usage = "train",
          }
        ),
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-mask",
          {
            dice = 4,
            priority = "very-low",
            apply_runtime_tint = true,
            tint_as_overlay = true,
            flags = { "mask" },
            allow_low_quality_rotation = true,
            direction_count = 256,
            scale = 0.5,
            usage = "train",
          }
        ),
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-running-lights",
          {
            dice = 4,
            priority = "very-low",
            draw_as_light = true,
            allow_low_quality_rotation = true,
            direction_count = 256,
            scale = 0.5,
            usage = "train",
          }
        ),
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-shadow",
          {
            dice = 4,
            priority = "very-low",
            flags = { "shadow" },
            draw_as_shadow = true,
            allow_low_quality_rotation = true,
            direction_count = 256,
            scale = 0.5,
            usage = "train",
          }
        ),
      },
    },
    slope_angle_between_frames = 1.25,
    sloped = funcs.use_sloped_train_features
        and {
          layers = {
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-sloped",
              {
                dice = 4,
                priority = "very-low",
                direction_count = 160,
                scale = 0.5,
                usage = "train",
              }
            ),
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-sloped-mask",
              {
                dice = 4,
                priority = "very-low",
                apply_runtime_tint = true,
                tint_as_overlay = true,
                flags = { "mask" },
                direction_count = 160,
                scale = 0.5,
                usage = "train",
              }
            ),
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-sloped-running-lights",
              {
                dice = 4,
                priority = "very-low",
                draw_as_light = true,
                direction_count = 160,
                scale = 0.5,
                usage = "train",
              }
            ),
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-sloped-shadow",
              {
                dice = 4,
                priority = "very-low",
                flags = { "shadow" },
                draw_as_shadow = true,
                direction_count = 160,
                scale = 0.5,
                usage = "train",
              }
            ),
          },
        }
      or nil,
  },
  front_light_pictures = {
    rotated = {
      layers = {
        util.sprite_load(
          "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-lights",
          {
            dice = 4,
            priority = "very-low",
            blend_mode = "additive",
            draw_as_light = true,
            allow_low_quality_rotation = true,
            direction_count = 256,
            scale = 0.5,
            usage = "train",
          }
        ),
      },
    },
    slope_angle_between_frames = 1.25,
    sloped = funcs.use_sloped_train_features
        and {
          layers = {
            util.sprite_load(
              "__angelsaddons-mobility-graphics-crawler__/graphics/entity/crawler-locomotive/crawler-locomotive-sloped-lights",
              {
                dice = 4,
                priority = "very-low",
                blend_mode = "additive",
                draw_as_light = true,
                direction_count = 160,
                scale = 0.5,
                usage = "train",
              }
            ),
          },
        }
      or nil,
  },
  wheels = funcs.standard_train_wheels,
  stop_trigger = {
    -- left side
    {
      type = "create-trivial-smoke",
      repeat_count = 50, --125
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
      repeat_count = 50, --125
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
  impact_category = "metal",
  working_sound = {
    sound = {
      filename = "__base__/sound/train-engine.ogg",
      volume = 0.4,
    },
    match_speed_to_activity = true,
  },
  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
  close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
})
