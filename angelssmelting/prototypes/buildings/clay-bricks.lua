data:extend({
  {
    type = "tile",
    name = "angels-tile-clay-brick",
    needs_correction = false,
    minable = { mining_time = 0.5, result = "angels-clay-brick" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = { layers = {
      ground_tile = true,
    } },
    walking_speed_modifier = 1.25,
    layer = 60,
    decorative_removal_probability = 0.75,
    variants = {
      main = {
        {
          picture = "__angelssmeltinggraphics__/graphics/entity/tiles/clay-bricks-small.png",
          count = 16,
          scale = 0.5,
          size = 1,
        },
      },
      transition = {
        overlay_layout = {
          inner_corner = {
            spritesheet = "__angelssmeltinggraphics__/graphics/entity/tiles/clay-bricks-inner.png",
            count = 8,
            scale = 0.5,
          },
          outer_corner = {
            spritesheet = "__angelssmeltinggraphics__/graphics/entity/tiles/clay-bricks-outer.png",
            count = 1,
            scale = 0.5,
          },
          side = {
            spritesheet = "__angelssmeltinggraphics__/graphics/entity/tiles/clay-bricks-side.png",
            count = 8,
            scale = 0.5,
          },
          -- u_transition = {
          --   spritesheet = "__base__/graphics/terrain/stone-path/stone-path-u.png",
          --   count = 10,
          -- },
          -- o_transition = {
          --   spritesheet = "__base__/graphics/terrain/stone-path/stone-path-o.png",
          --   count = 10,
          -- },
        },
      },
    },
    walking_sound = {
      {
        filename = "__base__/sound/walking/concrete-1.ogg",
        volume = 1.2,
      },
      {
        filename = "__base__/sound/walking/concrete-2.ogg",
        volume = 1.2,
      },
      {
        filename = "__base__/sound/walking/concrete-3.ogg",
        volume = 1.2,
      },
      {
        filename = "__base__/sound/walking/concrete-4.ogg",
        volume = 1.2,
      },
    },
    map_color = { r = 50, g = 50, b = 50 },
    absorptions_per_second = { pollution = 0 },
    --ageing=0,
    vehicle_friction_modifier = 1.1,
  },
})
