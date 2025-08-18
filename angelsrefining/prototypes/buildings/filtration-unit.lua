circuit_connector_definitions["angels-filtration-unit"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-27.25,  38), shadow_offset = util.by_pixel(-27.25,  38), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-27.25,  38), shadow_offset = util.by_pixel(-27.25,  38), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-27.25,  38), shadow_offset = util.by_pixel(-27.25,  38), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-27.25,  38), shadow_offset = util.by_pixel(-27.25,  38), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-filtration-unit",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "b[filtration-unit]-a[mk1]",
    place_result = "angels-filtration-unit",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-filtration-unit",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-filtration-unit" },
    fast_replaceable_group = "angels-filtration-unit",
    next_upgrade = "angels-filtration-unit-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-filtering" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "100kW",
    circuit_connector = circuit_connector_definitions["angels-filtration-unit"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/filtration-unit/filtration-unit.png",
            width = 224,
            height = 224,
            frame_count = 1,
            shift = { 0, -0.2 },
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-filtration-unit-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "b[filtration-unit]-b[mk2]",
    place_result = "angels-filtration-unit-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-filtration-unit-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-filtration-unit-2" },
    fast_replaceable_group = "angels-filtration-unit",
    next_upgrade = "angels-filtration-unit-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-filtering", "angels-filtering-2" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-filtration-unit"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/filtration-unit/filtration-unit.png",
            width = 224,
            height = 224,
            frame_count = 1,
            shift = { 0, -0.2 },
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-filtration-unit-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png",
        icon_size = 32,
      },
    }, 3, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "b[filtration-unit]-c[mk3]",
    place_result = "angels-filtration-unit-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-filtration-unit-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png",
        icon_size = 32,
      },
    }, 3, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-filtration-unit-3" },
    fast_replaceable_group = "angels-filtration-unit",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-filtering", "angels-filtering-2", "angels-filtering-3" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-filtration-unit"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/filtration-unit/filtration-unit.png",
            width = 224,
            height = 224,
            frame_count = 1,
            shift = { 0, -0.2 },
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = angelsmods.refining.filtrationpipepictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },
})
