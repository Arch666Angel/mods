local pollution_absorption_per_second = data.raw["tile"]["out-of-map"].pollution_absorption_per_second
  * settings.startup["angels-bio-tile-pollution-absorbtion-multiplier"].value
data:extend({
  {
    type = "item",
    name = "bio-tile",
    localised_description = { "item-description.bio-tile", string.format("%.6f", pollution_absorption_per_second) },
    icon = "__angelsbioprocessing__/graphics/icons/bio-tile.png",
    icon_size = 64,
    subgroup = "angels-stone",
    order = "f",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "bio-tile",
      condition_size = 4,
      condition = { "water-tile" },
    },
  },
  {
    type = "tile",
    name = "bio-tile",
    needs_correction = false,
    minable = { mining_time = 0.5, result = "bio-tile" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = { "ground-tile" },
    walking_speed_modifier = 1.3,
    layer = 80,
    decorative_removal_probability = 1,
    pollution_absorption_per_second = data.raw["tile"]["out-of-map"].pollution_absorption_per_second
      * (2 ^ (settings.startup["angels-bio-tile-pollution-absorbtion-multiplier"].value - 1)),
    variants = {
      main = {
        {
          picture = "__angelsbioprocessing__/graphics/entity/tile-bio/bio-tile-small.png",
          count = 16,
          scale = 0.5,
          size = 1,
        },
      },
      inner_corner = {
        picture = "__angelsbioprocessing__/graphics/entity/tile-bio/bio-tile-corner-inner.png",
        width = 128,
        height = 128,
        scale = 0.5,
        count = 1,
      },
      outer_corner = {
        picture = "__angelsbioprocessing__/graphics/entity/tile-bio/bio-tile-corner-outer.png",
        width = 128,
        height = 128,
        scale = 0.5,
        count = 1,
      },
      side = {
        picture = "__angelsbioprocessing__/graphics/entity/tile-bio/bio-tile-side.png",
        scale = 0.5,
        count = 4,
      },
      u_transition = {
        picture = "__angelsbioprocessing__/graphics/entity/tile-bio/bio-tile-corner-u.png",
        scale = 0.5,
        count = 1,
      },
      o_transition = {
        picture = "__angelsbioprocessing__/graphics/entity/tile-bio/bio-tile-corner-o.png",
        scale = 0.5,
        count = 1,
      },
    },
    walking_sound = {
      {
        filename = "__base__/sound/walking/decorative-grass-01.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-02.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-03.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-04.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-05.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-06.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-07.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-08.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-09.ogg",
        volume = 0.8,
      },
      {
        filename = "__base__/sound/walking/decorative-grass-10.ogg",
        volume = 0.8,
      },
    },
    map_color = { r = 50, g = 50, b = 50 },
    --ageing = 0,
    vehicle_friction_modifier = 1.1,
  },
})
