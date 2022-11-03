data:extend({
  {
    type = "simple-entity",
    name = "angels-crystal-rock",
    flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
    icon = "__base__/graphics/icons/rock-huge.png",
    icon_size = 32,
    subgroup = "grass",
    order = "b[decorative]-k[stone-rock]-c[crystal]",
    collision_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
    selection_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    minable = {
      mining_particle = "stone-particle",
      mining_time = 8,
      result = "stone",
      count = 20,
    },
    loot = {
      { item = "stone", probability = 1, count_min = 5, count_max = 10 },
    },
    count_as_rock_for_filtered_deconstruction = true,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    render_layer = "object",
    max_health = 200,
    resistances = {
      {
        type = "fire",
        percent = 100,
      },
    },
    autoplace = {
      order = "a[doodad]-c[angels-crystal-rock]",
      max_probability = 0.05,
      peaks = {
        {
          influence = 0.0002,
        },
        {
          influence = 0.002,
          min_influence = 0,
          elevation_optimal = 45000,
          elevation_range = 37000,
          elevation_max_range = 45000,
        },
      },
    },
    pictures = {
      {
        filename = "__angelsrefining__/graphics/entity/rock/crystal-rock-1.png",
        width = 192,
        height = 160,
        shift = { 0.5, 0 },
      },
      {
        filename = "__angelsrefining__/graphics/entity/rock/crystal-rock-2.png",
        width = 192,
        height = 160,
        shift = { 0.5, 0 },
      },
      {
        filename = "__angelsrefining__/graphics/entity/rock/crystal-rock-3.png",
        width = 192,
        height = 160,
        shift = { 0.5, 0 },
      },
      {
        filename = "__angelsrefining__/graphics/entity/rock/crystal-rock-4.png",
        width = 192,
        height = 160,
        shift = { 0.5, 0 },
      },
    },
  },
  -- {
  -- type = "simple-entity",
  -- name = "angels-crystal-rock-big",
  -- flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
  -- icon = "__base__/graphics/icons/stone-rock.png",
  -- subgroup = "grass",
  -- order = "b[decorative]-k[stone-rock]-c[crystal-big]",
  -- collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
  -- selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
  -- minable =
  -- {
  -- mining_particle = "stone-particle",
  -- mining_time = 8,
  -- result = "stone",
  -- count = 20
  -- },
  -- loot =
  -- {
  -- {item = "stone", probability = 1, count_min = 5, count_max = 10}
  -- },
  -- mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  -- render_layer = "object",
  -- max_health = 500,
  -- resistances =
  -- {
  -- {
  -- type = "fire",
  -- percent = 100
  -- }
  -- },
  -- autoplace =
  -- {
  -- order = "a[doodad]-d[angels-crystal-rock-big]",
  -- max_probability = 0.005,
  -- peaks =
  -- {
  -- {
  -- influence = 0.0002
  -- },
  -- {
  -- influence = 0.002;
  -- min_influence = 0,
  -- elevation_optimal = 45000,
  -- elevation_range = 37000,
  -- elevation_max_range = 45000,
  -- }
  -- }
  -- },
  -- pictures =
  -- {
  -- {
  -- filename = "__angelsrefining__/graphics/entity/rock/crystal-rock-big-1.png",
  -- width = 320,
  -- height = 256,
  -- shift = {3, -1.2}
  -- },
  -- }
  -- },
})
