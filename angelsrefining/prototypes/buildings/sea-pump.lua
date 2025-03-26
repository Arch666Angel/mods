local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

data:extend({
  {
    type = "item",
    name = "sea-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/sea-pump-ico.png",
    icon_size = 32,
    subgroup = "washing-building",
    order = "f",
    place_result = "sea-pump-placeable",
    stack_size = 10,
  },
  {
    type = "offshore-pump",
    name = "sea-pump-placeable",
    localised_name = { "entity-name.sea-pump" },
    localised_description = { "entity-description.sea-pump" },
    icon = "__angelsrefininggraphics__/graphics/icons/sea-pump-ico.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "filter-directions" },
    collision_mask = { layers = { is_object = true, train = true } }, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_mask = { layers = {
      ground_tile = true,
    } }, -- to prevent building on edge of map :(
    adjacent_tile_collision_box = { { -2, -3 }, { 2, -2 } },
    minable = { mining_time = 1, result = "sea-pump" },
    max_health = 200,
    corpse = "small-remnants",
    fluid = "water",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    collision_box = { { -1.4, -2.45 }, { 1.4, 0.3 } },
    selection_box = { { -1.6, -2.49 }, { 1.6, 0.49 } },
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections = {
        {
          flow_direction = "output",
          position = { 0, 0 },
          direction = defines.direction.north,
        },
      },
    },
    fluid_source_offset = { 0, -1 },
    energy_source = {
      type = "void",
    },
    energy_usage = "60kW",
    pumping_speed = 1500 / 60,
    tile_width = 3,
    tile_height = 3,
    impact_category = "metal",
    graphics_set = {
      base_pictures = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
          priority = "high",
          shift = { 0, -1 },
          width = 160,
          height = 160,
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
          priority = "high",
          shift = { 1, 0 },
          x = 160,
          width = 160,
          height = 160,
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
          priority = "high",
          shift = { 0, 1 },
          x = 320,
          width = 160,
          height = 160,
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
          priority = "high",
          shift = { -1, 0 },
          x = 480,
          width = 160,
          height = 160,
        },
      },
    },
    placeable_position_visualization = {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3 * 64,
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "resource-category",
    name = "sea-pump",
  },
  {
    type = "resource",
    name = "sea-pump-resource",
    localised_name = { "fluid-name.water" },
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    flags = { "placeable-neutral", "not-on-map" },
    selectable_in_game = false,
    category = "sea-pump",
    subgroup = "raw-resource",
    order = "a-b-a",
    infinite = true,
    highlight = false,
    minimum = 100000,
    normal = 100000,
    infinite_depletion_amount = 1,
    resource_patch_search_radius = 1,
    --tree_removal_probability = 0.7,
    --tree_removal_max_distance = 32 * 32,
    minable = {
      mining_time = 1, -- how long it takes to 'tick'
      results = {
        {
          type = "fluid",
          name = "water",
          amount_min = 1500, -- amount of water it produces each 'tick'
          amount_max = 1500,
          probability = 1,
        },
      },
    },
    walking_sound = sounds.oil,
    collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    --autoplace = resource_autoplace.resource_autoplace_settings
    --{
    --  name = "crude-oil",
    --  order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
    --  base_density = 8.2,
    --  base_spots_per_km2 = 1.8,
    --  random_probability = 1/48,
    --  random_spot_size_minimum = 1,
    --  random_spot_size_maximum = 1, -- don't randomize spot size
    --  additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
    --  has_starting_area_placement = false,
    --  regular_rq_factor_multiplier = 1
    --},
    stage_counts = { 0 },
    stages = {
      sheet = {
        filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/empty.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        variation_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 1,
      },
    },
    map_color = { 0, 0, 0, 0 },
    --map_grid = false
  },
  {
    type = "mining-drill",
    name = "sea-pump",
    localised_name = { "entity-name.sea-pump" },
    localised_description = { "entity-description.sea-pump" },
    icon = "__angelsrefininggraphics__/graphics/icons/sea-pump-ico.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.5, result = "sea-pump" },
    placeable_by = { item = "sea-pump", count = 1 },
    resource_categories = { "sea-pump" },
    max_health = 200,
    corpse = "small-remnants",
    dying_explosion = "pumpjack-explosion",
    collision_box = { { -1.4, -2.45 }, { 1.4, 0.3 } },
    selection_box = { { -1.6, -2.49 }, { 1.6, 0.49 } },
    drawing_box = { { -1.6, -2.5 }, { 1.5, 1.6 } },
    damaged_trigger_effect = hit_effects.entity(),
    energy_source = {
      type = "electric",
      emissions_per_minute = { pollution = 10 },
      usage_priority = "secondary-input",
    },
    output_fluid_box = {
      filter = "water",
      volume = 10000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {
          flow_direction = "output",
          position = { 0, 0.25 },
          direction = defines.direction.north,
        },
      },
    },
    energy_usage = "250kW",
    mining_speed = 1, -- how fast it 'ticks'
    base_productivity = -0.8, -- partially disable mining productivity. Setting this more negative seems to have no effect
    resource_searching_radius = 0.49,
    vector_to_place_result = { 0, 0 },
    module_slots = 2,
    allowed_effects = { "speed", "consumption", "pollution" }, -- disallow productivity modules
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12,
    },
    --monitor_visualization_tint = {r=78, g=173, b=255},
    --base_render_layer = "lower-object-above-shadow",
    base_picture = {
      north = {
        filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
        priority = "high",
        shift = { 0, -1 },
        width = 160,
        height = 160,
      },
      east = {
        filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
        priority = "high",
        shift = { 1, 0 },
        x = 160,
        width = 160,
        height = 160,
      },
      south = {
        filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
        priority = "high",
        shift = { 0, 1 },
        x = 320,
        width = 160,
        height = 160,
      },
      west = {
        filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
        priority = "high",
        shift = { -1, 0 },
        x = 480,
        width = 160,
        height = 160,
      },
    },
    --animations =
    --{
    --  north =
    --  {
    --    layers =
    --    {
    --      {
    --        priority = "high",
    --        filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
    --        animation_speed = 0.5,
    --        scale = 0.5,
    --        line_length = 8,
    --        width = 206,
    --        height = 202,
    --        frame_count = 40,
    --        shift = util.by_pixel(-4, -24)
    --      },
    --      {
    --        priority = "high",
    --        filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
    --        animation_speed = 0.5,
    --        draw_as_shadow = true,
    --        line_length = 8,
    --        width = 309,
    --        height = 82,
    --        frame_count = 40,
    --        scale = 0.5,
    --        shift = util.by_pixel(17.75, 14.5)
    --      }
    --    }
    --  }
    --},
    impact_category = "default",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    --working_sound =
    --{
    --  sound =
    --  {
    --    {
    --      filename = "__base__/sound/pumpjack.ogg",
    --      volume = 0.7
    --    },
    --    --{
    --    --  filename = "__base__/sound/pumpjack-1.ogg",
    --    --  volume = 0.43
    --    --}
    --  },
    --  max_sounds_per_prototype = 3,
    --  fade_in_ticks = 4,
    --  fade_out_ticks = 10
    --},
    --fast_replaceable_group = "pumpjack",

    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
