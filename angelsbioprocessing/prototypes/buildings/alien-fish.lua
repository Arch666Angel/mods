data:extend({
  {
    type = "fish",
    name = "alien-fish-1",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "not-on-map" },
    minable = { mining_time = 1, result = "alien-fish-1-raw", count = 1 },
    max_health = 20,
    subgroup = "creatures",
    order = "xa",
    collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    pictures = {
      {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/aliens/fish-1.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
      },
    },
    autoplace = {
      -- control = "water",
      order = "xa",
      --max_probability = 0.025,
      --peaks = {
      --  {
      --    influence = 0.01,
      --    min_influence = 0,
      --    water_optimal = 0.625,
      --    water_range = 0.125,
      --    water_max_range = 0.125,
      --  },
      --},
      probability_expression = "min(0.025, 0.005*angels_moisture_level(0.625, 0.125, 0.125))",
    },
    protected_from_tile_building = false,
  },
  {
    type = "fish",
    name = "alien-fish-2",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
    flags = { "placeable-neutral", "not-on-map" },
    minable = { mining_time = 1, result = "alien-fish-2-raw", count = 1 },
    max_health = 20,
    subgroup = "creatures",
    order = "xb",
    collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    pictures = {
      {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/aliens/fish-2.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
      },
    },
    autoplace = {
      -- control = "water",
      order = "xb",
      --max_probability = 0.025,
      --peaks = {
      --  {
      --    influence = 0.01,
      --    min_influence = 0,
      --    water_optimal = 0.875,
      --    water_range = 0.125,
      --    water_max_range = 0.125,
      --  },
      --},
      probability_expression = "min(0.025, 0.005*angels_moisture_level(0.875, 0.25, 0.25))",
    },
    protected_from_tile_building = false,
  },
  {
    type = "fish",
    name = "alien-fish-3",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
    flags = { "placeable-neutral", "not-on-map" },
    minable = { mining_time = 1, result = "alien-fish-3-raw", count = 1 },
    max_health = 20,
    subgroup = "creatures",
    order = "xc",
    collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    pictures = {
      {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/aliens/fish-3.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
      },
    },
    autoplace = {
   --    -- control = "water",
      order = "xc",
   --    --max_probability = 0.025,
   --    --peaks = {
   --    --  {
   --    --    influence = 0.01,
   --    --    min_influence = 0,
   --    --    water_optimal = 0.250,
   --    --    water_range = 0.250,
   --    --    water_max_range = 0.250,
   --    --  },
   --    --},
      probability_expression = "min(0.025, 0.005*angels_moisture_level(0.25, 0.25, 0.25))",
      -- probability_expression = 0.005
    },
    protected_from_tile_building = false,
  },
})
 
data.raw.planet["nauvis"].map_gen_settings.autoplace_settings.entity.settings["alien-fish-1"] = {}
data.raw.planet["nauvis"].map_gen_settings.autoplace_settings.entity.settings["alien-fish-2"] = {}
data.raw.planet["nauvis"].map_gen_settings.autoplace_settings.entity.settings["alien-fish-3"] = {}
