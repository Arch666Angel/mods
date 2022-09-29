data:extend(
  {
    {
      type = "item",
      name = "angels-chemical-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        1, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-chemical-plant",
      order = "a[regular]-b[angel]-a",
      place_result = "angels-chemical-plant",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        1, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-chemical-plant"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      fast_replaceable_group = "angels-chemical-plant",
      next_upgrade = "angels-chemical-plant-2",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      crafting_speed = 1.75,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "250kW",
      ingredient_count = 4,
      crafting_categories = {"chemistry", "liquifying"},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      animation = {
        filename = "__angelspetrochem__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = {0, 0}
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-1, 2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {1, 2}}}
        }
      }
    },
    {
      type = "item",
      name = "angels-chemical-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        2, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-chemical-plant",
      order = "a[regular]-b[angel]-b",
      place_result = "angels-chemical-plant-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        2, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-chemical-plant-2"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      fast_replaceable_group = "angels-chemical-plant",
      next_upgrade = "angels-chemical-plant-3",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "300kW",
      ingredient_count = 4,
      crafting_categories = {"chemistry", "liquifying"},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      animation = {
        filename = "__angelspetrochem__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = {0, 0}
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-1, 2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {1, 2}}}
        }
      }
    },
    {
      type = "item",
      name = "angels-chemical-plant-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        3, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-chemical-plant",
      order = "a[regular]-b[angel]-c",
      place_result = "angels-chemical-plant-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-plant-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        3, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = { mining_time = 0.5, result = "angels-chemical-plant-3"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      fast_replaceable_group = "angels-chemical-plant",
      next_upgrade = "angels-chemical-plant-4",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      crafting_speed = 2.75,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "350kW",
      ingredient_count = 4,
      crafting_categories = {"chemistry", "liquifying"},
      module_specification = {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      animation = {
        filename = "__angelspetrochem__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = {0, 0}
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-1, 2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {1, 2}}}
        }
      }
    },
    {
      type = "item",
      name = "angels-chemical-plant-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        4, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-chemical-plant",
      order = "a[regular]-b[angel]-d",
      place_result = "angels-chemical-plant-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-chemical-plant-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        4, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-chemical-plant-4"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      fast_replaceable_group = "angels-chemical-plant",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      crafting_speed = 3.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "400kW",
      ingredient_count = 4,
      crafting_categories = {"chemistry", "liquifying"},
      module_specification = {
        module_slots = 4
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      animation = {
        filename = "__angelspetrochem__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = {0, 0}
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        },
        {
          animation = {
            filename = "__angelspetrochem__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = {0, 0},
            animation_speed = 0.5
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, -2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-1, 2}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {1, 2}}}
        }
      }
    }
  }
)
