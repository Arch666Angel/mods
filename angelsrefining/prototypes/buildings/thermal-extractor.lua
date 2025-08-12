local hit_effects = require ("__base__.prototypes.entity.hit-effects")

data:extend({
  {
    type = "item",
    name = "angels-thermal-bore",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/thermal-extractor.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "a[thermal-extractor]-a[bore]",
    place_result = "angels-thermal-bore",
    stack_size = 10,
  },
  {
    type = "mining-drill",
    name = "angels-thermal-bore",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/thermal-extractor.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 0.5, result = "angels-thermal-bore" },
    resource_categories = { "angels-fissure" },
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -4.4, -4.4 }, { 4.4, 4.4 } },
    selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    energy_source = {
      type = "electric",
      emissions_per_minute = { pollution = 1.2 },
      usage_priority = "secondary-input",
    },
    output_fluid_box = {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {
          flow_direction = "output",
          position = { -3, 4 },
          direction = defines.direction.south,
        },
      },
    },
    energy_usage = "90kW",
    mining_speed = 0.75,
    resource_searching_radius = 0.49,
    vector_to_place_result = { 0, 0 },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12,
    },
    monitor_visualization_tint = { r = 78, g = 173, b = 255 },
    base_picture = {
      sheet = {
        filename = "__angelsrefininggraphics__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
        priority = "extra-high",
        width = 288,
        height = 288,
        shift = { 0, 0 },
      },
    },
    graphics_set = {
      animation = {
        north = {
          priority = "extra-high",
          width = 288,
          height = 288,
          line_length = 4,
          shift = { 0, 0 },
          filename = "__angelsrefininggraphics__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
          frame_count = 16,
          animation_speed = 0.5,
        },
      },
    },
    open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/thermal-extractor.ogg" },
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 10
    },
    fast_replaceable_group = "angels-thermal-extractor",
  },
  {
    type = "item",
    name = "angels-thermal-extractor",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/thermal-extractor.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "a[thermal-extractor]-b[extractor]",
    place_result = "angels-thermal-extractor",
    stack_size = 10,
  },
  {
    type = "mining-drill",
    name = "angels-thermal-extractor",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/thermal-extractor.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-thermal-extractor" },
    resource_categories = { "angels-fissure" },
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -4.4, -4.4 }, { 4.4, 4.4 } },
    selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    energy_source = {
      type = "electric",
      emissions_per_minute = { pollution = 0.6 },
      usage_priority = "secondary-input",
    },
    output_fluid_box = {
      volume = 1000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {
          flow_direction = "output",
          position = { -3, 4 },
          direction = defines.direction.south,
        },
      },
    },
    energy_usage = "90kW",
    mining_speed = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = { 0, 0 },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12,
    },
    monitor_visualization_tint = { r = 78, g = 173, b = 255 },
    base_picture = {
      sheet = {
        filename = "__angelsrefininggraphics__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
        priority = "extra-high",
        width = 288,
        height = 288,
        shift = { 0, 0 },
      },
    },
    graphics_set = {
      animation = {
        north = {
          priority = "extra-high",
          width = 288,
          height = 288,
          line_length = 4,
          shift = { 0, 0 },
          filename = "__angelsrefininggraphics__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
          frame_count = 16,
          animation_speed = 0.5,
        },
      },
    },
    open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/thermal-extractor.ogg" },
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 10
    },
    fast_replaceable_group = "angels-thermal-extractor",
  },
})
