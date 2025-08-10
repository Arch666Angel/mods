local function angels_induction_furnace_fluid_boxes()
  return {
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "output", position = { 2, -2 }, direction = defines.direction.north },
      },
    },
  }
end

circuit_connector_definitions["angels-induction-furnace"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  5, main_offset = util.by_pixel(-32.75, -14.5), shadow_offset = util.by_pixel(-32.75, -14.5), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel(-32.75, -14.5), shadow_offset = util.by_pixel(-32.75, -14.5), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel(-32.75, -14.5), shadow_offset = util.by_pixel(-32.75, -14.5), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel(-32.75, -14.5), shadow_offset = util.by_pixel(-32.75, -14.5), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-induction-furnace",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "a[induction-furnace]",
    place_result = "angels-induction-furnace",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-induction-furnace" },
    fast_replaceable_group = "angels-induction-furnace",
    next_upgrade = "angels-induction-furnace-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-induction-smelting" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 2,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 429,
            height = 336,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_01.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_02.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(23, 8.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 2, -2 },
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            draw_as_light = true,
            scale = 0.5,
          },
        },
      },
    },
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-induction-furnace-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "b[induction-furnace-2]",
    place_result = "angels-induction-furnace-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-induction-furnace-2" },
    fast_replaceable_group = "angels-induction-furnace",
    next_upgrade = "angels-induction-furnace-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-induction-smelting", "angels-induction-smelting-2" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 429,
            height = 336,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_01.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_02.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(23, 8.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 2, -2 },
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            draw_as_light = true,
            scale = 0.5,
          },
        },
      },
    },
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-induction-furnace-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "c[induction-furnace-3]",
    place_result = "angels-induction-furnace-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-induction-furnace-3" },
    fast_replaceable_group = "angels-induction-furnace",
    next_upgrade = "angels-induction-furnace-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-induction-smelting", "angels-induction-smelting-2", "angels-induction-smelting-3" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 6,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 429,
            height = 336,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_01.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_02.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(23, 8.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 2, -2 },
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            draw_as_light = true,
            scale = 0.5,
          },
        },
      },
    },
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-induction-furnace-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "d[induction-furnace-4]",
    place_result = "angels-induction-furnace-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-induction-furnace-4" },
    fast_replaceable_group = "angels-induction-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = {
      "angels-induction-smelting",
      "angels-induction-smelting-2",
      "angels-induction-smelting-3",
      "angels-induction-smelting-4",
    },
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    --ingredient_count = 6,
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 429,
            height = 336,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_01.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-shadow_02.png",
                width_in_frames = 3,
                height_in_frames = 6,
              },
            },
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(23, 8.5),
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 2, -2 },
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          animation = {
            priority = "high",
            width = 336,
            height = 381,
            frame_count = 36,
            stripes = {
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_01.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
              {
                filename = "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights_02.png",
                width_in_frames = 6,
                height_in_frames = 3,
              },
            },
            animation_speed = 0.5,
            shift = util.by_pixel(0, -5),
            draw_as_light = true,
            scale = 0.5,
          },
        },
      },
    },
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
})
