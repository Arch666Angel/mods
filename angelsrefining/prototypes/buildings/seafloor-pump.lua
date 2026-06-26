local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

circuit_connector_definitions["angels-seafloor-pump"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 31,
      main_offset = util.by_pixel(46.5, -16),
      shadow_offset = util.by_pixel(46.5, -16),
      show_shadow = true,
    },
    {
      variation = 30,
      main_offset = util.by_pixel(17.5, 25.25),
      shadow_offset = util.by_pixel(17.5, 25.25),
      show_shadow = true,
    },
    {
      variation = 28,
      main_offset = util.by_pixel(46.125, 4.375),
      shadow_offset = util.by_pixel(46.125, 4.375),
      show_shadow = true,
    },
    {
      variation = 26,
      main_offset = util.by_pixel(-17.5, 25.25),
      shadow_offset = util.by_pixel(-17.5, 25.25),
      show_shadow = true,
    },
  })

data:extend({
  {
    type = "item",
    name = "angels-seafloor-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    subgroup = "angels-washing-building",
    order = "a",
    place_result = "angels-seafloor-pump",
    stack_size = 10,
  },
  {
    type = "offshore-pump",
    name = "angels-seafloor-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "filter-directions" },
    collision_mask = { layers = { object = true, train = true, is_object = true, is_lower_object = true } },
    tile_buildability_rules = {
      {
        area = { { -1.4, -1.4 }, { 1.4, 0.4 } },
        required_tiles = { layers = { ground_tile = true } },
        colliding_tiles = { layers = { water_tile = true } },
        remove_on_collision = true,
      },
      {
        area = { { -2, -3 }, { 2, -2 } },
        required_tiles = { layers = { water_tile = true } },
        colliding_tiles = { layers = {} },
      },
    },
    minable = { mining_time = 0.1, result = "angels-seafloor-pump" },
    max_health = 150,
    corpse = "small-remnants",
    fluid_source_offset = { 0, -1 },
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
      {
        type = "impact",
        percent = 30,
      },
    },
    collision_box = { { -1.6, -2.05 }, { 1.6, 0.3 } },
    selection_box = { { -1.6, -2.49 }, { 1.6, 0.49 } },
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "angels-water-viscous-mud",
      pipe_connections = {
        {
          position = { 0, 0 },
          direction = defines.direction.south,
          flow_direction = "output",
        },
      },
    },
    energy_source = {
      type = "void",
    },
    energy_usage = "60kW",
    pumping_speed = 5,
    tile_width = 3,
    tile_height = 3,
    impact_category = "metal",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/offshore-pump.ogg",
        volume = 0.5,
        modifiers = volume_multiplier("tips-and-tricks", 1.1),
        audible_distance_modifier = 0.7,
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    perceived_performance = { minimum = 0.5 },
    always_draw_fluid = true,
    graphics_set = {
      base_pictures = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { 0, -1 },
          width = 160,
          height = 160,
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { 1, 0 },
          x = 160,
          width = 160,
          height = 160,
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { 0, 1 },
          x = 320,
          width = 160,
          height = 160,
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { -1, 0 },
          x = 480,
          width = 160,
          height = 160,
        },
      },
    },
    placeable_position_visualization = {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3 * 64,
    },
    circuit_connector = circuit_connector_definitions["angels-seafloor-pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
