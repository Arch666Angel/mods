local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local create_static_stripes = function(stripe, stripe_count)
  local stripes = {}
  for i = 1, stripe_count do
    table.insert(stripes, stripe)
  end
  return stripes
end

circuit_connector_definitions["angels-ground-water-pump"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 31, main_offset = util.by_pixel( 16.125, -0.5), shadow_offset = util.by_pixel( 16.125, -0.5), show_shadow = true },
  { variation = 30, main_offset = util.by_pixel( 4.625,  6.375), shadow_offset = util.by_pixel( 4.625,  6.375), show_shadow = true },
  { variation = 29, main_offset = util.by_pixel(-15.625,  5.625), shadow_offset = util.by_pixel(-15.625,  5.625), show_shadow = true },
  { variation =  2, main_offset = util.by_pixel(-5.625,  8.375), shadow_offset = util.by_pixel(-5.625,  8.375), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-ground-water-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/water-pump.png",
    icon_size = 48,
    subgroup = "angels-washing-building",
    order = "e",
    place_result = "angels-ground-water-pump",
    stack_size = 20,
  },
  {
    type = "offshore-pump",
    name = "angels-ground-water-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/water-pump.png",
    icon_size = 48,
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = {layers={object=true, train=true, is_object=true, is_lower_object=true}},
    collision_box = { { -0.45, -1.45 }, { 0.45, 0.45 } },
    tile_width = 1,
    tile_height = 1,
    fluid_source_offset = {0, -1},
    selection_box = { { -0.5, -1.5 }, { 0.5, 0.5 } },
    minable = { mining_time = 0.1, result = "angels-ground-water-pump" },
    max_health = 100,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "small-remnants",
    dying_explosion = "pipe-explosion",
    always_draw_fluid = true,
    pumping_speed = 20 / 1200 * 60,
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections = {
        {
          flow_direction = "output",
          position = { 0, 0 },
          direction = defines.direction.south
        },
      },
    },
    energy_source =
    {
      type = "void"
    },
    energy_usage = "60kW",

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

    impact_category = "default",
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
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              stripes = create_static_stripes({
                filename = "__angelsrefininggraphics__/graphics/entity/water-pump/down-pipe-north.png",
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
              filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-north.png",
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
                filename = "__angelsrefininggraphics__/graphics/entity/water-pump/down-pipe-east.png",
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
              filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-east.png",
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
              filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-south.png",
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
                filename = "__angelsrefininggraphics__/graphics/entity/water-pump/down-pipe-south.png",
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
                filename = "__angelsrefininggraphics__/graphics/entity/water-pump/down-pipe-west.png",
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
              filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-west.png",
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
    circuit_connector = circuit_connector_definitions["angels-ground-water-pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
