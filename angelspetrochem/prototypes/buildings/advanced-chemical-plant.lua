circuit_connector_definitions["angels-advanced-chemical-plant"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel( 45.25,  65.25), shadow_offset = util.by_pixel( 45.25,  65.25), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 45.25,  65.25), shadow_offset = util.by_pixel( 45.25,  65.25), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 45.25,  65.25), shadow_offset = util.by_pixel( 45.25,  65.25), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 45.25,  65.25), shadow_offset = util.by_pixel( 45.25,  65.25), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-advanced-chemical-plant",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png",
        icon_size = 32,
      },
    }, 1, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-chemical-plant",
    order = "b[advanced]-a",
    place_result = "angels-advanced-chemical-plant",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-advanced-chemical-plant",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png",
        icon_size = 32,
      },
    }, 1, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-advanced-chemical-plant" },
    fast_replaceable_group = "angels-advanced-chemical-plant",
    next_upgrade = "angels-advanced-chemical-plant-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    drawing_box_vertical_extension = 0.3,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-advanced-chemistry" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "300kW",
    circuit_connector = circuit_connector_definitions["angels-advanced-chemical-plant"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
            width = 224,
            height = 224,
            frame_count = 16,
            line_length = 4,
            animation_speed = 0.5,
            shift = { 0, 0 },
          },
          -- {
          -- filename = "__angelspetrochemgraphics__/graphics/entity/advanced-chemical-plant/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- animation_speed = 0.5,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 2, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -2, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -2, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 0, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 2, -2 }, direction = defines.direction.north },
        },
      },
      --off_when_no_fluid_recipe = true
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/gas-refinery.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-advanced-chemical-plant-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png",
        icon_size = 32,
      },
    }, 2, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-chemical-plant",
    order = "b[advanced]-b",
    place_result = "angels-advanced-chemical-plant-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-advanced-chemical-plant-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png",
        icon_size = 32,
      },
    }, 2, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-advanced-chemical-plant-2" },
    fast_replaceable_group = "angels-advanced-chemical-plant",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    drawing_box_vertical_extension = 0.3,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-advanced-chemistry" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 4.8 },
    },
    energy_usage = "400kW",
    circuit_connector = circuit_connector_definitions["angels-advanced-chemical-plant"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
            width = 224,
            height = 224,
            frame_count = 16,
            line_length = 4,
            animation_speed = 0.5,
            shift = { 0, 0 },
          },
          -- {
          -- filename = "__angelspetrochemgraphics__/graphics/entity/advanced-chemical-plant/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- animation_speed = 0.5,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 2, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -2, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -2, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 0, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        --pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 2, -2 }, direction = defines.direction.north },
        },
      },
      --off_when_no_fluid_recipe = true
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/gas-refinery.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
})
