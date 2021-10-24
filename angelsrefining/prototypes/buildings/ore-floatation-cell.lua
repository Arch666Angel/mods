local function floatationpipepictures()
  return {
    north = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-north.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {0.01, 0.95}
    },
    east = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-east.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = {-0.71875, 0.1}
    },
    south = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-south.png",
      priority = "extra-high",
      width = 34,
      height = 39,
      shift = {0, -0.75}
    },
    west = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-west.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = {0.78125, 0.01}
    }
  }
end

data:extend(
  {
    {
      type = "item",
      name = "ore-floatation-cell",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "ore-floatation",
      order = "a[ore-floatation-cell]",
      place_result = "ore-floatation-cell",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-floatation-cell",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-floatation-cell"},
      fast_replaceable_group = "ore-floatation-cell",
      next_upgrade = "ore-floatation-cell-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-refining-t2"},
      crafting_speed = 0.75,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.02 * 60
      },
      energy_usage = "200kW",
      ingredient_count = 3,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        east = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              x = 168,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                x = 333,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              x = 196,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                x = 390,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        south = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        west = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              x = 168,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                x = 333,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              x = 196,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                x = 390,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-floatation-cell.ogg", volume = 1},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 3
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-idle.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-base.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-water-tintable.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-froth-tintable.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          render_layer = "higher-object-under",
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            x = 168,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            x = 168,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {0, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {0, -2},
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {0, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {0, -2},
              scale = 0.5,
            } or nil
          },
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      },
    },
    {
      type = "item",
      name = "ore-floatation-cell-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "ore-floatation",
      order = "b[ore-floatation-cell-2]",
      place_result = "ore-floatation-cell-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-floatation-cell-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-floatation-cell-2"},
      fast_replaceable_group = "ore-floatation-cell",
      next_upgrade = "ore-floatation-cell-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-refining-t2"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 3,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        east = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              x = 168,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                x = 333,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              x = 196,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                x = 390,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        south = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        west = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              x = 168,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                x = 333,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              x = 196,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                x = 390,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-floatation-cell.ogg", volume = 1},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 3
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-idle.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-base.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-water-tintable.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-froth-tintable.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          render_layer = "higher-object-under",
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            x = 168,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            x = 168,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {0, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {0, -2},
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {0, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {0, -2},
              scale = 0.5,
            } or nil
          },
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      },
    },
    {
      type = "item",
      name = "ore-floatation-cell-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        3, angelsmods.refining.number_tint),
      subgroup = "ore-floatation",
      order = "c[ore-floatation-cell-3]",
      place_result = "ore-floatation-cell-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-floatation-cell-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        3, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-floatation-cell-3"},
      fast_replaceable_group = "ore-floatation-cell",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-refining-t2"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "300kW",
      ingredient_count = 3,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        east = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              x = 168,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                x = 333,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              x = 196,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                x = 390,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        south = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
        west = {
          layers = {
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 168,
              height = 182,
              x = 168,
              shift = util.by_pixel(0, 0),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-base.png",
                priority = "extra-high",
                width = 333,
                height = 363,
                x = 333,
                shift = util.by_pixel_hr(-1, -1),
                scale = 0.5,
              } or nil
            },
            {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 196,
              height = 164,
              x = 196,
              shift = util.by_pixel(15, 9),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-shadow.png",
                priority = "extra-high",
                width = 390,
                height = 326,
                x = 390,
                shift = util.by_pixel_hr(29, 18),
                draw_as_shadow = true,
                scale = 0.5,
              } or nil
            },
          }
        },
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-floatation-cell.ogg", volume = 1},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 3
      },
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-idle.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-base.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-water-tintable.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
            priority = "extra-high",
            width = 82,
            height = 58,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(31, 3),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-animation-froth-tintable.png",
              priority = "extra-high",
              width = 166,
              height = 117,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel_hr(62, 5),
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          render_layer = "higher-object-under",
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            x = 168,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 168,
            height = 182,
            x = 168,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-ore-flotation-cell-pipe-cover-overlays.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {0, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {0, -2},
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = {0, -2},
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              draw_as_shadow = true,
              shift = {0, -2},
              scale = 0.5,
            } or nil
          },
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        }
      },
    }
  }
)
