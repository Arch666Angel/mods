data:extend(
  {
    {
      type = "item",
      name = "strand-casting-machine",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      subgroup = "angels-strand-casting-machine",
      order = "a[strand-casting-machine]",
      place_result = "strand-casting-machine",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "strand-casting-machine",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "strand-casting-machine"},
      fast_replaceable_group = "strand-casting-machine",
      next_upgrade = "strand-casting-machine-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 0
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"strand-casting"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 2,
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-idle-state.png",
                priority = "high",
                width = 167,
                height = 197,
                shift = util.by_pixel(0, -16.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-idle-state.png",
                  priority = "high",
                  width = 329,
                  height = 392,
                  shift = util.by_pixel(0, -16.5),
                  scale = 0.5
                } or nil
              },
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-shadow.png",
                priority = "high",
                width = 223,
                height = 157,
                draw_as_shadow = true,
                shift = util.by_pixel(29.5, 3.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-shadow.png",
                  priority = "high",
                  width = 444,
                  height = 311,
                  draw_as_shadow = true,
                  shift = util.by_pixel(29.5, 3.5),
                  scale = 0.5
                } or nil
              }
            }
          }
        },
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-recipe-mask.png",
            priority = "high",
            width = 167,
            height = 197,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-recipe-mask.png",
              priority = "high",
              width = 329,
              height = 392,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-working-animation.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-working-animation.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-light.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-light.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/strand-casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "strand-casting-machine-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      subgroup = "angels-strand-casting-machine",
      order = "b[strand-casting-machine-2]",
      place_result = "strand-casting-machine-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "strand-casting-machine-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "strand-casting-machine-2"},
      fast_replaceable_group = "strand-casting-machine",
      next_upgrade = "strand-casting-machine-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"strand-casting", "strand-casting-2"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "200kW",
      ingredient_count = 4,
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-idle-state.png",
                priority = "high",
                width = 167,
                height = 197,
                shift = util.by_pixel(0, -16.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-idle-state.png",
                  priority = "high",
                  width = 329,
                  height = 392,
                  shift = util.by_pixel(0, -16.5),
                  scale = 0.5
                } or nil
              },
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-shadow.png",
                priority = "high",
                width = 223,
                height = 157,
                draw_as_shadow = true,
                shift = util.by_pixel(29.5, 3.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-shadow.png",
                  priority = "high",
                  width = 444,
                  height = 311,
                  draw_as_shadow = true,
                  shift = util.by_pixel(29.5, 3.5),
                  scale = 0.5
                } or nil
              }
            }
          }
        },
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-recipe-mask.png",
            priority = "high",
            width = 167,
            height = 197,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-recipe-mask.png",
              priority = "high",
              width = 329,
              height = 392,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-working-animation.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-working-animation.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-light.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-light.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/strand-casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "strand-casting-machine-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      subgroup = "angels-strand-casting-machine",
      order = "c[strand-casting-machine-3]",
      place_result = "strand-casting-machine-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "strand-casting-machine-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "strand-casting-machine-3"},
      fast_replaceable_group = "strand-casting-machine",
      next_upgrade = "strand-casting-machine-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"strand-casting", "strand-casting-2", "strand-casting-3"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 6,
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-idle-state.png",
                priority = "high",
                width = 167,
                height = 197,
                shift = util.by_pixel(0, -16.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-idle-state.png",
                  priority = "high",
                  width = 329,
                  height = 392,
                  shift = util.by_pixel(0, -16.5),
                  scale = 0.5
                } or nil
              },
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-shadow.png",
                priority = "high",
                width = 223,
                height = 157,
                draw_as_shadow = true,
                shift = util.by_pixel(29.5, 3.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-shadow.png",
                  priority = "high",
                  width = 444,
                  height = 311,
                  draw_as_shadow = true,
                  shift = util.by_pixel(29.5, 3.5),
                  scale = 0.5
                } or nil
              }
            }
          }
        },
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-recipe-mask.png",
            priority = "high",
            width = 167,
            height = 197,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-recipe-mask.png",
              priority = "high",
              width = 329,
              height = 392,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-working-animation.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-working-animation.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-light.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-light.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/strand-casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "strand-casting-machine-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      subgroup = "angels-strand-casting-machine",
      order = "d[strand-casting-machine-4]",
      place_result = "strand-casting-machine-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "strand-casting-machine-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/strand-casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "strand-casting-machine-4"},
      fast_replaceable_group = "strand-casting-machine",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"strand-casting", "strand-casting-2", "strand-casting-3", "strand-casting-4"},
      crafting_speed = 3,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 6,
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-idle-state.png",
                priority = "high",
                width = 167,
                height = 197,
                shift = util.by_pixel(0, -16.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-idle-state.png",
                  priority = "high",
                  width = 329,
                  height = 392,
                  shift = util.by_pixel(0, -16.5),
                  scale = 0.5
                } or nil
              },
              {
                filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-shadow.png",
                priority = "high",
                width = 223,
                height = 157,
                draw_as_shadow = true,
                shift = util.by_pixel(29.5, 3.5),
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-shadow.png",
                  priority = "high",
                  width = 444,
                  height = 311,
                  draw_as_shadow = true,
                  shift = util.by_pixel(29.5, 3.5),
                  scale = 0.5
                } or nil
              }
            }
          }
        },
        {
          apply_recipe_tint = "primary",
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-recipe-mask.png",
            priority = "high",
            width = 167,
            height = 197,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-recipe-mask.png",
              priority = "high",
              width = 329,
              height = 392,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-working-animation.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-working-animation.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              scale = 0.5
            } or nil
          }
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/strand-casting-machine/strand-casting-machine-light.png",
            priority = "high",
            width = 167,
            height = 197,
            line_length = 6,
            frame_count = 24,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -16.5),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/strand-casting-machine/hr-strand-casting-machine-light.png",
              priority = "high",
              width = 329,
              height = 392,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -16.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/strand-casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
