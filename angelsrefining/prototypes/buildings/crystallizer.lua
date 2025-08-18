local function angels_crystallizer_fluid_boxes()
  return {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      pipe_picture = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 0,
          shift = { 0, 1 },
          scale = 0.5,
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 128,
          shift = { -1, 0 },
          scale = 0.5,
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 256,
          shift = { 0, -1 },
          scale = 0.5,
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 384,
          shift = { 1, 0 },
          scale = 0.5,
        },
      },
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { 0, 2 }, direction = defines.direction.south } },
    },
  }
end

circuit_connector_definitions["angels-crystallizer"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-4.375,  41.75), shadow_offset = util.by_pixel(-4.375,  41.75), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.375,  41.75), shadow_offset = util.by_pixel(-4.375,  41.75), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.375,  41.75), shadow_offset = util.by_pixel(-4.375,  41.75), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.375,  41.75), shadow_offset = util.by_pixel(-4.375,  41.75), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-crystallizer",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 1, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "c[crystallizer]-a[mk1]",
    place_result = "angels-crystallizer",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-crystallizer",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 1, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-crystallizer" },
    fast_replaceable_group = "angels-crystallizer",
    next_upgrade = "angels-crystallizer-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-crystallizing" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-crystallizer"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          -- Base
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = angels_crystallizer_fluid_boxes(),
  },
  {
    type = "item",
    name = "angels-crystallizer-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 2, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "c[crystallizer]-b[mk2]",
    place_result = "angels-crystallizer-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-crystallizer-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 2, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-crystallizer-2" },
    fast_replaceable_group = "angels-crystallizer",
    next_upgrade = "angels-crystallizer-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-crystallizing", "angels-crystallizing-2" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-crystallizer"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          -- Base
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = angels_crystallizer_fluid_boxes(),
  },
  {
    type = "item",
    name = "angels-crystallizer-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 3, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "c[crystallizer]-c[mk3]",
    place_result = "angels-crystallizer-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-crystallizer-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 3, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-crystallizer-3" },
    fast_replaceable_group = "angels-crystallizer",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-crystallizing", "angels-crystallizing-2", "angels-crystallizing-3" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-crystallizer"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          -- Base
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = angels_crystallizer_fluid_boxes(),
  },
})
