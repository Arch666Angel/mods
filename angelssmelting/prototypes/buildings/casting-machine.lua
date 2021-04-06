data:extend(
  {
    {
      type = "item",
      name = "casting-machine",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      subgroup = "angels-casting-machine",
      order = "a[casting-machine]",
      place_result = "casting-machine",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "casting-machine",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "casting-machine"},
      fast_replaceable_group = "casting-machine",
      next_upgrade = "casting-machine-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -1.8}, {1.5, 1.5}},
      module_specification = {
        module_slots = 0
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"casting"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 2,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-base.png",
            priority = "high",
            width = 104,
            height = 123,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            shift = util.by_pixel(1, -2),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
              priority = "high",
              width = 205,
              height = 244,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-shadow.png",
            priority = "high",
            width = 125,
            height = 104,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
              priority = "high",
              width = 248,
              height = 206,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(11.5, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, 1}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{position = {2, -1}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-light.png",
            priority = "high",
            width = 111,
            height = 104,
            shift = util.by_pixel(1, -2),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-light.png",
              priority = "high",
              width = 205,
              height = 244,
              shift = util.by_pixel(0, -2),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "casting-machine-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      subgroup = "angels-casting-machine",
      order = "b[casting-machine-2]",
      place_result = "casting-machine-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "casting-machine-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "casting-machine-2"},
      fast_replaceable_group = "casting-machine",
      next_upgrade = "casting-machine-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -1.8}, {1.5, 1.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"casting", "casting-2"},
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
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-base.png",
            priority = "high",
            width = 104,
            height = 123,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            shift = util.by_pixel(1, -2),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
              priority = "high",
              width = 205,
              height = 244,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-shadow.png",
            priority = "high",
            width = 125,
            height = 104,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
              priority = "high",
              width = 248,
              height = 206,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(11.5, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, 1}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{position = {2, -1}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-light.png",
            priority = "high",
            width = 111,
            height = 104,
            shift = util.by_pixel(1, -2),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-light.png",
              priority = "high",
              width = 205,
              height = 244,
              shift = util.by_pixel(0, -2),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "casting-machine-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      subgroup = "angels-casting-machine",
      order = "c[casting-machine-3]",
      place_result = "casting-machine-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "casting-machine-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "casting-machine-3"},
      fast_replaceable_group = "casting-machine",
      next_upgrade = "casting-machine-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -1.8}, {1.5, 1.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"casting", "casting-2", "casting-3"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-base.png",
            priority = "high",
            width = 104,
            height = 123,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            shift = util.by_pixel(1, -2),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
              priority = "high",
              width = 205,
              height = 244,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-shadow.png",
            priority = "high",
            width = 125,
            height = 104,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
              priority = "high",
              width = 248,
              height = 206,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(11.5, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, 1}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{position = {2, -1}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-light.png",
            priority = "high",
            width = 111,
            height = 104,
            shift = util.by_pixel(1, -2),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-light.png",
              priority = "high",
              width = 205,
              height = 244,
              shift = util.by_pixel(0, -2),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "casting-machine-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      subgroup = "angels-casting-machine",
      order = "d[casting-machine-4]",
      place_result = "casting-machine-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "casting-machine-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/casting-machine.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "casting-machine-4"},
      fast_replaceable_group = "casting-machine",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -1.8}, {1.5, 1.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"casting", "casting-2", "casting-3", "casting-4"},
      crafting_speed = 3,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-base.png",
            priority = "high",
            width = 104,
            height = 123,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            shift = util.by_pixel(1, -2),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
              priority = "high",
              width = 205,
              height = 244,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-shadow.png",
            priority = "high",
            width = 125,
            height = 104,
            line_length = 7,
            frame_count = 49,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 9),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
              priority = "high",
              width = 248,
              height = 206,
              line_length = 7,
              frame_count = 49,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(11.5, 8.5),
              scale = 0.5
            } or nil
          }
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, 1}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{position = {2, -1}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine-light.png",
            priority = "high",
            width = 111,
            height = 104,
            shift = util.by_pixel(1, -2),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-light.png",
              priority = "high",
              width = 205,
              height = 244,
              shift = util.by_pixel(0, -2),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/casting-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
