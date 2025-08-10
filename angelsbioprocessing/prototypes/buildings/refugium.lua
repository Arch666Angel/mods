circuit_connector_definitions["angels-bio-refugium-fish"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  5, main_offset = util.by_pixel( 84.5,  105), shadow_offset = util.by_pixel( 84.5,  105), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel( 84.5,  105), shadow_offset = util.by_pixel( 84.5,  105), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel( 84.5,  105), shadow_offset = util.by_pixel( 84.5,  105), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel( 84.5,  105), shadow_offset = util.by_pixel( 84.5,  105), show_shadow = true },
})

circuit_connector_definitions["angels-bio-refugium-puffer"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-60.125,  55.875), shadow_offset = util.by_pixel(-60.125,  55.875), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-60.125,  55.875), shadow_offset = util.by_pixel(-60.125,  55.875), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-60.125,  55.875), shadow_offset = util.by_pixel(-60.125,  55.875), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-60.125,  55.875), shadow_offset = util.by_pixel(-60.125,  55.875), show_shadow = true },
})

circuit_connector_definitions["angels-bio-refugium-biter"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-3.5, -49), shadow_offset = util.by_pixel(-3.5, -49), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-3.5, -49), shadow_offset = util.by_pixel(-3.5, -49), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-3.5, -49), shadow_offset = util.by_pixel(-3.5, -49), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-3.5, -49), shadow_offset = util.by_pixel(-3.5, -49), show_shadow = true },
})

data:extend({
  -- FISH
  {
    type = "item",
    name = "angels-bio-refugium-fish",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png",
    icon_size = 32,
    subgroup = "angels-bio-processing-buildings-alien-a",
    order = "a",
    place_result = "angels-bio-refugium-fish",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-refugium-fish",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-bio-refugium-fish" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    drawing_box_vertical_extension = 1,
    fast_replaceable_group = "angels-bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-bio-refugium-fish" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -35 },
    },
    energy_usage = "150kW",
    --ingredient_count = 4,
    circuit_connector = circuit_connector_definitions["angels-bio-refugium-fish"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-fish-shadow.png",
            width = 288,
            height = 288,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-fish-off.png",
            width = 288,
            height = 288,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-fish.png",
            width = 288,
            height = 288,
            line_length = 7,
            frame_count = 49,
            shift = { 0, 0 },
            animation_speed = 49 / 90,
          },
        },
      },
    },
    match_animation_speed_to_activity = false,
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsbioprocessinggraphics__/sound/aquarium.ogg", volume = 0.8 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 3 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 3 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 0, -3 }, direction = defines.direction.north },
        },
      },
    },
  },

  -- PUFFER
  {
    type = "item",
    name = "angels-bio-refugium-puffer",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png",
    icon_size = 32,
    subgroup = "angels-bio-processing-buildings-alien-a",
    order = "d",
    place_result = "angels-bio-refugium-puffer",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-refugium-puffer",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-bio-refugium-puffer" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 1,
    fast_replaceable_group = "angels-bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-bio-refugium-puffer" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -30 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-bio-refugium-puffer"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-puffer-off.png",
        width = 224,
        height = 256,
        line_length = 1,
        frame_count = 1,
        shift = { 0, -0.5 },
        animation_speed = 0.5,
      },
      working_visualisations = {
        {
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-puffer.png",
            width = 224,
            height = 256,
            line_length = 6,
            frame_count = 36,
            shift = { 0, -0.5 },
            animation_speed = 36 / 60,
          },
        },
      },
    },
    match_animation_speed_to_activity = false,
    impact_category = "metal",
    working_sound = {
      sound = {
        {
          filename = "__angelsbioprocessinggraphics__/sound/fart_1.ogg",
          volume = 1,
        },
        {
          filename = "__angelsbioprocessinggraphics__/sound/fart_2.ogg",
          volume = 1,
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 2, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -2, 2 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
        },
      },
    },
  },

  -- BITER
  {
    type = "item",
    name = "angels-bio-refugium-biter",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-farm.png",
    icon_size = 32,
    subgroup = "angels-bio-processing-buildings-alien-a",
    order = "e",
    place_result = "angels-bio-refugium-biter",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-refugium-biter",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-farm.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-bio-refugium-biter" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "angels-bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-bio-refugium-biter" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -25 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-bio-refugium-biter"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-biter-off.png",
        width = 288,
        height = 288,
        line_length = 1,
        frame_count = 1,
        shift = { 0, 0 },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-biter.png",
            width = 288,
            height = 288,
            line_length = 4,
            frame_count = 16,
            shift = { 0, 0 },
            animation_speed = 0.5 * 0.75 / 2,
          },
        },
      },
    },
    match_animation_speed_to_activity = false,
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -3 }, direction = defines.direction.north } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 3 }, direction = defines.direction.south } },
      },
    },
  },
})

angelsmods.functions.allow_bio_productivity("angels-bio-refugium-fish")
angelsmods.functions.allow_bio_productivity("angels-bio-refugium-puffer")
angelsmods.functions.allow_bio_productivity("angels-bio-refugium-biter")
