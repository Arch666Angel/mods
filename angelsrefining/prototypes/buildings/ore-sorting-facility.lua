data:extend(
  {
    {
      type = "item",
      name = "ore-sorting-facility",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "ore-sorter",
      order = "a[ore-sorting-facility]",
      place_result = "ore-sorting-facility",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-sorting-facility",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-sorting-facility"},
      fast_replaceable_group = "ore-sorting-facility",
      next_upgrade = "ore-sorting-facility-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting"},
      crafting_speed = 0.75,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "150kW",
      --ingredient_count = 2,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-base.png",
            priority = "extra-high",
            width = 224,
            height = 230,
            frame_count = 40,
            line_length = 10,
            shift = util.by_pixel(0, -2),
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-base.png",
              priority = "extra-high",
              width = 449,
              height = 458,
              frame_count = 40,
              line_length = 10,
              shift = util.by_pixel(0, -2.5),
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-shadow.png",
            priority = "extra-high",
            width = 265,
            height = 179,
            repeat_count = 40,
            shift = util.by_pixel(21, 25),
            animation_speed = 0.5,
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-shadow.png",
              priority = "extra-high",
              width = 528,
              height = 356,
              repeat_count = 40,
              shift = util.by_pixel(21.5, 24.5),
              animation_speed = 0.5,
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "ore-sorting-facility-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "ore-sorter",
      order = "b[ore-sorting-facility-2]",
      place_result = "ore-sorting-facility-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-sorting-facility-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-sorting-facility-2"},
      fast_replaceable_group = "ore-sorting-facility",
      next_upgrade = "ore-sorting-facility-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting", "ore-sorting-2"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "200kW",
      --ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-base.png",
            priority = "extra-high",
            width = 224,
            height = 230,
            frame_count = 40,
            line_length = 10,
            shift = util.by_pixel(0, -2),
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-base.png",
              priority = "extra-high",
              width = 449,
              height = 458,
              frame_count = 40,
              line_length = 10,
              shift = util.by_pixel(0, -2.5),
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-shadow.png",
            priority = "extra-high",
            width = 265,
            height = 179,
            repeat_count = 40,
            shift = util.by_pixel(21, 25),
            animation_speed = 0.5,
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-shadow.png",
              priority = "extra-high",
              width = 528,
              height = 356,
              repeat_count = 40,
              shift = util.by_pixel(21.5, 24.5),
              animation_speed = 0.5,
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "ore-sorting-facility-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        3, angelsmods.refining.number_tint),
      subgroup = "ore-sorter",
      order = "c[ore-sorting-facility-3]",
      place_result = "ore-sorting-facility-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-sorting-facility-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        3, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-sorting-facility-3"},
      fast_replaceable_group = "ore-sorting-facility",
      next_upgrade = "ore-sorting-facility-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting", "ore-sorting-2", "ore-sorting-3"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "250kW",
      --ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-base.png",
            priority = "extra-high",
            width = 224,
            height = 230,
            frame_count = 40,
            line_length = 10,
            shift = util.by_pixel(0, -2),
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-base.png",
              priority = "extra-high",
              width = 449,
              height = 458,
              frame_count = 40,
              line_length = 10,
              shift = util.by_pixel(0, -2.5),
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-shadow.png",
            priority = "extra-high",
            width = 265,
            height = 179,
            repeat_count = 40,
            shift = util.by_pixel(21, 25),
            animation_speed = 0.5,
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-shadow.png",
              priority = "extra-high",
              width = 528,
              height = 356,
              repeat_count = 40,
              shift = util.by_pixel(21.5, 24.5),
              animation_speed = 0.5,
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "ore-sorting-facility-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        4, angelsmods.refining.number_tint),
      subgroup = "ore-sorter",
      order = "d[ore-sorting-facility-4]",
      place_result = "ore-sorting-facility-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "ore-sorting-facility-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 64, icon_mipmaps = 4
          }
        },
        4, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "ore-sorting-facility-4"},
      fast_replaceable_group = "ore-sorting-facility",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"ore-sorting", "ore-sorting-2", "ore-sorting-3", "ore-sorting-4"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "300kW",
      --ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-base.png",
            priority = "extra-high",
            width = 224,
            height = 230,
            frame_count = 40,
            line_length = 10,
            shift = util.by_pixel(0, -2),
            animation_speed = 0.5,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-base.png",
              priority = "extra-high",
              width = 449,
              height = 458,
              frame_count = 40,
              line_length = 10,
              shift = util.by_pixel(0, -2.5),
              animation_speed = 0.5,
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/ore-sorting-facility-shadow.png",
            priority = "extra-high",
            width = 265,
            height = 179,
            repeat_count = 40,
            shift = util.by_pixel(21, 25),
            animation_speed = 0.5,
            draw_as_shadow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/hr-ore-sorting-facility-shadow.png",
              priority = "extra-high",
              width = 528,
              height = 356,
              repeat_count = 40,
              shift = util.by_pixel(21.5, 24.5),
              animation_speed = 0.5,
              draw_as_shadow = true,
              scale = 0.5,
            } or nil
          },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
