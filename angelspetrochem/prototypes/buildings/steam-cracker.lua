circuit_connector_definitions["angels-steam-cracker"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 18, main_offset = util.by_pixel(-55.375,  63.375), shadow_offset = util.by_pixel(-55.375,  63.375), show_shadow = true },
  { variation = 18, main_offset = util.by_pixel(-55.375,  63.375), shadow_offset = util.by_pixel(-55.375,  63.375), show_shadow = true },
  { variation = 18, main_offset = util.by_pixel(-55.375,  63.375), shadow_offset = util.by_pixel(-55.375,  63.375), show_shadow = true },
  { variation = 18, main_offset = util.by_pixel(-55.375,  63.375), shadow_offset = util.by_pixel(-55.375,  63.375), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-steam-cracker",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 1, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-steam",
    order = "a[steam-cracker]-a",
    place_result = "angels-steam-cracker",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-steam-cracker",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 1, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-steam-cracker" },
    fast_replaceable_group = "angels-steam-cracker",
    next_upgrade = "angels-steam-cracker-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    drawing_box_vertical_extension = 0.6,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-steam-cracking" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.2 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-steam-cracker"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 3,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/steam-cracker.png",
            priority = "extra-high",
            width = 512,
            height = 512,
            scale = 0.5,
            frame_count = 1,
            shift = { 0.5, -0.5 },
          },
          -- {
          -- filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- shift = {0, 0},
          -- animation_speed = 0.5
          -- },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
            shift = { -2, -3.8 },
          },
          light = { intensity = 0.8, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    -- working_visualisations =
    -- {
    -- {
    -- animation =
    -- {
    -- filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
    -- frame_count = 29,
    -- width = 16,
    -- height = 35,
    -- scale = 2,
    -- shift = {-2, -3.8},
    -- run_mode="backward"
    -- },
    -- light = {intensity = 0.8, size = 6}
    -- }
    -- },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/steam-cracker.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-steam-cracker-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 2, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-steam",
    order = "a[steam-cracker]-b",
    place_result = "angels-steam-cracker-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-steam-cracker-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 2, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-steam-cracker-2" },
    fast_replaceable_group = "angels-steam-cracker",
    next_upgrade = "angels-steam-cracker-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    drawing_box_vertical_extension = 0.6,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-steam-cracking" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "225kW",
    circuit_connector = circuit_connector_definitions["angels-steam-cracker"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 3,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/steam-cracker.png",
            priority = "extra-high",
            width = 512,
            height = 512,
            scale = 0.5,
            frame_count = 1,
            shift = { 0.5, -0.5 },
          },
          -- {
          -- filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- shift = {0, 0},
          -- animation_speed = 0.5
          -- },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
            shift = { -2, -3.8 },
          },
          light = { intensity = 0.8, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/steam-cracker.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-steam-cracker-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 3, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-steam",
    order = "a[steam-cracker]-c",
    place_result = "angels-steam-cracker-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-steam-cracker-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 3, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-steam-cracker-3" },
    fast_replaceable_group = "angels-steam-cracker",
    next_upgrade = "angels-steam-cracker-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    drawing_box_vertical_extension = 0.6,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-steam-cracking" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-steam-cracker"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 3,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/steam-cracker.png",
            priority = "extra-high",
            width = 512,
            height = 512,
            scale = 0.5,
            frame_count = 1,
            shift = { 0.5, -0.5 },
          },
          -- {
          -- filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- shift = {0, 0},
          -- animation_speed = 0.5
          -- },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
            shift = { -2, -3.8 },
          },
          light = { intensity = 0.8, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/steam-cracker.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-steam-cracker-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 4, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-steam",
    order = "a[steam-cracker]-d",
    place_result = "angels-steam-cracker-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-steam-cracker-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/steam-cracker.png",
        icon_size = 32,
      },
    }, 4, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-steam-cracker-4" },
    fast_replaceable_group = "angels-steam-cracker",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    drawing_box_vertical_extension = 0.6,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-steam-cracking" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "275kW",
    circuit_connector = circuit_connector_definitions["angels-steam-cracker"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 3,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/steam-cracker.png",
            priority = "extra-high",
            width = 512,
            height = 512,
            scale = 0.5,
            frame_count = 1,
            shift = { 0.5, -0.5 },
          },
          -- {
          -- filename = "__angelspetrochemgraphics__/graphics/entity/steam-cracker/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- shift = {0, 0},
          -- animation_speed = 0.5
          -- },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
            shift = { -2, -3.8 },
          },
          light = { intensity = 0.8, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/steam-cracker.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
})
