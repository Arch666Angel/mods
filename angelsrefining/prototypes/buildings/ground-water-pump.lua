local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local create_static_stripes = function(stripe, stripe_count)
  local stripes = {}
  for i = 1, stripe_count do
    table.insert(stripes, stripe)
  end
  return stripes
end

data:extend({
  {
    type = "item",
    name = "ground-water-pump",
    icon = "__angelsrefining__/graphics/icons/water-pump.png",
    icon_size = 48,
    subgroup = "washing-building",
    order = "e",
    place_result = "ground-water-pump",
    stack_size = 20,
  },
  {
    type = "offshore-pump",
    name = "ground-water-pump",
    icon = "__angelsrefining__/graphics/icons/water-pump.png",
    icon_size = 48,
    icon_mipmaps = 1,
    flags = { "placeable-neutral", "player-creation" },

    collision_mask = { "water-tile", "object-layer", "player-layer" },
    collision_box = { { -0.45, -1.45 }, { 0.45, 0.45 } },
    tile_width = 1,
    tile_height = 1,
    center_collision_mask = { "water-tile", "object-layer", "player-layer" },
    fluid_box_tile_collision_test = {},
    adjacent_tile_collision_test = {},
    adjacent_tile_collision_mask = {},
    adjacent_tile_collision_box = { { -45, -1.5 }, { 0.45, -0.5 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, 0.5 } },

    minable = { mining_time = 0.1, result = "ground-water-pump" },

    max_health = 100,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "small-remnants",
    dying_explosion = "pipe-explosion",

    fluid = "water",
    always_draw_fluid = true,
    pumping_speed = 20 / 1200 * 60,
    fluid_box = {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections = {
        {
          position = { 0, 1 },
          type = "output",
        },
      },
    },

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

    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/offshore-pump.ogg",
          volume = 0.5,
        },
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },

    min_perceived_performance = 0.5,
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              stripes = create_static_stripes({
                filename = "__angelsrefining__/graphics/entity/water-pump/down-pipe-north.png",
                width_in_frames = 1,
                height_in_frames = 1,
              }, 16),
              priority = "high",
              frame_count = 16,
              animation_speed = 0.25,
              width = 128,
              height = 128,
              shift = { 0, -1 },
              scale = 0.5,
            },
            {
              filename = "__angelsrefining__/graphics/entity/water-pump/pump-north.png",
              priority = "high",
              line_length = 4,
              frame_count = 16,
              animation_speed = 0.25,
              width = 256 / 4,
              height = 256 / 4,
              shift = util.by_pixel(0, -3.75),
            },
          },
        },
        east = {
          layers = {
            {
              stripes = create_static_stripes({
                filename = "__angelsrefining__/graphics/entity/water-pump/down-pipe-east.png",
                width_in_frames = 1,
                height_in_frames = 1,
              }, 16),
              priority = "high",
              frame_count = 16,
              animation_speed = 0.25,
              width = 128,
              height = 128,
              shift = { 1, 0 },
              scale = 0.5,
            },
            {
              filename = "__angelsrefining__/graphics/entity/water-pump/pump-east.png",
              priority = "high",
              line_length = 4,
              frame_count = 16,
              animation_speed = 0.25,
              width = 256 / 4,
              height = 256 / 4,
              shift = util.by_pixel(-1, -3.75),
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/water-pump/pump-south.png",
              priority = "high",
              line_length = 4,
              frame_count = 16,
              animation_speed = 0.25,
              width = 256 / 4,
              height = 256 / 4,
              --shift = util.by_pixel(0, -3.75),
            },
            {
              stripes = create_static_stripes({
                filename = "__angelsrefining__/graphics/entity/water-pump/down-pipe-south.png",
                width_in_frames = 1,
                height_in_frames = 1,
              }, 16),
              priority = "high",
              frame_count = 16,
              animation_speed = 0.25,
              width = 128,
              height = 128,
              shift = { 0, 1 },
              scale = 0.5,
            },
          },
        },
        west = {
          layers = {
            {
              stripes = create_static_stripes({
                filename = "__angelsrefining__/graphics/entity/water-pump/down-pipe-west.png",
                width_in_frames = 1,
                height_in_frames = 1,
              }, 16),
              priority = "high",
              frame_count = 16,
              animation_speed = 0.25,
              width = 128,
              height = 128,
              shift = { -1, 0 },
              scale = 0.5,
            },
            {
              filename = "__angelsrefining__/graphics/entity/water-pump/pump-west.png",
              priority = "high",
              line_length = 4,
              frame_count = 16,
              animation_speed = 0.25,
              width = 256 / 4,
              height = 256 / 4,
              shift = util.by_pixel(-0, -3.75),
            },
          },
        },
      },
    },

    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
