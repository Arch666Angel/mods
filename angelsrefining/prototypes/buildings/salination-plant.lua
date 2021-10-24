data:extend(
  {
    {
      type = "item",
      name = "salination-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/salination-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "water-treatment-building",
      order = "d[salination-plant]",
      place_result = "salination-plant",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "salination-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/salination-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "salination-plant"},
      fast_replaceable_group = "salination-plant",
      next_upgrade = "salination-plant-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"salination-plant"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "200kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/salination-plant/salination-plant-base.png",
            priority = "extra-high",
            width = 244,
            height = 270,
            frame_count = 36,
            line_length = 6,
            shift = util.by_pixel(-2, -12),
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/salination-plant/hr-salination-plant-base.png",
              priority = "extra-high",
              width = 484,
              height = 540,
              frame_count = 36,
              line_length = 6,
              shift = util.by_pixel(-2.5, -12),
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelsrefining__/graphics/entity/salination-plant/salination-plant-shadow.png",
            priority = "extra-high",
            width = 255,
            height = 235,
            repeat_count = 36,
            shift = util.by_pixel(11, 6),
            draw_as_shadow = true,
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/salination-plant/hr-salination-plant-shadow.png",
              priority = "extra-high",
              width = 509,
              height = 467,
              repeat_count = 36,
              shift = util.by_pixel(10, 6.5),
              draw_as_shadow = true,
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-leaching-plant.ogg", volume = 0.8},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = salinationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -4}}}
        },
        {
          production_type = "output",
          --pipe_picture = salinationpipepictures2(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, 4}}}
        }
      },
    },
    {
      type = "item",
      name = "salination-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/salination-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "water-treatment-building",
      order = "e[salination-plant2-]",
      place_result = "salination-plant-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "salination-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/salination-plant.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "salination-plant-2"},
      fast_replaceable_group = "salination-plant",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"salination-plant"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/salination-plant/salination-plant-base.png",
            priority = "extra-high",
            width = 244,
            height = 270,
            frame_count = 36,
            line_length = 6,
            shift = util.by_pixel(-2, -12),
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/salination-plant/hr-salination-plant-base.png",
              priority = "extra-high",
              width = 484,
              height = 540,
              frame_count = 36,
              line_length = 6,
              shift = util.by_pixel(-2.5, -12),
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelsrefining__/graphics/entity/salination-plant/salination-plant-shadow.png",
            priority = "extra-high",
            width = 255,
            height = 235,
            repeat_count = 36,
            shift = util.by_pixel(11, 6),
            draw_as_shadow = true,
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/salination-plant/hr-salination-plant-shadow.png",
              priority = "extra-high",
              width = 509,
              height = 467,
              repeat_count = 36,
              shift = util.by_pixel(10, 6.5),
              draw_as_shadow = true,
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-leaching-plant.ogg", volume = 0.8},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = salinationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -4}}}
        },
        {
          production_type = "output",
          --pipe_picture = salinationpipepictures2(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {1, 4}}}
        }
      },
    }
  }
)
