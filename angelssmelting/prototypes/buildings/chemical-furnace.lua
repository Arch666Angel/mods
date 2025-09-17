local function angels_chemical_furnace_fluid_boxes()
  return {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { -1, 2 }, direction = defines.direction.south } },
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { 1, 2 }, direction = defines.direction.south } },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "output", position = { -1, -2 }, direction = defines.direction.north },
      },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "output", position = { 1, -2 }, direction = defines.direction.north },
      },
    },
  }
end

circuit_connector_definitions["angels-chemical-furnace"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-4.75,  33), shadow_offset = util.by_pixel(-4.75,  33), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.75,  33), shadow_offset = util.by_pixel(-4.75,  33), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.75,  33), shadow_offset = util.by_pixel(-4.75,  33), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.75,  33), shadow_offset = util.by_pixel(-4.75,  33), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-chemical-furnace",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    subgroup = "angels-chemical-furnace",
    order = "a[angels-chemical-furnace]",
    place_result = "angels-chemical-furnace",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-furnace",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-chemical-furnace" },
    fast_replaceable_group = "angels-chemical-furnace",
    next_upgrade = "angels-chemical-furnace-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.75,
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-chemical-smelting" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-chemical-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 448,
            height = 280,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_01.png",
                width_in_frames = 4,
                height_in_frames = 7,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_02.png",
                width_in_frames = 4,
                height_in_frames = 2,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 12.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            draw_as_light = true,
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
    fluid_boxes = angels_chemical_furnace_fluid_boxes(),
  },
  {
    type = "item",
    name = "angels-chemical-furnace-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    subgroup = "angels-chemical-furnace",
    order = "b[angels-chemical-furnace-2]",
    place_result = "angels-chemical-furnace-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-furnace-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-chemical-furnace-2" },
    fast_replaceable_group = "angels-chemical-furnace",
    next_upgrade = "angels-chemical-furnace-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.75,
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-chemical-smelting", "angels-chemical-smelting-2" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-chemical-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 448,
            height = 280,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_01.png",
                width_in_frames = 4,
                height_in_frames = 7,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_02.png",
                width_in_frames = 4,
                height_in_frames = 2,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 12.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            draw_as_light = true,
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
    fluid_boxes = angels_chemical_furnace_fluid_boxes(),
  },
  {
    type = "item",
    name = "angels-chemical-furnace-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    subgroup = "angels-chemical-furnace",
    order = "c[angels-chemical-furnace-3]",
    place_result = "angels-chemical-furnace-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-furnace-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-chemical-furnace-3" },
    fast_replaceable_group = "angels-chemical-furnace",
    next_upgrade = "angels-chemical-furnace-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.75,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-chemical-smelting", "angels-chemical-smelting-2", "angels-chemical-smelting-3" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-chemical-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 448,
            height = 280,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_01.png",
                width_in_frames = 4,
                height_in_frames = 7,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_02.png",
                width_in_frames = 4,
                height_in_frames = 2,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 12.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            draw_as_light = true,
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
    fluid_boxes = angels_chemical_furnace_fluid_boxes(),
  },
  {
    type = "item",
    name = "angels-chemical-furnace-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    subgroup = "angels-chemical-furnace",
    order = "d[angels-chemical-furnace-4]",
    place_result = "angels-chemical-furnace-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-furnace-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/chemical-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-chemical-furnace-4" },
    fast_replaceable_group = "angels-chemical-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.75,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-chemical-smelting", "angels-chemical-smelting-2", "angels-chemical-smelting-3", "angels-chemical-smelting-4" },
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "300kW",
    circuit_connector = circuit_connector_definitions["angels-chemical-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 448,
            height = 280,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_01.png",
                width_in_frames = 4,
                height_in_frames = 7,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-shadow_02.png",
                width_in_frames = 4,
                height_in_frames = 2,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 12.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 332,
            height = 374,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/chemical-furnace/chemical-furnace-light_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -11.5),
            draw_as_light = true,
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
    fluid_boxes = angels_chemical_furnace_fluid_boxes(),
  },
})
