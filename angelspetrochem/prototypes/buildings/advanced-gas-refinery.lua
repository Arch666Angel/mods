data:extend(
{
  --ADVANCED REFINERY
  {
    type = "item",
    name = "gas-refinery",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      1, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-a",
    place_result = "gas-refinery",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      1, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery"},
    fast_replaceable_group = "gas-refinery",
    next_upgrade = "gas-refinery-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    drawing_box = {{-3.5, -6.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.06 * 60
    },
    energy_usage = "400kW",
    ingredient_count = 4,
    animation = {
      north = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      east = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 232,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 462,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      south = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 464,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 924,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 458,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 908,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      west = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 696,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 1386,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 687,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 1362,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      }
    },
    working_visualisations = {
      {
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel(-89, -136.5),
        east_position = util.by_pixel(34.5, -207.5),
        south_position = util.by_pixel(90.5, -94),
        west_position = util.by_pixel(-16, -35),
        animation = {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            scale = 0.5,
          } or nil,
        },
      },
      {
        fadeout = true,
        north_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        east_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 232,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 462,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        south_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 464,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 924,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        west_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 696,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 1386,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
      },
  
      -- Vertical Pipe Shadow Patch
      {
        always_draw = true,
        north_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, -3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {3, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {3, -3},
                scale = 0.5,
              } or nil
            },
          }
        },
        south_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-3, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-3, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {1, 3},
                scale = 0.5,
              } or nil
            },
          }
        }
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
      idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
      audible_distance_modifier = 0.5,
      apparent_volume = 2.5
    }
  },
  {
    type = "item",
    name = "gas-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      2, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-b",
    place_result = "gas-refinery-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      2, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-2"},
    fast_replaceable_group = "gas-refinery",
    next_upgrade = "gas-refinery-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    drawing_box = {{-3.5, -6.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.08 * 60
    },
    energy_usage = "450kW",
    ingredient_count = 4,
    animation = {
      north = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      east = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 232,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 462,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      south = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 464,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 924,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 458,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 908,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      west = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 696,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 1386,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 687,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 1362,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      }
    },
    working_visualisations = {
      {
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel(-89, -136.5),
        east_position = util.by_pixel(34.5, -207.5),
        south_position = util.by_pixel(90.5, -94),
        west_position = util.by_pixel(-16, -35),
        animation = {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            scale = 0.5,
          } or nil,
        },
      },
      {
        fadeout = true,
        north_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        east_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 232,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 462,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        south_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 464,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 924,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        west_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 696,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 1386,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
      },
  
      -- Vertical Pipe Shadow Patch
      {
        always_draw = true,
        north_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, -3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {3, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {3, -3},
                scale = 0.5,
              } or nil
            },
          }
        },
        south_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-3, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-3, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {1, 3},
                scale = 0.5,
              } or nil
            },
          }
        }
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
      idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
      audible_distance_modifier = 0.5,
      apparent_volume = 2.5
    }
  },
  {
    type = "item",
    name = "gas-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      3, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-c",
    place_result = "gas-refinery-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      3, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-3"},
    fast_replaceable_group = "gas-refinery",
    next_upgrade = "gas-refinery-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    drawing_box = {{-3.5, -6.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.10 * 60
    },
    energy_usage = "500kW",
    ingredient_count = 4,
    animation = {
      north = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      east = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 232,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 462,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      south = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 464,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 924,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 458,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 908,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      west = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 696,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 1386,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 687,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 1362,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      }
    },
    working_visualisations = {
      {
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel(-89, -136.5),
        east_position = util.by_pixel(34.5, -207.5),
        south_position = util.by_pixel(90.5, -94),
        west_position = util.by_pixel(-16, -35),
        animation = {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            scale = 0.5,
          } or nil,
        },
      },
      {
        fadeout = true,
        north_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        east_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 232,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 462,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        south_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 464,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 924,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        west_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 696,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 1386,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
      },
  
      -- Vertical Pipe Shadow Patch
      {
        always_draw = true,
        north_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, -3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {3, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {3, -3},
                scale = 0.5,
              } or nil
            },
          }
        },
        south_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-3, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-3, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {1, 3},
                scale = 0.5,
              } or nil
            },
          }
        }
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
      idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
      audible_distance_modifier = 0.5,
      apparent_volume = 2.5
    }
  },
  {
    type = "item",
    name = "gas-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      4, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-d",
    place_result = "gas-refinery-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 64, icon_mipmaps = 4,
        }
      },
      4, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-4"},
    fast_replaceable_group = "gas-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    drawing_box = {{-3.5, -6.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 2.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.12 * 60
    },
    energy_usage = "600kW",
    ingredient_count = 4,
    animation = {
      north = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      east = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 232,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 462,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 229,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 454,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      south = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 464,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 924,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 458,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 908,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      west = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-base.png",
            priority = "high",
            width = 232,
            height = 330,
            x = 696,
            shift = util.by_pixel(0, -41),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-base.png",
              priority = "high",
              width = 462,
              height = 657,
              x = 1386,
              shift = util.by_pixel(0, -42),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-shadow.png",
            priority = "high",
            width = 328,
            height = 229,
            y = 687,
            shift = util.by_pixel(48, 9),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-shadow.png",
              priority = "high",
              width = 655,
              height = 454,
              y = 1362,
              shift = util.by_pixel(48.5, 9.5),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      }
    },
    working_visualisations = {
      {
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel(-89, -136.5),
        east_position = util.by_pixel(34.5, -207.5),
        south_position = util.by_pixel(90.5, -94),
        west_position = util.by_pixel(-16, -35),
        animation = {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            scale = 0.5,
          } or nil,
        },
      },
      {
        fadeout = true,
        north_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        east_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 232,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 462,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        south_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 464,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 924,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        west_animation = {
          filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/advanced-gas-refinery-light.png",
          priority = "high",
          width = 232,
          height = 330,
          x = 696,
          shift = util.by_pixel(0, -41),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-advanced-gas-refinery-light.png",
            priority = "high",
            width = 462,
            height = 657,
            x = 1386,
            shift = util.by_pixel(0, -42),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
      },
  
      -- Vertical Pipe Shadow Patch
      {
        always_draw = true,
        north_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, -3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {3, -3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {3, -3},
                scale = 0.5,
              } or nil
            },
          }
        },
        south_animation = {
          layers = {
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-3, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-3, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {-1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {-1, 3},
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 64,
              height = 64,
              repeat_count = 36,
              shift = {1, 3},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/advanced-gas-refinery/hr-vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                shift = {1, 3},
                scale = 0.5,
              } or nil
            },
          }
        }
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
      idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
      audible_distance_modifier = 0.5,
      apparent_volume = 2.5
    }
  },
}
)
