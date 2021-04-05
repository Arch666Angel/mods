data:extend(
  {
    {
      type = "item",
      name = "induction-furnace",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      subgroup = "angels-induction-furnace",
      order = "a[induction-furnace]",
      place_result = "induction-furnace",
      stack_size = 10,
    },
    {
      type = "assembling-machine",
      name = "induction-furnace",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "induction-furnace"},
      fast_replaceable_group = "induction-furnace",
      next_upgrade = "induction-furnace-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.0}, {2.5, 2.5}},
      module_specification =
      {
        module_slots = 0
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"induction-smelting"},
      crafting_speed = 1,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 2,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-base.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-shadow.png",
            priority = "high",
            width = 216,
            height = 170,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(24, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 429,
              height = 336,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_01.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_02.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(23, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {2, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {2, -2},
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-lights.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes =
      {
        -- {
          -- production_type = "input",
          -- pipe_picture = assembler3pipepictures(),
          -- pipe_covers = pipecoverspictures(),
          -- base_area = 10,
          -- base_level = -1,
          -- pipe_connections = {{ type="input", position = {0, 2} }}
        -- },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {2, -3} }}
        },
        --off_when_no_fluid_recipe = true,
      },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {filename = "__angelssmelting__/sound/induction-furnace.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "induction-furnace-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      subgroup = "angels-induction-furnace",
      order = "b[induction-furnace-2]",
      place_result = "induction-furnace-2",
      stack_size = 10,
    },
    {
      type = "assembling-machine",
      name = "induction-furnace-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "induction-furnace-2"},
      fast_replaceable_group = "induction-furnace",
      next_upgrade = "induction-furnace-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.0}, {2.5, 2.5}},
      module_specification =
      {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"induction-smelting", "induction-smelting-2"},
      crafting_speed = 1.5,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "200kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-base.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-shadow.png",
            priority = "high",
            width = 216,
            height = 170,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(24, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 429,
              height = 336,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_01.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_02.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(23, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {2, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {2, -2},
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-lights.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {2, -3} }}
        },
        --off_when_no_fluid_recipe = true,
      },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {filename = "__angelssmelting__/sound/induction-furnace.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "induction-furnace-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      subgroup = "angels-induction-furnace",
      order = "c[induction-furnace-3]",
      place_result = "induction-furnace-3",
      stack_size = 10,
    },
    {
      type = "assembling-machine",
      name = "induction-furnace-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "induction-furnace-3"},
      fast_replaceable_group = "induction-furnace",
      next_upgrade = "induction-furnace-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.0}, {2.5, 2.5}},
      module_specification =
      {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"induction-smelting", "induction-smelting-2", "induction-smelting-3"},
      crafting_speed = 2,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-base.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-shadow.png",
            priority = "high",
            width = 216,
            height = 170,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(24, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 429,
              height = 336,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_01.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_02.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(23, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {2, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {2, -2},
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-lights.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {2, -3} }}
        },
        --off_when_no_fluid_recipe = true,
      },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {filename = "__angelssmelting__/sound/induction-furnace.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "induction-furnace-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      subgroup = "angels-induction-furnace",
      order = "d[induction-furnace-4]",
      place_result = "induction-furnace-4",
      stack_size = 10,
    },
    {
      type = "assembling-machine",
      name = "induction-furnace-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "induction-furnace-4"},
      fast_replaceable_group = "induction-furnace",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.0}, {2.5, 2.5}},
      module_specification =
      {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"induction-smelting", "induction-smelting-2", "induction-smelting-3", "induction-smelting-4"},
      crafting_speed = 3,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-base.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-shadow.png",
            priority = "high",
            width = 216,
            height = 170,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(24, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 429,
              height = 336,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_01.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-shadow_02.png",
                  width_in_frames = 3,
                  height_in_frames = 6,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(23, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-recipe-tint-mask.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-recipe-tint-mask_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {2, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {2, -2},
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace-working-lights.png",
            priority = "high",
            width = 170,
            height = 192,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -5.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 336,
              height = 381,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/induction-furnace/hr-induction-furnace-working-lights_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(0, -5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {2, -3} }}
        },
        --off_when_no_fluid_recipe = true,
      },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {filename = "__angelssmelting__/sound/induction-furnace.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
