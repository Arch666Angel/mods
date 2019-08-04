data:extend(
{
  {
    type = "equipment-grid",
    name = "angels-petro-locomotive",
    width = 6,
    height = 6,
    equipment_categories = {"angels-void"}		--"angels-energy", "angels-heavy-defense", "angels-movement"
  },
  {
    type = "equipment-grid",
    name = "angels-petro-tank-wagon",
    width = 12,
    height = 12,
    equipment_categories = {"angels-void"}		--"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"
  },
  {
    type = "item-with-entity-data",
    name = "petro-locomotive-1",
    icon = "__angelsaddons-petrotrain__/graphics/icons/petro-loco-1-ico.png",
	icon_size = 32,
    subgroup = "angels-petrotrain",
    order = "a",
    place_result = "petro-locomotive-1",
    stack_size = 5
  },
  {
    type = "locomotive",
    name = "petro-locomotive-1",
    icon = "__angelsaddons-petrotrain__/graphics/icons/petro-loco-1-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "petro-locomotive-1"},
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
    equipment_grid = "angels-petro-locomotive",
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
          position = {0, 2},
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
        shift = {-0.6, -17},
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
        shift = {0.6, -17},
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 128,
          filenames =
          {
            "__angelsaddons-petrotrain__/graphics/entity/petro-loco1/petro-loco1-1.png",
            "__angelsaddons-petrotrain__/graphics/entity/petro-loco1/petro-loco1-2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0.0, -0.75}
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 256,
          height = 256,
          direction_count = 128,
          draw_as_shadow = true,
          filenames =
          {
            "__angelsaddons-petrotrain__/graphics/entity/petro-loco1/petro-loco1-shadow-1.png",
            "__angelsaddons-petrotrain__/graphics/entity/petro-loco1/petro-loco1-shadow-2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0.5, -0.5}
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger =
    {
      -- left side
      {
        type = "create-trivial-smoke",
        repeat_count = 50,
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
        repeat_count = 50,
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
    sound_minimum_speed = 0.5,
  },
  {
    type = "item-with-entity-data",
    name = "petro-tank1",
	icon = "__angelsaddons-petrotrain__/graphics/icons/petro-tank1-ico.png",
	icon_size = 32,
    subgroup = "angels-petrotrain",
    order = "b",
    place_result = "petro-tank1",
    stack_size = 5
  },
  {
    type = "fluid-wagon",
    name = "petro-tank1",
	icon = "__angelsaddons-petrotrain__/graphics/icons/petro-tank1-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "petro-tank1"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 600,
    capacity = 25000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    gui_front_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_center_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_back_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_connect_front_center_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_connect_center_back_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_front_center_tank_indiciation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/1.png",
      width = 32,
      height = 32,
      flags = {"icon"}
    },
    gui_center_back_tank_indiciation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/2.png",
      width = 32,
      height = 32,
      flags = {"icon"}
    },
    vertical_selection_shift = -0.796875,
    weight = 1000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.05,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 6,
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
		layers = {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 64,
          filenames =
          {
            "__angelsaddons-petrotrain__/graphics/entity/petro-tank1/petro-tank1.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0, -0.75}
        },
        {
          flags = { "compressed" },
          width = 256,
          height = 256,
          draw_as_shadow = true,
          direction_count = 64,
          filenames =
          {
            "__angelsaddons-petrotrain__/graphics/entity/petro-tank1/petro-tank1-shadow.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0.5, -0.5}
        },
		},
	},
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
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    equipment_grid = "angels-petro-tank-wagon",
  },
  {
    type = "item-with-entity-data",
    name = "petro-tank2",
	icon = "__angelsaddons-petrotrain__/graphics/icons/petro-tank2-ico.png",
	icon_size = 32,
    subgroup = "angels-petrotrain",
    order = "c",
    place_result = "petro-tank2",
    stack_size = 5
  },
  {
    type = "fluid-wagon",
    name = "petro-tank2",
	icon = "__angelsaddons-petrotrain__/graphics/icons/petro-tank2-ico.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "petro-tank2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 600,
    capacity = 25000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    gui_front_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_center_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_back_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_connect_front_center_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_connect_center_back_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_front_center_tank_indiciation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/1.png",
      width = 32,
      height = 32,
      flags = {"icon"}
    },
    gui_center_back_tank_indiciation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/2.png",
      width = 32,
      height = 32,
      flags = {"icon"}
    },
    vertical_selection_shift = -0.796875,
    weight = 1000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.05,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 6,
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
		layers = {
        {
          priority = "very-low",
          width = 256,
          height = 256,
          direction_count = 64,
          filenames =
          {
            "__angelsaddons-petrotrain__/graphics/entity/petro-tank2/petro-tank2.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0, -0.75}
        },
        {
          --flags = { "compressed" },
          width = 256,
          height = 256,
          draw_as_shadow = true,
          direction_count = 64,
          filenames =
          {
            "__angelsaddons-petrotrain__/graphics/entity/petro-tank2/petro-tank2-shadow.png",
          },
          line_length = 8,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
		},
	},
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
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    equipment_grid = "angels-petro-tank-wagon",
  },
}
)
