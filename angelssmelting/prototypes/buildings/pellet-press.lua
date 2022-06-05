data:extend(
  {
    {
      type = "item",
      name = "pellet-press",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      subgroup = "angels-pellet-press",
      order = "a[pellet-press]",
      place_result = "pellet-press",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "pellet-press",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        1, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "pellet-press"},
      fast_replaceable_group = "pellet-press",
      next_upgrade = "pellet-press-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 0
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"pellet-pressing"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "200kW",
      --ingredient_count = 2,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-base.png",
            priority = "high",
            width = 102,
            height = 101,
            line_length = 10,
            frame_count = 60,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, 0.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-base.png",
              priority = "high",
              width = 200,
              height = 199,
              line_length = 10,
              frame_count = 60,
              animation_speed = 0.5,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-shadow.png",
            priority = "high",
            width = 125,
            height = 68,
            line_length = 6,
            frame_count = 60,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 17),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-shadow.png",
              priority = "high",
              width = 246,
              height = 132,
              line_length = 6,
              frame_count = 60,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 17),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/idle1.ogg", volume = 0.9},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "pellet-press-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      subgroup = "angels-pellet-press",
      order = "b[pellet-press-2]",
      place_result = "pellet-press-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "pellet-press-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "pellet-press-2"},
      fast_replaceable_group = "pellet-press",
      next_upgrade = "pellet-press-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"pellet-pressing", "pellet-pressing-2"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "250kW",
      --ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-base.png",
            priority = "high",
            width = 102,
            height = 101,
            line_length = 10,
            frame_count = 60,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, 0.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-base.png",
              priority = "high",
              width = 200,
              height = 199,
              line_length = 10,
              frame_count = 60,
              animation_speed = 0.5,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-shadow.png",
            priority = "high",
            width = 125,
            height = 68,
            line_length = 6,
            frame_count = 60,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 17),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-shadow.png",
              priority = "high",
              width = 246,
              height = 132,
              line_length = 6,
              frame_count = 60,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 17),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/idle1.ogg", volume = 0.9},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "pellet-press-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      subgroup = "angels-pellet-press",
      order = "c[pellet-press-3]",
      place_result = "pellet-press-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "pellet-press-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "pellet-press-3"},
      fast_replaceable_group = "pellet-press",
      next_upgrade = "pellet-press-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"pellet-pressing", "pellet-pressing-2", "pellet-pressing-3"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "300kW",
      --ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-base.png",
            priority = "high",
            width = 102,
            height = 101,
            line_length = 10,
            frame_count = 60,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, 0.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-base.png",
              priority = "high",
              width = 200,
              height = 199,
              line_length = 10,
              frame_count = 60,
              animation_speed = 0.5,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-shadow.png",
            priority = "high",
            width = 125,
            height = 68,
            line_length = 6,
            frame_count = 60,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 17),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-shadow.png",
              priority = "high",
              width = 246,
              height = 132,
              line_length = 6,
              frame_count = 60,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 17),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/idle1.ogg", volume = 0.9},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "pellet-press-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      subgroup = "angels-pellet-press",
      order = "d[pellet-press-4]",
      place_result = "pellet-press-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "pellet-press-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelssmelting__/graphics/icons/pellet-press.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.smelting.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "pellet-press-4"},
      fast_replaceable_group = "pellet-press",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"pellet-pressing", "pellet-pressing-2", "pellet-pressing-3", "pellet-pressing-4"},
      crafting_speed = 3,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "350kW",
      --ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-base.png",
            priority = "high",
            width = 102,
            height = 101,
            line_length = 10,
            frame_count = 60,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, 0.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-base.png",
              priority = "high",
              width = 200,
              height = 199,
              line_length = 10,
              frame_count = 60,
              animation_speed = 0.5,
              shift = util.by_pixel(0, 0),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/pellet-press/pellet-press-shadow.png",
            priority = "high",
            width = 125,
            height = 68,
            line_length = 6,
            frame_count = 60,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 17),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/pellet-press/hr-pellet-press-shadow.png",
              priority = "high",
              width = 246,
              height = 132,
              line_length = 6,
              frame_count = 60,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 17),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/idle1.ogg", volume = 0.9},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
