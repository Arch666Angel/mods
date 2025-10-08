local pollution_absorption_per_second = data.raw["tile"]["out-of-map"].absorptions_per_second.pollution
  * (2 ^ (settings.startup["angels-bio-tile-pollution-absorbtion-multiplier"].value - 1))
data:extend({
  {
    type = "item",
    name = "angels-bio-tile",
    localised_description = { "item-description.angels-bio-tile", string.format("%.6f", pollution_absorption_per_second) },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-tile.png",
    icon_size = 64,
    subgroup = "angels-stone",
    order = "f",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "angels-bio-tile",
      condition_size = 4,
      condition = {layers = {water_tile = true}},
    },
  },
  {
    type = "tile",
    name = "angels-bio-tile",
    needs_correction = false,
    minable = { mining_time = 0.5, result = "angels-bio-tile" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {layers={
      ground_tile=true}},
    walking_speed_modifier = 1.3,
    layer = 80,
    decorative_removal_probability = 1,
    absorptions_per_second = {pollution = pollution_absorption_per_second},
    variants = {
      main = {
        {
          picture = "__angelsbioprocessinggraphics__/graphics/entity/tile-bio/bio-tile-small.png",
          count = 16,
          scale = 0.5,
          size = 1,
        },
      },
      transition = {
        overlay_layout = {
          inner_corner = {
            spritesheet = "__angelsbioprocessinggraphics__/graphics/entity/tile-bio/bio-tile-corner-inner.png",
            scale = 0.5,
            count = 1,
          },
          outer_corner = {
            spritesheet = "__angelsbioprocessinggraphics__/graphics/entity/tile-bio/bio-tile-corner-outer.png",
            scale = 0.5,
            count = 1,
          },
          side = {
            spritesheet = "__angelsbioprocessinggraphics__/graphics/entity/tile-bio/bio-tile-side.png",
            scale = 0.5,
            count = 4,
          },
          u_transition = {
            spritesheet = "__angelsbioprocessinggraphics__/graphics/entity/tile-bio/bio-tile-corner-u.png",
            scale = 0.5,
            count = 1,
          },
          o_transition = {
            spritesheet = "__angelsbioprocessinggraphics__/graphics/entity/tile-bio/bio-tile-corner-o.png",
            scale = 0.5,
            count = 1,
          },
        },
      },
    },
    walking_sound = {
      {
        filename = "__base__/sound/walking/decorative-grass-1.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-2.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-3.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-4.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-5.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-6.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-7.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-8.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-9.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-10.ogg",
        volume = 0.8,
      },
    },
    map_color = { r = 50, g = 50, b = 50 },
    vehicle_friction_modifier = 1.1,
  },
})
