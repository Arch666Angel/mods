local function angles_liquifier_fluid_boxes()
  return {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      --pipe_picture = liquifierpipepictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { 0, 1 }, direction = defines.direction.south } },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 100,
      pipe_connections = {
        { flow_direction = "output", position = { 0, -1 }, direction = defines.direction.north },
      },
    },
  }
end

circuit_connector_definitions["angels-liquifier"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel( 16.5,  12), shadow_offset = util.by_pixel( 16.5,  12), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 16.5,  12), shadow_offset = util.by_pixel( 16.5,  12), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 16.5,  12), shadow_offset = util.by_pixel( 16.5,  12), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 16.5,  12), shadow_offset = util.by_pixel( 16.5,  12), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-liquifier",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "f[liquifier]",
    place_result = "angels-liquifier",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-liquifier",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-liquifier" },
    fast_replaceable_group = "angels-liquifier",
    next_upgrade = "angels-liquifier-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-liquifying" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "125kW",
    circuit_connector = circuit_connector_definitions["angels-liquifier"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/liquifier/liquifier.png",
            width = 160,
            height = 160,
            line_length = 10,
            frame_count = 30,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
          -- {
          -- filename = "__angelsrefininggraphics__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = angles_liquifier_fluid_boxes(),
    --off_when_no_fluid_recipe = true
  },
  {
    type = "item",
    name = "angels-liquifier-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "g[liquifier-2]",
    place_result = "angels-liquifier-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-liquifier-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-liquifier-2" },
    fast_replaceable_group = "angels-liquifier",
    next_upgrade = "angels-liquifier-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-liquifying" },
    crafting_speed = 2.25,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-liquifier"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/liquifier/liquifier.png",
            width = 160,
            height = 160,
            line_length = 10,
            frame_count = 30,
            shift = { 0, 0 },
            animation_speed = 0.75,
          },
          -- {
          -- filename = "__angelsrefininggraphics__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = angles_liquifier_fluid_boxes(),
    --off_when_no_fluid_recipe = true
  },
  {
    type = "item",
    name = "angels-liquifier-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 3, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "h[liquifier-3]",
    place_result = "angels-liquifier-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-liquifier-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 3, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-liquifier-3" },
    fast_replaceable_group = "angels-liquifier",
    next_upgrade = "angels-liquifier-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-liquifying" },
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-liquifier"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/liquifier/liquifier.png",
            width = 160,
            height = 160,
            line_length = 10,
            frame_count = 30,
            shift = { 0, 0 },
            animation_speed = 0.75,
          },
          -- {
          -- filename = "__angelsrefininggraphics__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = angles_liquifier_fluid_boxes(),
    --off_when_no_fluid_recipe = true
  },
  {
    type = "item",
    name = "angels-liquifier-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 4, angelsmods.refining.number_tint),
    subgroup = "angels-refining-buildings",
    order = "i[liquifier-4]",
    place_result = "angels-liquifier-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-liquifier-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/liquifier.png",
        icon_size = 32,
      },
    }, 4, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-liquifier-4" },
    fast_replaceable_group = "angels-liquifier",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_slots = 4,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "angels-liquifying" },
    crafting_speed = 3.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "300kW",
    circuit_connector = circuit_connector_definitions["angels-liquifier"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/liquifier/liquifier.png",
            width = 160,
            height = 160,
            line_length = 10,
            frame_count = 30,
            shift = { 0, 0 },
            animation_speed = 0.75,
          },
          -- {
          -- filename = "__angelsrefininggraphics__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = angles_liquifier_fluid_boxes(),
    --off_when_no_fluid_recipe = true
  },
})
