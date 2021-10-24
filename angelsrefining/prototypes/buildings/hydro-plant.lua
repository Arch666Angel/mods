local function hydropipepictures()
  return {
    north = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/pipe-north1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {-0.08, 0.45}
    },
    east = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/blank.png",
      priority = "extra-high",
      width = 1,
      height = 1,
      shift = {0, 0}
    },
    south = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/pipe-south1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {0.06, -0.6}
    },
    west = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/pipe-east1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {0.62, 0.05}
    }
  }
end

local function hydropipepictures2()
  return {
    north = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/pipe-north2.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {-0.08, 0.45}
    },
    east = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/blank.png",
      priority = "extra-high",
      width = 1,
      height = 1,
      shift = {0, 0}
    },
    south = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/pipe-south1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {0.06, -0.6}
    },
    west = {
      filename = "__angelsrefining__/graphics/entity/hydro-plant/pipe-east2.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {0.62, 0.05}
    }
  }
end

data:extend(
  {
    {
      type = "item",
      name = "hydro-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "water-treatment-building",
      order = "a[hydro-plant]",
      place_result = "hydro-plant",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "hydro-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "hydro-plant"},
      fast_replaceable_group = "hydro-plant",
      next_upgrade = "hydro-plant-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"water-treatment"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-base.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-base.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-leaching-plant.ogg", volume = 0.65},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 3
      },
      working_visualisations = {
        {
          always_draw = true,
          north_position = util.by_pixel(-52.5, -43),
          east_position = util.by_pixel(-52.5, -43),
          south_position = util.by_pixel(-52.5, -43),
          west_position = util.by_pixel(-52.5, -43),
          animation = {
            layers = {
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.25),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, -47.75),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.875),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 0.125),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 49),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 48),
                  scale = 0.5,
                } or nil
              }
            }
          }
        },
        {
          always_draw = true,
          north_position = util.by_pixel(14.5, -21.5),
          east_position = util.by_pixel(14.5, -21.5),
          south_position = util.by_pixel(14.5, -21.5),
          west_position = util.by_pixel(14.5, -21.5),
          animation = {
            layers = {
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, -47.75),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 0.125),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 48),
                  scale = 0.5,
                } or nil
              }
            }
          }
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 0,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              shift = util.by_pixel(20, 10.5),
              x = 0,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 270,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              x = 538,
              y = 0,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          },
          south_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            height = 229,
            width = 270,
            x = 540,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              x = 1076,
              y = 0,
              height = 454,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          },
          west_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 810,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              x = 1614,
              y = 0,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 0,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 0,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 231,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              frame_count = 1,
              width = 459,
              height = 491,
              x = 459,
              y = 0,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 462,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 918,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 693,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 1377,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              scale = 0.5,
              shift = {-2, -3},
            } or nil
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  scale = 0.5,
                  shift = {-2, -3},
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  scale = 0.5,
                  shift = {2, -3},
                } or nil
              }
            }
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = hydropipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -4}}}
        },
        {
          production_type = "output",
          pipe_picture = hydropipepictures2(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 4}}}
        },
        {
          production_type = "output",
          pipe_picture = hydropipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 4}}}
        }
      },
    },
    {
      type = "item",
      name = "hydro-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "water-treatment-building",
      order = "b[hydro-plant2-]",
      place_result = "hydro-plant-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "hydro-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "hydro-plant-2"},
      fast_replaceable_group = "hydro-plant",
      next_upgrade = "hydro-plant-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"water-treatment"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "200kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-base.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-base.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-leaching-plant.ogg", volume = 0.65},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 3
      },
      working_visualisations = {
        {
          always_draw = true,
          north_position = util.by_pixel(-52.5, -43),
          east_position = util.by_pixel(-52.5, -43),
          south_position = util.by_pixel(-52.5, -43),
          west_position = util.by_pixel(-52.5, -43),
          animation = {
            layers = {
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.25),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, -47.75),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.875),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 0.125),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 49),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 48),
                  scale = 0.5,
                } or nil
              }
            }
          }
        },
        {
          always_draw = true,
          north_position = util.by_pixel(14.5, -21.5),
          east_position = util.by_pixel(14.5, -21.5),
          south_position = util.by_pixel(14.5, -21.5),
          west_position = util.by_pixel(14.5, -21.5),
          animation = {
            layers = {
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, -47.75),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 0.125),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 48),
                  scale = 0.5,
                } or nil
              }
            }
          }
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 0,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              shift = util.by_pixel(20, 10.5),
              x = 0,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 270,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              x = 538,
              y = 0,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          },
          south_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            height = 229,
            width = 270,
            x = 540,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              x = 1076,
              y = 0,
              height = 454,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          },
          west_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 810,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              x = 1614,
              y = 0,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 0,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 0,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 231,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              frame_count = 1,
              width = 459,
              height = 491,
              x = 459,
              y = 0,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 462,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 918,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 693,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 1377,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              scale = 0.5,
              shift = {-2, -3},
            } or nil
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  scale = 0.5,
                  shift = {-2, -3},
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  scale = 0.5,
                  shift = {2, -3},
                } or nil
              }
            }
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = hydropipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -4}}}
        },
        {
          production_type = "output",
          pipe_picture = hydropipepictures2(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 4}}}
        },
        {
          production_type = "output",
          pipe_picture = hydropipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 4}}}
        }
      },
    },
    {
      type = "item",
      name = "hydro-plant-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        3, angelsmods.refining.number_tint),
      subgroup = "water-treatment-building",
      order = "b[hydro-plant2-]",
      place_result = "hydro-plant-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "hydro-plant-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        3, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "hydro-plant-3"},
      fast_replaceable_group = "hydro-plant",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"water-treatment"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-base.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            shift = util.by_pixel(0, 0),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-base.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-leaching-plant.ogg", volume = 0.65},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 3
      },
      working_visualisations = {
        {
          always_draw = true,
          north_position = util.by_pixel(-52.5, -43),
          east_position = util.by_pixel(-52.5, -43),
          south_position = util.by_pixel(-52.5, -43),
          west_position = util.by_pixel(-52.5, -43),
          animation = {
            layers = {
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.25),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, -47.75),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.875),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 0.125),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 55,
                height = 38,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 49),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-fan.png",
                  priority = "extra-high",
                  width = 107,
                  height = 77,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 48),
                  scale = 0.5,
                } or nil
              }
            }
          }
        },
        {
          always_draw = true,
          north_position = util.by_pixel(14.5, -21.5),
          east_position = util.by_pixel(14.5, -21.5),
          south_position = util.by_pixel(14.5, -21.5),
          west_position = util.by_pixel(14.5, -21.5),
          animation = {
            layers = {
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, -47.75),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 0.125),
                  scale = 0.5,
                } or nil
              },
              {
                filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 21,
                height = 18,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-dynamo.png",
                  priority = "extra-high",
                  width = 40,
                  height = 36,
                  frame_count = 24,
                  line_length = 6,
                  animation_speed = 0.5,
                  shift = util.by_pixel(0, 48),
                  scale = 0.5,
                } or nil
              }
            }
          }
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 0,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              shift = util.by_pixel(20, 10.5),
              x = 0,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 270,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              x = 538,
              y = 0,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          },
          south_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            height = 229,
            width = 270,
            x = 540,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              x = 1076,
              y = 0,
              height = 454,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          },
          west_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 270,
            height = 229,
            x = 810,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(21, 11.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-shadow.png",
              priority = "extra-high",
              width = 538,
              height = 454,
              x = 1614,
              y = 0,
              frame_count = 1,
              shift = util.by_pixel(20, 10.5),
              scale = 0.5,
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 0,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 0,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 231,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              frame_count = 1,
              width = 459,
              height = 491,
              x = 459,
              y = 0,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 462,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 918,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelsrefining__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 231,
            height = 247,
            x = 693,
            y = 0,
            frame_count = 1,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
              priority = "extra-high",
              width = 459,
              height = 491,
              x = 1377,
              y = 0,
              frame_count = 1,
              scale = 0.5,
            } or nil
          }
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 64,
            height = 64,
            repeat_count = 36,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
              priority = "high",
              width = 128,
              height = 128,
              repeat_count = 36,
              scale = 0.5,
              shift = {-2, -3},
            } or nil
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  scale = 0.5,
                  shift = {-2, -3},
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelsrefining__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  scale = 0.5,
                  shift = {2, -3},
                } or nil
              }
            }
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = hydropipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -4}}}
        },
        {
          production_type = "output",
          pipe_picture = hydropipepictures2(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 4}}}
        },
        {
          production_type = "output",
          pipe_picture = hydropipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 4}}}
        }
      },
    }
  }
)
