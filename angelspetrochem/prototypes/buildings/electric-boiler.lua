local steam_per_second = 40 -- steam/s
local power_per_steam = 30 -- kW
local drain_power = 40 -- kW
local extra_loss = 0.04 -- % of total power

local dissipation_factor = 1 / (1 - extra_loss)

data:extend({
  {
    type = "item",
    name = "angels-electric-boiler",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
    }, 1, angelsmods.petrochem.number_tint),
    subgroup = "boiler-building",
    order = "c[electric-boiler]-a",
    place_result = "angels-electric-boiler",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-electric-boiler",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
    }, 1, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-electric-boiler" },
    fast_replaceable_group = "angels-electric-boiler",
    next_upgrade = "angels-electric-boiler-2",
    max_health = 200,
    corpse = "small-remnants",
    collision_box = { { -1.29, -1.29 }, { 1.29, 1.29 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_specification = {
      module_slots = 0,
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    crafting_categories = { "petrochem-boiler" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.01 * 60,
      drain = string.format("%.0fkW", drain_power * 1),
    },
    -- with drain power this comes exactly to 1.2 MW, produces 40/s steam (at speed 1)
    -- extra losses introduced when accounting for dissipation_factor
    energy_usage = string.format("%.0fkW", (steam_per_second * power_per_steam * dissipation_factor - drain_power) * 1),
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
    },
    idle_animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8,
      },
      max_sounds_per_type = 3,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        height = 2,
        base_area = 1,
        base_level = -1,
        pipe_connections = {
          { type = "input-output", position = { -2, 0 } },
          { type = "input-output", position = { 2, 0 } },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 0, -2 } },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 0, 2 } },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-electric-boiler-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
    }, 2, angelsmods.petrochem.number_tint),
    subgroup = "boiler-building",
    order = "c[electric-boiler]-b",
    place_result = "angels-electric-boiler-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-electric-boiler-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
    }, 2, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-electric-boiler-2" },
    fast_replaceable_group = "angels-electric-boiler",
    next_upgrade = "angels-electric-boiler-3",
    max_health = 400,
    corpse = "small-remnants",
    collision_box = { { -1.29, -1.29 }, { 1.29, 1.29 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_specification = {
      module_slots = 1,
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    crafting_categories = { "petrochem-boiler" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.015 * 60,
      drain = string.format("%.0fkW", drain_power * 1.5),
    },
    -- with drain power this comes exactly to 1.8 MW, produces 60/s steam (at speed 1.5)
    -- extra losses introduced when accounting for dissipation_factor
    energy_usage = string.format(
      "%.0fkW",
      (steam_per_second * power_per_steam * dissipation_factor - drain_power) * 1.5
    ),
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
    },
    idle_animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8,
      },
      max_sounds_per_type = 3,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        height = 2,
        base_area = 1,
        base_level = -1,
        pipe_connections = {
          { type = "input-output", position = { -2, 0 } },
          { type = "input-output", position = { 2, 0 } },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 0, -2 } },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 0, 2 } },
        },
      },
    },
  },
  {
    type = "item",
    name = "angels-electric-boiler-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
    }, 3, angelsmods.petrochem.number_tint),
    subgroup = "boiler-building",
    order = "c[electric-boiler]-c",
    place_result = "angels-electric-boiler-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-electric-boiler-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
    }, 3, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-electric-boiler-3" },
    fast_replaceable_group = "angels-electric-boiler",
    max_health = 500,
    corpse = "small-remnants",
    collision_box = { { -1.29, -1.29 }, { 1.29, 1.29 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_specification = {
      module_slots = 2,
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    crafting_categories = { "petrochem-boiler" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.02 * 60,
      drain = string.format("%.0fkW", drain_power * 2),
    },
    -- with drain power this comes exactly to 2.4 MW, produces 80/s steam (at speed 2)
    -- extra losses introduced when accounting for dissipation_factor
    energy_usage = string.format("%.0fkW", (steam_per_second * power_per_steam * dissipation_factor - drain_power) * 2),
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-on.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
    },
    idle_animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-off.png",
        frame_count = 1,
        width = 160,
        height = 160,
        shift = { 0, 0 },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8,
      },
      max_sounds_per_type = 3,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        height = 2,
        base_area = 1,
        base_level = -1,
        pipe_connections = {
          { type = "input-output", position = { -2, 0 } },
          { type = "input-output", position = { 2, 0 } },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 0, -2 } },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 0, 2 } },
        },
      },
    },
  },
})
