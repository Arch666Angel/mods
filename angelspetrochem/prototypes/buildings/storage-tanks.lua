circuit_connector_definitions["angels-storage-tank-1"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 34, main_offset = util.by_pixel( 1.5,  59.375), shadow_offset = util.by_pixel( 1.5,  59.375), show_shadow = true },
  { variation = 34, main_offset = util.by_pixel( 1.5,  59.375), shadow_offset = util.by_pixel( 1.5,  59.375), show_shadow = true },
  { variation = 34, main_offset = util.by_pixel( 1.5,  59.375), shadow_offset = util.by_pixel( 1.5,  59.375), show_shadow = true },
  { variation = 34, main_offset = util.by_pixel( 1.5,  59.375), shadow_offset = util.by_pixel( 1.5,  59.375), show_shadow = true },
})

circuit_connector_definitions["angels-storage-tank-2"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 25, main_offset = util.by_pixel(-43.5,  12.375), shadow_offset = util.by_pixel(-43.5,  12.375), show_shadow = true },
  { variation = 27, main_offset = util.by_pixel( 43.375,  14), shadow_offset = util.by_pixel( 43.375,  14), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-43.5,  12.375), shadow_offset = util.by_pixel(-43.5,  12.375), show_shadow = true },
  { variation = 27, main_offset = util.by_pixel( 43.375,  14), shadow_offset = util.by_pixel( 43.375,  14), show_shadow = true },
})

circuit_connector_definitions["angels-storage-tank-3"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
})

data:extend({
  ---------------------------------------------------------------------------
  -- GAS TANK ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "item",
    name = "angels-storage-tank-1",
    icon = "__angelspetrochemgraphics__/graphics/icons/petrochem-gas-tank.png",
    icon_size = 64,
    subgroup = "angels-fluid-tanks",
    order = "b[angels-storage-tank-1]",
    place_result = "angels-storage-tank-1",
    stack_size = 10,
  },
  {
    type = "storage-tank",
    name = "angels-storage-tank-1",
    icon = "__angelspetrochemgraphics__/graphics/icons/petrochem-gas-tank.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation", "not-rotatable" },
    minable = { mining_time = 0.5, result = "angels-storage-tank-1" },
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.6,
    two_direction_only = false,
    fluid_box = {
      volume = 125000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { 0, -2 }, direction = defines.direction.north },
        { position = { 2, 0 }, direction = defines.direction.east },
        { position = { -2, 0 }, direction = defines.direction.west },
        { position = { 0, 2 }, direction = defines.direction.south },
      },
    },
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-gas-tank/petrochem-gas-tank.png",
            priority = "extra-high",
            frames = 1,
            width = 334,
            height = 387,
            shift = util.by_pixel(-0.5, -6),
            scale = 0.5,
          },
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-gas-tank/petrochem-gas-tank-shadow.png",
            priority = "extra-high",
            frames = 1,
            width = 437,
            height = 237,
            shift = util.by_pixel(26, 32),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 34,
        height = 48,
        scale = 0.5,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        animation_speed = 0.25,
        scale = 0.5,
      },
    },
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.6,
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["angels-storage-tank-1"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  ---------------------------------------------------------------------------
  -- OIL TANK ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "item",
    name = "angels-storage-tank-2",
    icon = "__angelspetrochemgraphics__/graphics/icons/petrochem-oil-tank.png",
    icon_size = 64,
    subgroup = "angels-fluid-tanks",
    order = "c[angels-storage-tank-2]",
    place_result = "angels-storage-tank-2",
    stack_size = 10,
  },
  {
    type = "storage-tank",
    name = "angels-storage-tank-2",
    icon = "__angelspetrochemgraphics__/graphics/icons/petrochem-oil-tank.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-storage-tank-2" },
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } },
    selection_box = { { -2, -2 }, { 2, 2 } },
    drawing_box_vertical_extension = 0.6,
    two_direction_only = true,
    fluid_box = {
      volume = 80000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1.5, -1.5 }, direction = defines.direction.north },
        { position = { 1.5, 1.5 }, direction = defines.direction.east },
        { position = { 1.5, 1.5 }, direction = defines.direction.south },
        { position = { -1.5, -1.5 }, direction = defines.direction.west },
      },
    },
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-oil-tank/petrochem-oil-tank.png",
            priority = "extra-high",
            frames = 2,
            width = 273,
            height = 307,
            shift = util.by_pixel(0, -2),
            scale = 0.5,
          },
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-oil-tank/petrochem-oil-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 335,
            height = 328,
            shift = util.by_pixel(16.5, 9.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 34,
        height = 48,
        scale = 0.5,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        animation_speed = 0.25,
        scale = 0.5,
      },
    },
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.8,
      },
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["angels-storage-tank-2"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  ---------------------------------------------------------------------------
  -- SMALL INLINE TANK ------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "item",
    name = "angels-storage-tank-3",
    icon = "__angelspetrochemgraphics__/graphics/icons/petrochem-inline-tank.png",
    icon_size = 64,
    subgroup = "angels-fluid-tanks",
    order = "d",
    place_result = "angels-storage-tank-3",
    stack_size = 10,
  },
  {
    type = "storage-tank",
    name = "angels-storage-tank-3",
    icon = "__angelspetrochemgraphics__/graphics/icons/petrochem-inline-tank.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-storage-tank-3" },
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    two_direction_only = false,
    fluid_box = {
      volume = 20000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { 0.5, -0.5 }, direction = defines.direction.north },
        { position = { 0.5, 0.5 }, direction = defines.direction.south },
      },
    },
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
            priority = "extra-high",
            frames = 4,
            width = 142,
            height = 199,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5,
          },
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank-shadow.png",
            priority = "extra-high",
            frames = 4,
            width = 207,
            height = 199,
            shift = util.by_pixel(16.5, 9),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      fluid_background = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      window_background = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      flow_sprite = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      gas_flow = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        animation_speed = 0.25,
      },
    },
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.8,
      },
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["angels-storage-tank-3"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
