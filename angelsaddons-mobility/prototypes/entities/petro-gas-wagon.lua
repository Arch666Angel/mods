local fluid_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].minimap_representation
local fluid_selected_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].selected_minimap_representation

local funcs = require("prototypes.train-functions")
local simulations = require("prototypes.factoriopedia-simulations")

data:extend({
  {
    type = "equipment-grid",
    name = "angels-petro-gas-wagon",
    width = 12,
    height = 12,
    equipment_categories = { "angels-void" }, --"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "angels-petro-gas-wagon",
  icon = "__angelsaddons-mobility-graphics-petro__/graphics/icons/petro-gas-wagon.png",
  icon_size = 64,
  subgroup = "angels-petrotrain",
  order = "z[angel-train]-c[petro]-b[gas-wagon]",
  place_result = "angels-petro-gas-wagon",
  stack_size = 5,
})

--- braking_force OR braking_power, but diagnostics wants both to be compliant.
---@diagnostic disable: missing-fields
funcs.generate_train_entities({
  type = "fluid-wagon",
  name = "angels-petro-gas-wagon",
  icon = "__angelsaddons-mobility-graphics-petro__/graphics/icons/petro-gas-wagon.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  minable = { mining_time = 1, result = "angels-petro-gas-wagon" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 600,
  capacity = mods["angelspetrochem"] and 40000 or 25000,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  factoriopedia_simulation = simulations.factoriopedia_petro_tank1,
  collision_box = { { -0.6, -2.4 }, { 0.6, 2.4 } },
  selection_box = { { -1, -2.703125 }, { 1, 3.296875 } },
  vertical_selection_shift = -0.796875,
  weight = 1000,
  max_speed = 1.5,
  braking_force = 3,
  friction_force = 0.50,
  air_resistance = 0.05,
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 6,
  equipment_grid = "angels-petro-gas-wagon",
  fast_replaceable_group = "angels-petro-gas-wagon",
  minimap_representation = fluid_minimap_representation,
  selected_minimap_representation = fluid_selected_minimap_representation,
  allow_manual_color = true,
  color = funcs.default_train_colors.petro,
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
        util.sprite_load("__angelsaddons-mobility-graphics-petro__/graphics/entity/petro-gas-wagon/petro-gas-wagon", {
          dice = 4,
          priority = "very-low",
          allow_low_quality_rotation = true,
          back_equals_front = true,
          direction_count = 128,
          scale = 0.5,
          usage = "train",
        }),
        util.sprite_load(
          "__angelsaddons-mobility-graphics-petro__/graphics/entity/petro-gas-wagon/petro-gas-wagon-mask",
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
          "__angelsaddons-mobility-graphics-petro__/graphics/entity/petro-gas-wagon/petro-gas-wagon-shadow",
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
              "__angelsaddons-mobility-graphics-petro__/graphics/entity/petro-gas-wagon/petro-gas-wagon-sloped",
              {
                dice = 4,
                priority = "very-low",
                direction_count = 80,
                scale = 0.5,
                usage = "train",
              }
            ),
            util.sprite_load(
              "__angelsaddons-mobility-graphics-petro__/graphics/entity/petro-gas-wagon/petro-gas-wagon-sloped-mask",
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
              "__angelsaddons-mobility-graphics-petro__/graphics/entity/petro-gas-wagon/petro-gas-wagon-sloped-shadow",
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
  impact_category = "wood",
})
