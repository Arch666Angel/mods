data:extend(
  {
    {
      type = "item",
      name = "crystallizer",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/crystallizer.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "refining-buildings",
      order = "c[crystallizer]-a[mk1]",
      place_result = "crystallizer",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "crystallizer",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/crystallizer.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "crystallizer"},
      fast_replaceable_group = "crystallizer",
      next_upgrade = "crystallizer-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"crystallizing"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 4,
      animation = {
        layers = {
          -- Base
          {
            filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 195,
            height = 163,
            shift = util.by_pixel(15.5, -0.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              shift = util.by_pixel(16, 0),
              scale = 0.5,
            } or nil
          },
          -- Shadow
          {
            filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 195,
            height = 163,
            shift = util.by_pixel(15.5, -0.5),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-shadow.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              shift = util.by_pixel(16, 0),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_picture = {
            north = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 0,
              shift = {0, 1},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 0,
                shift = {0, 1},
                scale = 0.5,
              } or nil
            },
            east = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 64,
              shift = {-1, 0},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 128,
                shift = {-1, 0},
                scale = 0.5,
              } or nil
            },
            south = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 128,
              shift = {0, -1},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 256,
                shift = {0, -1},
                scale = 0.5,
              } or nil
            },
            west = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 192,
              shift = {1, 0},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 384,
                shift = {1, 0},
                scale = 0.5,
              } or nil
            },
          },
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        -- {
        -- production_type = "output",
        -- pipe_covers = pipecoverspictures(),
        -- base_level = 1,
        -- pipe_connections = {{ position = {0, -3} }}
        -- },
        off_when_no_fluid_recipe = true
      },
    },
    {
      type = "item",
      name = "crystallizer-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/crystallizer.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "refining-buildings",
      order = "c[crystallizer]-b[mk2]",
      place_result = "crystallizer-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "crystallizer-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/crystallizer.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "crystallizer-2"},
      fast_replaceable_group = "crystallizer",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"crystallizing", "crystallizing-2"},
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 4,
      animation = {
        layers = {
          -- Base
          {
            filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 195,
            height = 163,
            shift = util.by_pixel(15.5, -0.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              shift = util.by_pixel(16, 0),
              scale = 0.5,
            } or nil
          },
          -- Shadow
          {
            filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 195,
            height = 163,
            shift = util.by_pixel(15.5, -0.5),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-shadow.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              shift = util.by_pixel(16, 0),
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_picture = {
            north = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 0,
              shift = {0, 1},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 0,
                shift = {0, 1},
                scale = 0.5,
              } or nil
            },
            east = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 64,
              shift = {-1, 0},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 128,
                shift = {-1, 0},
                scale = 0.5,
              } or nil
            },
            south = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 128,
              shift = {0, -1},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 256,
                shift = {0, -1},
                scale = 0.5,
              } or nil
            },
            west = {
              filename = "__angelsrefining__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
              priority = "extra-high",
              size = 64,
              x = 192,
              shift = {1, 0},
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelsrefining__/graphics/entity/crystallizer/hr-crystallizer-pipe-connection.png",
                priority = "extra-high",
                size = 128,
                x = 384,
                shift = {1, 0},
                scale = 0.5,
              } or nil
            },
          },
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        -- {
        -- production_type = "output",
        -- pipe_covers = pipecoverspictures(),
        -- base_level = 1,
        -- pipe_connections = {{ position = {0, -3} }}
        -- },
        off_when_no_fluid_recipe = true
      },
    }
  }
)
