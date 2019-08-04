data:extend(
{
  {
    type = "equipment-grid",
    name = "angels-crawler-locomotive",
    width = 6,
    height = 6,
    equipment_categories = {"angels-energy", "angels-heavy-defense", "angels-movement"}
  },
  {
    type = "equipment-grid",
    name = "angels-crawler-loco-wagon",
    width = 6,
    height = 6,
    equipment_categories = {"angels-energy", "angels-heavy-defense", "angels-movement"}
  },
  {
    type = "equipment-grid",
    name = "angels-crawler-wagon",
    width = 12,
    height = 12,
    equipment_categories = {"angels-energy", "angels-repair", "angels-heavy-defense", "angels-movement"}
  },
  {
    type = "equipment-grid",
    name = "angels-crawler-bot-wagon",
    width = 12,
    height = 12,
    equipment_categories = {"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"}
  },
  {
    type = "item-with-entity-data",
    name = "crawler-locomotive",
    icon = "__angelsindustries__/graphics/icons/crawler-loco-ico.png",
	icon_size = 32,
    subgroup = "angels-crawler-train",
    order = "a[crawler-locomotive]",
    place_result = "crawler-locomotive",
    stack_size = 5
  },
  {
    type = "locomotive",
    name = "crawler-locomotive",
    icon = "__angelsindustries__/graphics/icons/crawler-loco-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "crawler-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    drawing_box = {{-1, -4}, {1, 3}},
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
    equipment_grid = "angels-crawler-loco-wagon",
    resistances =
    {
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
    burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 3},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 128,
          filenames =
          {
            "__angelsindustries__/graphics/entity/crawler-train/crawler-loco-1.png",
            "__angelsindustries__/graphics/entity/crawler-train/crawler-loco-2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0.0, -0.75}
        },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger =
    {
      -- left side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,  --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, -1}}
      },
      -- right side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,  --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, -1}}
      },
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
  {
    type = "item-with-entity-data",
    name = "crawler-locomotive-wagon",
    icon = "__angelsindustries__/graphics/icons/crawler-loco-wagon-ico.png",
	icon_size = 32,
    subgroup = "angels-crawler-train",
    order = "b[crawler-locomotive-wagon]",
    place_result = "crawler-locomotive-wagon",
    stack_size = 5
  },
  {
    type = "locomotive",
    name = "crawler-locomotive-wagon",
    icon = "__angelsindustries__/graphics/icons/crawler-loco-wagon-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "crawler-locomotive-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 3000,
    max_speed = 1.2,
    max_power = "1000kW",
    reversing_power_modifier = 0.6,
    braking_force = 20,
    friction_force = 0.60,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    equipment_grid = "angels-crawler-loco-wagon",
    resistances =
    {
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
    burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 3},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, -3},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 128,
          filenames =
          {
            "__angelsindustries__/graphics/entity/crawler-train/crawler-loco-wagon-1.png",
            "__angelsindustries__/graphics/entity/crawler-train/crawler-loco-wagon-2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0.0, -0.75}
        },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger =
    {
      -- front left side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,  --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, -1}}
      },
      -- front right side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,  --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, -1}}
      },
      -- rear left side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,  --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, 2.7}, {-0.3, 1}}
      },
      -- rear right side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,  --125
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, 2.7}, {0.75, 1}}
      },
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
  {
    type = "item-with-entity-data",
    name = "crawler-wagon",
	icon = "__angelsindustries__/graphics/icons/crawler-wagon-ico.png",
	icon_size = 32,
    subgroup = "angels-crawler-train",
    order = "c[crawler-wagon]",
    place_result = "crawler-wagon",
    stack_size = 5
  },
  {
    type = "cargo-wagon",
    name = "crawler-wagon",
	icon = "__angelsindustries__/graphics/icons/crawler-wagon-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 64,
    minable = {mining_time = 1, result = "crawler-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    vertical_selection_shift = -0.796875,
    weight = 1000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    equipment_grid = "angels-crawler-wagon",
    resistances =
    {
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
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
        {
          priority = "very-low",
          width = 256,
          height = 256,
          --back_equals_front = true,
          direction_count = 64,
          filenames =
          {
            "__angelsindustries__/graphics/entity/crawler-train/crawler-wagon.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0, -0.75}
        },
    -- horizontal_doors =
    -- {
      -- layers =
      -- {
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          -- line_length = 1,
          -- width = 220,
          -- height = 33,
          -- frame_count = 8,
          -- shift = {0, -0.921875}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          -- line_length = 1,
          -- width = 186,
          -- height = 38,
          -- frame_count = 8,
          -- shift = {0, -0.78125}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          -- width = 182,
          -- height = 35,
          -- line_length = 1,
          -- frame_count = 8,
          -- shift = {0, -0.828125},
          -- apply_runtime_tint = true
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          -- line_length = 1,
          -- width = 184,
          -- height = 28,
          -- frame_count = 8,
          -- shift = {0.015625, -1.125}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          -- width = 185,
          -- height = 23,
          -- frame_count = 8,
          -- line_length = 1,
          -- shift = {0.015625, -1.17188},
          -- apply_runtime_tint = true
        -- }
      -- }
    -- },
    -- vertical_doors =
    -- {
      -- layers =
      -- {
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          -- line_length = 8,
          -- width = 30,
          -- height = 202,
          -- frame_count = 8,
          -- shift = {0, -0.84375}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          -- line_length = 8,
          -- width = 67,
          -- height = 169,
          -- frame_count = 8,
          -- shift = {0.015625, -1.01563}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          -- line_length = 8,
          -- width = 56,
          -- height = 163,
          -- frame_count = 8,
          -- shift = {0, -1.10938},
          -- apply_runtime_tint = true
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          -- line_length = 8,
          -- width = 32,
          -- height = 168,
          -- frame_count = 8,
          -- shift = {0, -1.125}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          -- line_length = 8,
          -- width = 32,
          -- height = 166,
          -- frame_count = 8,
          -- shift = {0, -1.15625},
          -- apply_runtime_tint = true
        -- }
      -- }
    -- },
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
  },
  {
    type = "item-with-entity-data",
    name = "crawler-bot-wagon",
	icon = "__angelsindustries__/graphics/icons/crawler-bot-wagon-ico.png",
	icon_size = 32,
    subgroup = "angels-crawler-train",
    order = "d[crawler-bot-wagon]",
    place_result = "crawler-bot-wagon",
    stack_size = 5
  },
  {
    type = "cargo-wagon",
    name = "crawler-bot-wagon",
	icon = "__angelsindustries__/graphics/icons/crawler-bot-wagon-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 128,
    minable = {mining_time = 1, result = "crawler-bot-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    vertical_selection_shift = -0.796875,
    weight = 1000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    equipment_grid = "angels-crawler-bot-wagon",
    resistances =
    {
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
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
        {
          priority = "very-low",
          width = 256,
          height = 256,
          --back_equals_front = true,
          direction_count = 64,
          filenames =
          {
            "__angelsindustries__/graphics/entity/crawler-train/crawler-bot-wagon.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0, -0.75}
        },
    -- horizontal_doors =
    -- {
      -- layers =
      -- {
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          -- line_length = 1,
          -- width = 220,
          -- height = 33,
          -- frame_count = 8,
          -- shift = {0, -0.921875}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          -- line_length = 1,
          -- width = 186,
          -- height = 38,
          -- frame_count = 8,
          -- shift = {0, -0.78125}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          -- width = 182,
          -- height = 35,
          -- line_length = 1,
          -- frame_count = 8,
          -- shift = {0, -0.828125},
          -- apply_runtime_tint = true
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          -- line_length = 1,
          -- width = 184,
          -- height = 28,
          -- frame_count = 8,
          -- shift = {0.015625, -1.125}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          -- width = 185,
          -- height = 23,
          -- frame_count = 8,
          -- line_length = 1,
          -- shift = {0.015625, -1.17188},
          -- apply_runtime_tint = true
        -- }
      -- }
    -- },
    -- vertical_doors =
    -- {
      -- layers =
      -- {
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          -- line_length = 8,
          -- width = 30,
          -- height = 202,
          -- frame_count = 8,
          -- shift = {0, -0.84375}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          -- line_length = 8,
          -- width = 67,
          -- height = 169,
          -- frame_count = 8,
          -- shift = {0.015625, -1.01563}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          -- line_length = 8,
          -- width = 56,
          -- height = 163,
          -- frame_count = 8,
          -- shift = {0, -1.10938},
          -- apply_runtime_tint = true
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          -- line_length = 8,
          -- width = 32,
          -- height = 168,
          -- frame_count = 8,
          -- shift = {0, -1.125}
        -- },
        -- {
          -- filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          -- line_length = 8,
          -- width = 32,
          -- height = 166,
          -- frame_count = 8,
          -- shift = {0, -1.15625},
          -- apply_runtime_tint = true
        -- }
      -- }
    -- },
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
  },
}
)
