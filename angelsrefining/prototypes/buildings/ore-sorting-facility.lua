data:extend(
  {
    {
      type = "item",
      name = "ore-sorting-facility",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
            icon_size = 32, icon_mipmaps = 1
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
            icon_size = 32, icon_mipmaps = 1
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
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            shift = {0.5, 0},
            animation_speed = 0.5
          }
          -- {
          -- filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/2ore-sorting-facility-overlay.png",
          -- priority = "extra-high",
          -- width = 256,
          -- height = 256,
          -- frame_count = 40,
          -- line_length = 8,
          -- shift = {0.5, 0},
          -- animation_speed = 0.5
          -- },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "ore-sorting-facility-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-2.png",
            icon_size = 32, icon_mipmaps = 1
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
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-2.png",
            icon_size = 32, icon_mipmaps = 1
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
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            shift = {0.5, 0},
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/2ore-sorting-facility-overlay.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            tint = {r = 0.2, g = 0.3, b = 0.45},
            shift = {0.5, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "ore-sorting-facility-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-3.png",
            icon_size = 32, icon_mipmaps = 1
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
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-3.png",
            icon_size = 32, icon_mipmaps = 1
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
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            shift = {0.5, 0},
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/2ore-sorting-facility-overlay.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            tint = {r = 0.50, g = 0.1, b = 0.05},
            shift = {0.5, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "ore-sorting-facility-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-4.png",
            icon_size = 32, icon_mipmaps = 1
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
            icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-4.png",
            icon_size = 32, icon_mipmaps = 1
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
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/1ore-sorting-facility.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            shift = {0.5, 0},
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/ore-sorting-facility/2ore-sorting-facility-overlay.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 40,
            line_length = 8,
            tint = {r = 0.70, g = 0.50, b = 0},
            shift = {0.5, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/ore-sorting-facility.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      }
    }
  }
)
