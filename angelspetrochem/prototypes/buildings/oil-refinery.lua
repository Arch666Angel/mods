local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

-- mark default oil ref to be upgradeable to oil-refinery-2
local oilrefinery = data.raw["assembling-machine"]["oil-refinery"]
if not oilrefinery.fast_replaceable_group then
  oilrefinery.fast_replaceable_group = "oil-refinery"
end
if not oilrefinery.next_upgrade then
  oilrefinery.next_upgrade = "angels-oil-refinery-2"
end

data:extend({
  {
    type = "item",
    name = "angels-oil-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-oil-refinery",
    order = "b[oil-refinery]-b",
    place_result = "angels-oil-refinery-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-oil-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "angels-oil-refinery-2" },
    fast_replaceable_group = "oil-refinery",
    next_upgrade = "angels-oil-refinery-3",
    max_health = 350,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    icon_draw_specification = { scale = 2, shift = { 0, -0.3 } },
    icons_positioning =
    {
      {inventory_index = defines.inventory.crafter_modules, shift = {0, 1.25}}
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],
    collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
    -- Base-game oil refinery has a custom collision_mask, which all upgrades need to match.
    collision_mask = oilrefinery.collision_mask,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.3,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "oil-processing" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 7.2 },
    },
    energy_usage = "500kW",
    perceived_performance = {minimum = 0.25, maximum = 5},
    use_mirroring = true,
    graphics_set = require("__base__/prototypes/entity/oil-refinery-animation"),
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound = {filename = "__base__/sound/oil-refinery-north.ogg", volume = 0.9},
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          play_for_directions = {defines.direction.north}
        },
        {
          sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.9},
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          play_for_directions = {defines.direction.east, defines.direction.south, defines.direction.west}
        },
      },
      sound_accents =
      {
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-fluid", 3, 0.5),
            audible_distance_modifier = 0.3
          },
          frame = 1,
          play_for_directions = {defines.direction.north, defines.direction.west}
        },
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-gear", 3, 0.7),
            audible_distance_modifier = 0.3
          },
          frame = 1,
          play_for_directions = {defines.direction.north, defines.direction.west}
        },
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-mech", 3, 0.35),
            audible_distance_modifier = 0.5
          },
          frame = 3,
          play_for_directions = {defines.direction.south, defines.direction.west}
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          {
            flow_direction = "input",
            direction = defines.direction.south,
            position = { -1, 2 },
          },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          {
            flow_direction = "input",
            direction = defines.direction.south,
            position = { 1, 2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { -2, -2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { 0, -2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { 2, -2 },
          },
        },
      },
    },
    water_reflection = {
      pictures = util.sprite_load("__base__/graphics/entity/oil-refinery/oil-refinery-reflections",
      {
        scale = 3,
        variation_count = 4,
      }),
      rotate = false,
      orientation_to_variation = true,
    },
  },
  {
    type = "item",
    name = "angels-oil-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-oil-refinery",
    order = "b[oil-refinery]-c",
    place_result = "angels-oil-refinery-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-oil-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "angels-oil-refinery-3" },
    fast_replaceable_group = "oil-refinery",
    next_upgrade = "angels-oil-refinery-4",
    max_health = 350,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    icon_draw_specification = { scale = 2, shift = { 0, -0.3 } },
    icons_positioning =
    {
      {inventory_index = defines.inventory.crafter_modules, shift = {0, 1.25}}
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],
    collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
    -- Base-game oil refinery has a custom collision_mask, which all upgrades need to match.
    collision_mask = oilrefinery.collision_mask,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.3,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "oil-processing" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 8.4 },
    },
    energy_usage = "600kW",
    perceived_performance = {minimum = 0.25, maximum = 5},
    use_mirroring = true,
    graphics_set = require("__base__/prototypes/entity/oil-refinery-animation"),
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound = {filename = "__base__/sound/oil-refinery-north.ogg", volume = 0.9},
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          play_for_directions = {defines.direction.north}
        },
        {
          sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.9},
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          play_for_directions = {defines.direction.east, defines.direction.south, defines.direction.west}
        },
      },
      sound_accents =
      {
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-fluid", 3, 0.5),
            audible_distance_modifier = 0.3
          },
          frame = 1,
          play_for_directions = {defines.direction.north, defines.direction.west}
        },
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-gear", 3, 0.7),
            audible_distance_modifier = 0.3
          },
          frame = 1,
          play_for_directions = {defines.direction.north, defines.direction.west}
        },
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-mech", 3, 0.35),
            audible_distance_modifier = 0.5
          },
          frame = 3,
          play_for_directions = {defines.direction.south, defines.direction.west}
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          {
            flow_direction = "input",
            direction = defines.direction.south,
            position = { -1, 2 },
          },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          {
            flow_direction = "input",
            direction = defines.direction.south,
            position = { 1, 2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { -2, -2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { 0, -2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { 2, -2 },
          },
        },
      },
    },
    water_reflection = {
      pictures = util.sprite_load("__base__/graphics/entity/oil-refinery/oil-refinery-reflections",
      {
        scale = 3,
        variation_count = 4,
      }),
      rotate = false,
      orientation_to_variation = true,
    },
  },
  {
    type = "item",
    name = "angels-oil-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.petrochem.number_tint),
    subgroup = "angels-petrochem-buildings-oil-refinery",
    order = "b[oil-refinery]-d",
    place_result = "angels-oil-refinery-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-oil-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "angels-oil-refinery-4" },
    fast_replaceable_group = "oil-refinery",
    max_health = 300,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    icon_draw_specification = { scale = 2, shift = { 0, -0.3 } },
    icons_positioning =
    {
      {inventory_index = defines.inventory.crafter_modules, shift = {0, 1.25}}
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],
    collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
    -- Base-game oil refinery has a custom collision_mask, which all upgrades need to match.
    collision_mask = oilrefinery.collision_mask,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.3,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "oil-processing" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 10.8 },
    },
    energy_usage = "700kW",
    perceived_performance = {minimum = 0.25, maximum = 5},
    use_mirroring = true,
    graphics_set = require("__base__/prototypes/entity/oil-refinery-animation"),
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound = {filename = "__base__/sound/oil-refinery-north.ogg", volume = 0.9},
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          play_for_directions = {defines.direction.north}
        },
        {
          sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.9},
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          play_for_directions = {defines.direction.east, defines.direction.south, defines.direction.west}
        },
      },
      sound_accents =
      {
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-fluid", 3, 0.5),
            audible_distance_modifier = 0.3
          },
          frame = 1,
          play_for_directions = {defines.direction.north, defines.direction.west}
        },
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-gear", 3, 0.7),
            audible_distance_modifier = 0.3
          },
          frame = 1,
          play_for_directions = {defines.direction.north, defines.direction.west}
        },
        {
          sound =
          {
            variations = sound_variations("__base__/sound/oil-refinery-accents/oil-refinery-mech", 3, 0.35),
            audible_distance_modifier = 0.5
          },
          frame = 3,
          play_for_directions = {defines.direction.south, defines.direction.west}
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          {
            flow_direction = "input",
            direction = defines.direction.south,
            position = { -1, 2 },
          },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          {
            flow_direction = "input",
            direction = defines.direction.south,
            position = { 1, 2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { -2, -2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { 0, -2 },
          },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = { 2, -2 },
          },
        },
      },
    },
    water_reflection = {
      pictures = util.sprite_load("__base__/graphics/entity/oil-refinery/oil-refinery-reflections",
      {
        scale = 3,
        variation_count = 4,
      }),
      rotate = false,
      orientation_to_variation = true,
    },
  },
})
