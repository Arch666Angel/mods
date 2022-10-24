local def_shift = { 0.75, -2 }

data:extend({
  {
    type = "item",
    name = "puffer-nest",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-nest.png",
    icon_size = 32,
    subgroup = "farming-gardens",
    order = "a",
    stack_size = 200,
    place_result = "puffer-nest",
  },
  {
    type = "tree",
    name = "puffer-nest",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-nest.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
    minable = {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "bio-puffer-egg-1",
      count = 2,
    },
    emissions_per_second = -0.006, --emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    drawing_box = { { -2, -4 }, { 4, 1 } },
    map_color = { r = 1.0, g = 0.8, b = 0.2 }, --{r = 0.2, g = 0.8, b = 0.2},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = {
      order = "za",
      max_probability = 0.025,
      peaks = {
        -- {
        -- influence = 0.0002
        -- },
        {
          influence = 0.0005,
          min_influence = 0,
          water_optimal = 0.5,
          water_range = 0.5,
          water_max_range = 0.5,
        },
      },
      --tile_restriction = {"grass-1", "grass-2", "grass-3", "grass-4", "dry-dirt"},
    },
    pictures = {
      {
        layers = {
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-1-shadow.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-1.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
        },
      },
      {
        layers = {
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-2-shadow.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-2.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
        },
      },
    },
  },
})
