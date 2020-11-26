data:extend(
  {
    {
      type = "item",
      name = "cooling-tower",
      icon = "__angelssmelting__/graphics/icons/cooling-tower.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "boiler-building",
      order = "f[cooling-tower]",
      place_result = "cooling-tower",
      stack_size = 10,
    },
    {
      type = "assembling-machine",
      name = "cooling-tower",
      icon = "__angelssmelting__/graphics/icons/cooling-tower.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 1, result = "cooling-tower"},
      max_health = 100,
      fast_replaceable_group = "cooling-tower",
      corpse = "small-remnants",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -3.0}, {1.5, 1.5}},
      crafting_categories = {"cooling"},
      module_specification =
      {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution"},
      crafting_speed = 2,
      ingredient_count = 4,
      resistances =
      {
        {
          type = "fire",
          percent = 80
        },
        {
          type = "explosion",
          percent = 30
        }
      },
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {-1, -2} }}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {1, -2} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {-1, 2} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {1, 2} }}
        }
      },
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.01 * 60
      },
      energy_usage = "30kW",
      animation = {
        north = {
          layers = {
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower.png",
              priority = "high",
              x = 0,
              y = 0,
              width = 108,
              height = 157,
              frame_count = 1,
              shift = util.by_pixel(0, -19),
              scale = 1,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower.png",
                priority = "high",
                x = 0,
                y = 0,
                width = 213,
                height = 309,
                frame_count = 1,
                shift = util.by_pixel(0, -18.5),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower-shadow.png",
              priority = "high",
              x = 0,
              y = 0,
              width = 160,
              height = 100,
              frame_count = 1,
              shift = util.by_pixel(28, 10),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower-shadow.png",
                priority = "high",
                x = 0,
                y = 0,
                width = 320,
                height = 197,
                frame_count = 1,
                shift = util.by_pixel(28, 9),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower.png",
              priority = "high",
              x = 108,
              y = 0,
              width = 108,
              height = 157,
              frame_count = 1,
              shift = util.by_pixel(0, -19),
              scale = 1,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower.png",
                priority = "high",
                x = 213,
                y = 0,
                width = 213,
                height = 309,
                frame_count = 1,
                shift = util.by_pixel(0, -18.5),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower-shadow.png",
              priority = "high",
              x = 160,
              y = 0,
              width = 160,
              height = 100,
              frame_count = 1,
              shift = util.by_pixel(28, 10),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower-shadow.png",
                priority = "high",
                x = 320,
                y = 0,
                width = 320,
                height = 197,
                frame_count = 1,
                shift = util.by_pixel(28, 9),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower.png",
              priority = "high",
              x = 216,
              y = 0,
              width = 108,
              height = 157,
              frame_count = 1,
              shift = util.by_pixel(0, -19),
              scale = 1,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower.png",
                priority = "high",
                x = 426,
                y = 0,
                width = 213,
                height = 309,
                frame_count = 1,
                shift = util.by_pixel(0, -18.5),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower-shadow.png",
              priority = "high",
              x = 320,
              y = 0,
              width = 160,
              height = 100,
              frame_count = 1,
              shift = util.by_pixel(28, 10),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower-shadow.png",
                priority = "high",
                x = 640,
                y = 0,
                width = 320,
                height = 197,
                frame_count = 1,
                shift = util.by_pixel(28, 9),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower.png",
              priority = "high",
              x = 324,
              y = 0,
              width = 108,
              height = 157,
              frame_count = 1,
              shift = util.by_pixel(0, -19),
              scale = 1,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower.png",
                priority = "high",
                x = 639,
                y = 0,
                width = 213,
                height = 309,
                frame_count = 1,
                shift = util.by_pixel(0, -18.5),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower-shadow.png",
              priority = "high",
              x = 480,
              y = 0,
              width = 160,
              height = 100,
              frame_count = 1,
              shift = util.by_pixel(28, 10),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-cooling-tower-shadow.png",
                priority = "high",
                x = 960,
                y = 0,
                width = 320,
                height = 197,
                frame_count = 1,
                shift = util.by_pixel(28, 9),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        }
      },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/cooling-tower/fan-animation.png",
            priority = "high",
            width = 36,
            height = 32,
            shift = util.by_pixel(0, -74),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-fan-animation.png",
              priority = "high",
              width = 69,
              height = 60,
              shift = util.by_pixel(0, -74.5),
              scale = 0.5
            } or nil
          }
        },
        {
          animation = {
            filename = "__angelssmelting__/graphics/entity/cooling-tower/fan-animation.png",
            priority = "high",
            width = 36,
            height = 32,
            line_length = 5,
            frame_count = 25,
            animation_speed = 2.4, -- 60 fps
            shift = util.by_pixel(0, -74),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-fan-animation.png",
              priority = "high",
              width = 69,
              height = 60,
              line_length = 5,
              frame_count = 25,
              animation_speed = 2.4, -- 60 fps
              shift = util.by_pixel(0, -74.5),
              scale = 0.5
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelssmelting__/graphics/entity/cooling-tower/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {1, -1},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {1, -1},
              scale = 0.5
            } or nil
          },
          south_animation = {
            filename = "__angelssmelting__/graphics/entity/cooling-tower/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {1, -1},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/cooling-tower/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {1, -1},
              scale = 0.5
            } or nil
          }
        }
      },
      repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    }
  }
)
