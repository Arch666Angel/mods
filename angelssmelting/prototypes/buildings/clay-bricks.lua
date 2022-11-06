data:extend({
  {
    type = "tile",
    name = "clay-bricks",
    needs_correction = false,
    minable = { mining_time = 0.5, result = "clay-brick" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = { "ground-tile" },
    walking_speed_modifier = 1.25,
    layer = 60,
    decorative_removal_probability = 0.75,
    variants = {
      main = {
        {
          picture = "__angelssmelting__/graphics/entity/tiles/clay-bricks-small.png",
          count = 16,
          scale = 0.5,
          size = 1,
        },
        -- {
        -- picture = "__base__/graphics/terrain/stone-path/stone-path-2.png",
        -- count = 4,
        -- size = 2,
        -- probability = 0.39,
        -- },
        -- {
        -- picture = "__base__/graphics/terrain/stone-path/stone-path-4.png",
        -- count = 4,
        -- size = 4,
        -- probability = 1,
        -- },
      },
      inner_corner = {
        picture = "__angelssmelting__/graphics/entity/tiles/clay-bricks-inner.png",
        scale = 0.5,
        count = 8,
      },
      outer_corner = {
        picture = "__angelssmelting__/graphics/entity/tiles/clay-bricks-outer.png",
        scale = 0.5,
        count = 1,
      },
      side = {
        picture = "__angelssmelting__/graphics/entity/tiles/clay-bricks-side.png",
        scale = 0.5,
        count = 8,
      },
      -- u_transition =
      -- {
      -- picture = "__base__/graphics/terrain/stone-path/stone-path-u.png",
      -- count = 10
      -- },
      -- o_transition =
      -- {
      -- picture = "__base__/graphics/terrain/stone-path/stone-path-o.png",
      -- count = 10
      -- }
    },
    walking_sound = {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2,
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2,
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2,
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2,
      },
    },
    map_color = { r = 50, g = 50, b = 50 },
    pollution_absorption_per_second = 0,
    --ageing=0,
    vehicle_friction_modifier = 1.1,
  },
})
