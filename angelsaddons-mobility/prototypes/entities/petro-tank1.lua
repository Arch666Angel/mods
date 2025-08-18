local fluid_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].minimap_representation
local fluid_selected_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].selected_minimap_representation

local funcs = require("prototypes.train-functions")
local simulations = require("prototypes.factoriopedia-simulations")

local fixed_tint = { r = 000 / 255, g = 000 / 255, b = 000 / 255, a = 0.4 }
local tintable_tint = { r = 210 / 255, g = 020 / 255, b = 000 / 255, a = 0.5 } -- alpha must be 0.5 due to base game...

data:extend({
  {
    type = "equipment-grid",
    name = "angels-petro-tank1",
    width = 12,
    height = 12,
    equipment_categories = { "angels-void" }, --"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"
  },
})

funcs.generate_train_items({
  type = "item-with-entity-data",
  name = "petro-tank1",
  icon = "__angelsaddons-mobility__/graphics/icons/petro-tank1-ico.png",
  icon_size = 32,
  subgroup = "angels-petrotrain",
  order = "z[angel-train]-c[petro]-b[tank1]",
  place_result = "petro-tank1",
  stack_size = 5,
})

funcs.generate_train_entities({
  type = "fluid-wagon",
  name = "petro-tank1",
  icon = "__angelsaddons-mobility__/graphics/icons/petro-tank1-ico.png",
  icon_size = 32,
  flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
  minable = { mining_time = 1, result = "petro-tank1" },
  mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
  max_health = 600,
  capacity = mods["angelspetrochem"] and 40000 or 25000,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  factoriopedia_simulation = simulations.factoriopedia_petro_tank1,
  collision_box = { { -0.6, -2.4 }, { 0.6, 2.4 } },
  selection_box = { { -1, -2.703125 }, { 1, 3.296875 } },
  color = tintable_tint,
  vertical_selection_shift = -0.796875,
  weight = 1000,
  max_speed = 1.5,
  braking_force = 3,
  friction_force = 0.50,
  air_resistance = 0.05,
  connection_distance = 3,
  joint_distance = 4,
  energy_per_hit_point = 6,
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
            "__angelsaddons-mobility__/graphics/entity/petro-tank1/petro-tank1.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0, -0.75 },
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 256,
          height = 256,
          direction_count = 64,
          filenames = {
            "__angelsaddons-mobility__/graphics/entity/petro-tank1/petro-tank1-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = true,
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
            "__angelsaddons-mobility__/graphics/entity/petro-tank1/petro-tank1-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = false,
          tint = fixed_tint,
          shift = { 0.0, -0.75 },
          back_equals_front = true,
        },
        {
          width = 256,
          height = 256,
          draw_as_shadow = true,
          direction_count = 64,
          filenames = {
            "__angelsaddons-mobility__/graphics/entity/petro-tank1/petro-tank1-shadow.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.5, -0.5 },
        },
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
  impact_category = "wood",
  equipment_grid = "angels-petro-tank1",
  fast_replaceable_group = "angels-petro-tank1",
  minimap_representation = fluid_minimap_representation,
  selected_minimap_representation = fluid_selected_minimap_representation,
})
