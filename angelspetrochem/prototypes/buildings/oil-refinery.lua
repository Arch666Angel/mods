-- mark default oil ref to be upgradeable to oil-refinery-2
local oilrefinery = data.raw["assembling-machine"]["oil-refinery"]
if not oilrefinery.fast_replaceable_group then
  oilrefinery.fast_replaceable_group = "oil-refinery"
end
if not oilrefinery.next_upgrade then
  oilrefinery.next_upgrade = "oil-refinery-2"
end

data:extend({
  {
    type = "item",
    name = "oil-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-oil-refinery",
    order = "b[oil-refinery]-b",
    place_result = "oil-refinery-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "oil-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    -- Base-game oil refinery has a custom collision_mask, which all upgrades need to match.
    collision_mask = oilrefinery.collision_mask,
    minable = { mining_time = 1, result = "oil-refinery-2" },
    fast_replaceable_group = "oil-refinery",
    next_upgrade = "oil-refinery-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    scale_entity_info_icon = true,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "oil-processing" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 7.2 },
    },
    energy_usage = "500kW",
    ingredient_count = 4,
    graphics_set = {
      animation = make_4way_animation_from_spritesheet({
        layers = {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      }),
      working_visualisations = {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25),
          },
          light = { intensity = 0.4, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -2, -2.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 0, -2.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 2, -2.4 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "oil-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-oil-refinery",
    order = "b[oil-refinery]-c",
    place_result = "oil-refinery-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "oil-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    -- Base-game oil refinery has a custom collision_mask, which all upgrades need to match.
    collision_mask = oilrefinery.collision_mask,
    minable = { mining_time = 1, result = "oil-refinery-3" },
    fast_replaceable_group = "oil-refinery",
    next_upgrade = "oil-refinery-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    scale_entity_info_icon = true,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "oil-processing" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 8.4 },
    },
    energy_usage = "600kW",
    ingredient_count = 4,
    graphics_set = {
      animation = make_4way_animation_from_spritesheet({
        layers = {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      }),
      working_visualisations = {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25),
          },
          light = { intensity = 0.4, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -2, -2.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 0, -2.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 2, -2.4 }, direction = defines.direction.north },
        },
      },
    },
  },
  {
    type = "item",
    name = "oil-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-oil-refinery",
    order = "b[oil-refinery]-d",
    place_result = "oil-refinery-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "oil-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    -- Base-game oil refinery has a custom collision_mask, which all upgrades need to match.
    collision_mask = oilrefinery.collision_mask,
    minable = { mining_time = 1, result = "oil-refinery-4" },
    fast_replaceable_group = "oil-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    scale_entity_info_icon = true,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "oil-processing" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 10.8 },
    },
    energy_usage = "700kW",
    ingredient_count = 4,
    graphics_set = {
      animation = make_4way_animation_from_spritesheet({
        layers = {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      }),
      working_visualisations = {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25),
          },
          light = { intensity = 0.4, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -2, -2.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 0, -2.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { 2, -2.4 }, direction = defines.direction.north },
        },
      },
    },
  },
})
