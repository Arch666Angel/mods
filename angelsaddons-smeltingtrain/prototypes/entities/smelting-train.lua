local minimap_representation = data.raw["locomotive"]["locomotive"].minimap_representation;
local selected_minimap_representation = data.raw["locomotive"]["locomotive"].selected_minimap_representation;

data:extend(
{
  {
    type = "equipment-grid",
    name = "angels-smelting-locomotive",
    width = 6,
    height = 6,
    equipment_categories = { "angels-void" }    --"angels-energy", "angels-heavy-defense", "angels-movement"
  },
  {
    type = "equipment-grid",
    name = "angels-smelting-wagon",
    width = 12,
    height = 12,
    equipment_categories = { "angels-void" }    --"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"
  },
  {
    type = "item-with-entity-data",
    name = "smelting-locomotive-1",
    icon = "__angelsaddons-smeltingtrain__/graphics/icons/smelting-loco-1.png",
    icon_size = 32,
    subgroup = "angels-smeltingtrain",
    order = "a",
    place_result = "smelting-locomotive-1",
    stack_size = 5
  },
  {
    type = "locomotive",
    name = "smelting-locomotive-1",
    icon = "__angelsaddons-smeltingtrain__/graphics/icons/smelting-loco-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
    minable = { mining_time = 1, result = "smelting-locomotive-1" },
    mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
    selection_box = { { -1, -3 }, { 1, 3 } },
    drawing_box = { { -1, -4 }, { 1, 3 } },
    --alert_icon_shift = util.by_pixel(0, -24),
    weight = 3000,
    max_speed = 1,
    max_power = "1200kW",
    reversing_power_modifier = 0.6,
    braking_force = 20,
    friction_force = 0.60,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    equipment_grid = "angels-smelting-locomotive",
    minimap_representation = minimap_representation,
    selected_minimap_representation = selected_minimap_representation,
    allow_manual_color = true,
    color = { r = 1, g = 0.38, b = 0.0, a = 1 },
    resistances = {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
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
          position = { 0.5, 2 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 100,
          position = { -0.5, 2 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 100,
          position = { 0.5, 0 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 100,
          position = { -0.5, 0 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
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
          height = 200
        },
        shift = { -0.6, -16 },
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = { 0.6, -16 },
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = { r = 0.92, g = 0.07, b = 0, a = 0.5 },
    pictures = {
      layers = {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 128,
          filenames = {
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco1/smelting-loco1-1-base.png",
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco1/smelting-loco1-2-base.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.0, -0.75 }
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 256,
          height = 256,
          direction_count = 128,
          filenames = {
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco1/smelting-loco1-1-tint.png",
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco1/smelting-loco1-2-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = true,
          shift = { 0.0, -0.75 }
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 256,
          height = 256,
          direction_count = 128,
          draw_as_shadow = true,
          filenames = {
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco1/smelting-loco1-shadow-1.png",
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco1/smelting-loco1-shadow-2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.5, -0.5 }
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
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
        offset_deviation = { { -0.75, -2.7 }, { -0.3, -1 } }
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
        offset_deviation = { { 0.3, -2.7 }, { 0.75, -1 } }
      },
      {
        type = "play-sound",
        sound = {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
  },
  {
    type = "item-with-entity-data",
    name = "smelting-locomotive-tender",
    icon = "__angelsaddons-smeltingtrain__/graphics/icons/smelting-loco-tender.png",
    icon_size = 32,
    subgroup = "angels-smeltingtrain",
    order = "b",
    place_result = "smelting-locomotive-tender",
    stack_size = 5
  },
  {
    type = "locomotive",
    name = "smelting-locomotive-tender",
    icon = "__angelsaddons-smeltingtrain__/graphics/icons/smelting-loco-tender.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
    minable = { mining_time = 1, result = "smelting-locomotive-tender" },
    mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
    selection_box = { { -1, -3 }, { 1, 3 } },
    drawing_box = { { -1, -4 }, { 1, 3 } },
    weight = 3000,
    max_speed = 1,
    max_power = "1400kW",
    reversing_power_modifier = 0.6,
    braking_force = 25,
    friction_force = 0.60,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    equipment_grid = "angels-smelting-locomotive",
    minimap_representation = minimap_representation,
    selected_minimap_representation = selected_minimap_representation,
    allow_manual_color = true,
    color = { r = 1, g = 0.38, b = 0.0, a = 1 },
    resistances = {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
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
          position = { 0.5, 2 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 100,
          position = { -0.5, 2 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 100,
          position = { 0.5, 0 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 100,
          position = { -0.5, 0 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
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
          height = 200
        },
        shift = { -0.6, -16 },
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = { 0.6, -16 },
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = { r = 0.92, g = 0.07, b = 0, a = 0.5 },
    pictures = {
      layers = {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 128,
          filenames = {
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco2/smelting-loco2-1-base.png",
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco2/smelting-loco2-2-base.png",
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
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco2/smelting-loco2-1-tint.png",
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco2/smelting-loco2-2-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = true,
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
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco2/smelting-loco2-shadow-1.png",
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-loco2/smelting-loco2-shadow-2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.5, -0.5 }
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger = {
      -- front left side
      {
        type = "create-trivial-smoke",
        repeat_count = 50, --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = { -0.03, 0 },
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = { { -0.75, -2.7 }, { -0.3, -1 } }
      },
      -- front right side
      {
        type = "create-trivial-smoke",
        repeat_count = 50, --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = { 0.03, 0 },
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = { { 0.3, -2.7 }, { 0.75, -1 } }
      },
      -- rear left side
      {
        type = "create-trivial-smoke",
        repeat_count = 50, --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = { -0.03, 0 },
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = { { -0.75, 2.7 }, { -0.3, 1 } }
      },
      -- rear right side
      {
        type = "create-trivial-smoke",
        repeat_count = 50, --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = { 0.03, 0 },
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = { { 0.3, 2.7 }, { 0.75, 1 } }
      },
      {
        type = "play-sound",
        sound = {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
  {
    type = "item-with-entity-data",
    name = "smelting-wagon-1",
    icon = "__angelsaddons-smeltingtrain__/graphics/icons/smelting-wagon1.png",
    icon_size = 32,
    subgroup = "angels-smeltingtrain",
    order = "c",
    place_result = "smelting-wagon-1",
    stack_size = 5
  },
  {
    type = "cargo-wagon",
    name = "smelting-wagon-1",
    icon = "__angelsaddons-smeltingtrain__/graphics/icons/smelting-wagon1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
    inventory_size = 64,
    minable = { mining_time = 1, result = "smelting-wagon-1" },
    mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
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
    equipment_grid = "angels-smelting-wagon",
    minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation,
    allow_manual_color = true,
    resistances = {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
    pictures = {
      layers = {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 64,
          filenames = {
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-1-base.png",
          },
          line_length = 8,
          lines_per_file = 8,
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
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-1-tint.png",
          },
          line_length = 8,
          lines_per_file = 8,
          apply_runtime_tint = true,
          shift = { 0.0, -0.75 },
          back_equals_front = true,
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 256,
          height = 256,
          direction_count = 64,
          draw_as_shadow = true,
          filenames = {
            "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-shadow-1.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = { 0.5, -0.5 }
        }
      }
    },
    horizontal_doors = {
      layers = {
        {
          filename = "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-door-horizontal-base.png",
          line_length = 8,
          width = 256,
          height = 256,
          frame_count = 8,
          shift = { 0.0, -0.75 },
        },
        {
          flags = { "mask" },
          apply_runtime_tint = true,
          filename = "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-door-horizontal-tint.png",
          line_length = 8,
          width = 256,
          height = 256,
          frame_count = 8,
          shift = { 0.0, -0.75 },
        },
      }
    },
    vertical_doors = {
      layers = {
        {
          filename = "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-door-vertical-base.png",
          line_length = 8,
          width = 256,
          height = 256,
          frame_count = 8,
          shift = { 0.0, -0.75 },
        },
        {
          flags = { "mask" },
          apply_runtime_tint = true,
          filename = "__angelsaddons-smeltingtrain__/graphics/entity/smelting-wagon1/smelting-wagon1-door-vertical-tint.png",
          line_length = 8,
          width = 256,
          height = 256,
          frame_count = 8,
          shift = { 0.0, -0.75 },
        },
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = {
      sound = {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },
}
)
