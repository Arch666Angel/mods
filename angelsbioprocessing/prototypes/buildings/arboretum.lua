circuit_connector_definitions["angels-bio-arboretum-1"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  8, main_offset = util.by_pixel(-66.125, -11.5), shadow_offset = util.by_pixel(-66.125, -11.5), show_shadow = true },
  { variation =  8, main_offset = util.by_pixel(-66.125, -11.5), shadow_offset = util.by_pixel(-66.125, -11.5), show_shadow = true },
  { variation =  8, main_offset = util.by_pixel(-66.125, -11.5), shadow_offset = util.by_pixel(-66.125, -11.5), show_shadow = true },
  { variation =  8, main_offset = util.by_pixel(-66.125, -11.5), shadow_offset = util.by_pixel(-66.125, -11.5), show_shadow = true },
})

circuit_connector_definitions["angels-bio-generator"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-4.625,  24.375), shadow_offset = util.by_pixel(-4.625,  24.375), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.625,  24.375), shadow_offset = util.by_pixel(-4.625,  24.375), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.625,  24.375), shadow_offset = util.by_pixel(-4.625,  24.375), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.625,  24.375), shadow_offset = util.by_pixel(-4.625,  24.375), show_shadow = true },
})

data:extend({
  -- GENERATOR
  {
    type = "item",
    name = "angels-bio-generator-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-temperate-generator.png",
        icon_size = 32,
      },
    },
    subgroup = "angels-bio-processing-buildings-nauvis-a",
    order = "b[generator]-a",
    place_result = "angels-bio-generator-temperate-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-generator-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-temperate-generator.png",
        icon_size = 32,
      },
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-bio-generator-temperate-1" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 1,
    fast_replaceable_group = "angels-bio-generator",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-tree-temperate", "angels-tree" },
    crafting_speed = 0.5,
    circuit_connector = circuit_connector_definitions["angels-bio-generator"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -75 },
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-shadow.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-base.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-pipes.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-1.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-top.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-top-on.png",
            priority = "high",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          light = { intensity = 4, size = 4, color = { r = 0.5, g = 1.0, b = 0.5 } },
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -1 }, direction = defines.direction.north } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 1 }, direction = defines.direction.south } },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-bio-generator-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-swamp-generator.png",
        icon_size = 32,
      },
    },
    subgroup = "angels-bio-processing-buildings-nauvis-a",
    order = "b[generator]-b",
    place_result = "angels-bio-generator-swamp-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-generator-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-swamp-generator.png",
        icon_size = 32,
      },
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-bio-generator-swamp-1" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 1,
    fast_replaceable_group = "angels-bio-generator",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-tree-swamp", "angels-tree" },
    crafting_speed = 0.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -75 },
    },
    energy_usage = "100kW",
    circuit_connector = circuit_connector_definitions["angels-bio-generator"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-shadow.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-base.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-pipes.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-2.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-top.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-top-on.png",
            priority = "high",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          light = { intensity = 4, size = 4, color = { r = 0.5, g = 1.0, b = 0.5 } },
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -1 }, direction = defines.direction.north } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 1 }, direction = defines.direction.south } },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-bio-generator-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-desert-generator.png",
        icon_size = 32,
      },
    },
    subgroup = "angels-bio-processing-buildings-nauvis-a",
    order = "b[generator]-c",
    place_result = "angels-bio-generator-desert-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-generator-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-desert-generator.png",
        icon_size = 32,
      },
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-bio-generator-desert-1" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 1,
    fast_replaceable_group = "angels-bio-generator",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-tree-desert", "angels-tree" },
    crafting_speed = 0.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -75 },
    },
    energy_usage = "100kW",
    circuit_connector = circuit_connector_definitions["angels-bio-generator"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-shadow.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-base.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-pipes.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-3.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-top.png",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-generator-top-on.png",
            priority = "high",
            width = 160,
            height = 160,
            line_length = 1,
            frame_count = 1,
            shift = { 0, 0 },
          },
          light = { intensity = 4, size = 4, color = { r = 0.5, g = 1.0, b = 0.5 } },
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -1 }, direction = defines.direction.north } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 1 }, direction = defines.direction.south } },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },

  --ARBORETUM
  {
    type = "item",
    name = "angels-bio-arboretum-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-arboretum.png",
        icon_size = 32,
      },
    },
    subgroup = "angels-bio-processing-buildings-nauvis-a",
    order = "c[arboretum]-a", -- c[arboretum]-b reserved for bob greenhouse (see override)
    place_result = "angels-bio-arboretum-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-bio-arboretum-1",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-arboretum.png",
        icon_size = 32,
      },
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-bio-arboretum-1" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 1.5,
    fast_replaceable_group = "angels-bio-arboretum",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-arboretum" },
    crafting_speed = 0.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -100 },
    },
    energy_usage = "100kW",
    circuit_connector = circuit_connector_definitions["angels-bio-arboretum-1"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-arboretum-shadow.png",
            width = 224,
            height = 256,
            line_length = 1,
            frame_count = 1,
            shift = { 0, -0.50 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-arboretum-base.png",
            width = 224,
            height = 256,
            line_length = 1,
            frame_count = 1,
            shift = { 0, -0.50 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-arboretum-pipes.png",
            width = 224,
            height = 256,
            line_length = 1,
            frame_count = 1,
            shift = { 0, -0.50 },
          },
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-arboretum-off.png",
            width = 224,
            height = 256,
            line_length = 1,
            frame_count = 1,
            shift = { 0, -0.50 },
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/trees/bio-arboretum-on.png",
            blend_mode = "additive",
            width = 224,
            height = 256,
            line_length = 1,
            frame_count = 1,
            shift = { 0, -0.50 },
          },
          -- {
          -- effect = "uranium-glow", -- changes alpha based on energy source light intensity
          -- light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
          -- }
          light = { intensity = 1, size = 8, color = { r = 0.5, g = 1.0, b = 0.5 } },
        },
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -2 }, direction = defines.direction.north } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 2 }, direction = defines.direction.south } },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
})

angelsmods.functions.allow_bio_productivity("angels-bio-arboretum-1")
