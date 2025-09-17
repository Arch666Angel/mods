local def_shift = { 0.75, -2 }
local simulations = require("prototypes.factoriopedia-simulations")

data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["angels-puffer-nest"] = {}

data:extend({
  {
    type = "tree",
    name = "angels-puffer-nest",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/puffer-nest.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
    minable = {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "angels-bio-puffer-egg-1",
      count = 2,
    },
    emissions_per_second = {pollution = -0.006}, --emissions_per_tick = -0.0001,
    factoriopedia_simulation = simulations.factoriopedia_angels_puffer_nest,
    max_health = 20,
    collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    drawing_box_vertical_extension = 4,
    map_color = { r = 1.0, g = 0.8, b = 0.2 }, --{r = 0.2, g = 0.8, b = 0.2},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    impact_category = "wood",
    autoplace = {
      order = "za",
      probability_expression = 0.00003,
    },
    pictures = {
      {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/puffer-nest-1-shadow.png",
            width = 192,
            height = 192,
            line_length = 1,
            shift = def_shift,
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/puffer-nest-1.png",
            width = 192,
            height = 192,
            line_length = 1,
            shift = def_shift,
          },
        },
      },
      {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/puffer-nest-2-shadow.png",
            width = 192,
            height = 192,
            line_length = 1,
            shift = def_shift,
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/puffer-nest-2.png",
            width = 192,
            height = 192,
            line_length = 1,
            shift = def_shift,
          },
        },
      },
    },
  },
})
