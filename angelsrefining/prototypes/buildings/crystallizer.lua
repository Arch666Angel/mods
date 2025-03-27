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
    -- {
    -- production_type = "output",
    -- pipe_covers = pipecoverspictures(),
    -- volume = 100,
    -- pipe_connections = {{ position = {0, -3} }}
    -- },
  }
end

data:extend({
  {
    type = "item",
    name = "crystallizer",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 1, angelsmods.refining.number_tint),
    subgroup = "refining-buildings",
    order = "c[crystallizer]-a[mk1]",
    place_result = "crystallizer",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "crystallizer",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 1, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "crystallizer" },
    fast_replaceable_group = "crystallizer",
    next_upgrade = "crystallizer-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "crystallizing" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "150kW",
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
    name = "crystallizer-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 2, angelsmods.refining.number_tint),
    subgroup = "refining-buildings",
    order = "c[crystallizer]-b[mk2]",
    place_result = "crystallizer-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "crystallizer-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 2, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "crystallizer-2" },
    fast_replaceable_group = "crystallizer",
    next_upgrade = "crystallizer-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "crystallizing", "crystallizing-2" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "200kW",
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
    name = "crystallizer-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 3, angelsmods.refining.number_tint),
    subgroup = "refining-buildings",
    order = "c[crystallizer]-c[mk3]",
    place_result = "crystallizer-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "crystallizer-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png",
        icon_size = 64,
      },
    }, 3, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "crystallizer-3" },
    fast_replaceable_group = "crystallizer",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "crystallizing", "crystallizing-2", "crystallizing-3" },
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "250kW",
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
