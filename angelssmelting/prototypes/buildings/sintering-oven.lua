data:extend(
  {
    {
      type = "item",
      name = "sintering-oven",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-sintering-oven",
      order = "a[sintering-oven]",
      place_result = "sintering-oven",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "sintering-oven",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "sintering-oven"},
      fast_replaceable_group = "sintering-oven",
      next_upgrade = "sintering-oven-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"sintering"},
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
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-base.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-base.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-shadow.png",
            priority = "high",
            width = 213,
            height = 115,
            shift = util.by_pixel(24, 29),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-shadow.png",
              priority = "high",
              width = 424,
              height = 227,
              shift = util.by_pixel(23, 28),
              draw_as_shadow = true,
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          effect = "uranium-glow",
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-glow.png",
            priority = "high",
            width = 165,
            height = 177,
            blend_mode = "additive",
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-glow.png",
              priority = "high",
              width = 326,
              height = 350,
              blend_mode = "additive",
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        },
        {
          effect = "uranium-glow",
          draw_as_sprite = false,
          draw_as_light = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-light.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-light.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/sintering-oven.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "sintering-oven-2",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-sintering-oven",
      order = "b[sintering-oven-2]",
      place_result = "sintering-oven-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "sintering-oven-2",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "sintering-oven-2"},
      fast_replaceable_group = "sintering-oven",
      next_upgrade = "sintering-oven-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"sintering"},
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
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-base.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-base.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-shadow.png",
            priority = "high",
            width = 213,
            height = 115,
            shift = util.by_pixel(24, 29),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-shadow.png",
              priority = "high",
              width = 424,
              height = 227,
              shift = util.by_pixel(23, 28),
              draw_as_shadow = true,
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          effect = "uranium-glow",
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-glow.png",
            priority = "high",
            width = 165,
            height = 177,
            blend_mode = "additive",
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-glow.png",
              priority = "high",
              width = 326,
              height = 350,
              blend_mode = "additive",
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        },
        {
          effect = "uranium-glow",
          draw_as_sprite = false,
          draw_as_light = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-light.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-light.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/sintering-oven.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "sintering-oven-3",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-sintering-oven",
      order = "c[sintering-oven-3]",
      place_result = "sintering-oven-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "sintering-oven-3",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "sintering-oven-3"},
      fast_replaceable_group = "sintering-oven",
      next_upgrade = "sintering-oven-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"sintering"},
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
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-base.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-base.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-shadow.png",
            priority = "high",
            width = 213,
            height = 115,
            shift = util.by_pixel(24, 29),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-shadow.png",
              priority = "high",
              width = 424,
              height = 227,
              shift = util.by_pixel(23, 28),
              draw_as_shadow = true,
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          effect = "uranium-glow",
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-glow.png",
            priority = "high",
            width = 165,
            height = 177,
            blend_mode = "additive",
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-glow.png",
              priority = "high",
              width = 326,
              height = 350,
              blend_mode = "additive",
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        },
        {
          effect = "uranium-glow",
          draw_as_sprite = false,
          draw_as_light = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-light.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-light.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/sintering-oven.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "sintering-oven-4",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-sintering-oven",
      order = "d[sintering-oven-4]",
      place_result = "sintering-oven-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "sintering-oven-4",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "sintering-oven-4"},
      fast_replaceable_group = "sintering-oven",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"sintering"},
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
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-base.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-base.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-shadow.png",
            priority = "high",
            width = 213,
            height = 115,
            shift = util.by_pixel(24, 29),
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-shadow.png",
              priority = "high",
              width = 424,
              height = 227,
              shift = util.by_pixel(23, 28),
              draw_as_shadow = true,
              scale = 0.5
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_visualisations = {
        {
          effect = "uranium-glow",
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-glow.png",
            priority = "high",
            width = 165,
            height = 177,
            blend_mode = "additive",
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-glow.png",
              priority = "high",
              width = 326,
              height = 350,
              blend_mode = "additive",
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        },
        {
          effect = "uranium-glow",
          draw_as_sprite = false,
          draw_as_light = true,
          animation = {
            filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven-light.png",
            priority = "high",
            width = 165,
            height = 177,
            shift = util.by_pixel(-1, -7),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/sintering-oven/hr-sintering-oven-light.png",
              priority = "high",
              width = 326,
              height = 350,
              shift = util.by_pixel(-1, -6.5),
              scale = 0.5
            } or nil
          }
        }
      },
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/sintering-oven.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
