data:extend(
  {
    {
      type = "item",
      name = "angels-chemical-furnace",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      subgroup = "angels-chemical-furnace",
      order = "a[angels-chemical-furnace]",
      place_result = "angels-chemical-furnace",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-furnace",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-chemical-furnace"},
      fast_replaceable_group = "angels-chemical-furnace",
      next_upgrade = "angels-chemical-furnace-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.25}, {2.5, 2.5}},
      module_specification = {
        module_slots = 0
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"chemical-smelting"},
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
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-base.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 141,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 13),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 448,
              height = 280,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_01.png",
                  width_in_frames = 4,
                  height_in_frames = 7,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_02.png",
                  width_in_frames = 4,
                  height_in_frames = 2,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(28, 12.5),
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-light.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              draw_as_light = true,
              scale = 0.5,
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-1, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "angels-chemical-furnace-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      subgroup = "angels-chemical-furnace",
      order = "b[angels-chemical-furnace-2]",
      place_result = "angels-chemical-furnace-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-furnace-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-chemical-furnace-2"},
      fast_replaceable_group = "angels-chemical-furnace",
      next_upgrade = "angels-chemical-furnace-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.25}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"chemical-smelting", "chemical-smelting-2"},
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
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-base.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 141,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 13),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 448,
              height = 280,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_01.png",
                  width_in_frames = 4,
                  height_in_frames = 7,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_02.png",
                  width_in_frames = 4,
                  height_in_frames = 2,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(28, 12.5),
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-light.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-1, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "angels-chemical-furnace-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      subgroup = "angels-chemical-furnace",
      order = "c[angels-chemical-furnace-3]",
      place_result = "angels-chemical-furnace-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-furnace-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-chemical-furnace-3"},
      fast_replaceable_group = "angels-chemical-furnace",
      next_upgrade = "angels-chemical-furnace-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.25}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"chemical-smelting", "chemical-smelting-2", "chemical-smelting-3"},
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
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-base.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 141,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 13),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 448,
              height = 280,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_01.png",
                  width_in_frames = 4,
                  height_in_frames = 7,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_02.png",
                  width_in_frames = 4,
                  height_in_frames = 2,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(28, 12.5),
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-light.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-1, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "angels-chemical-furnace-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      subgroup = "angels-chemical-furnace",
      order = "d[angels-chemical-furnace-4]",
      place_result = "angels-chemical-furnace-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-furnace-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-chemical-furnace-4"},
      fast_replaceable_group = "angels-chemical-furnace",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.25}, {2.5, 2.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"chemical-smelting", "chemical-smelting-2", "chemical-smelting-3", "chemical-smelting-4"},
      crafting_speed = 3,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "300kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-base.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-shadow.png",
            priority = "high",
            width = 224,
            height = 141,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 13),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 448,
              height = 280,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_01.png",
                  width_in_frames = 4,
                  height_in_frames = 7,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_02.png",
                  width_in_frames = 4,
                  height_in_frames = 2,
                },
              },
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(28, 12.5),
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          always_draw = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace-light.png",
            priority = "high",
            width = 168,
            height = 189,
            line_length = 6,
            frame_count = 36,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -12),
            draw_as_light = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              priority = "high",
              width = 332,
              height = 374,
              frame_count = 36,
              stripes = {
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_01.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
                {
                  filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-light_02.png",
                  width_in_frames = 6,
                  height_in_frames = 3,
                },
              },
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -11.5),
              draw_as_light = true,
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        off_when_no_fluid_recipe = true,
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-1, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        }
      }
    }
  }
)
