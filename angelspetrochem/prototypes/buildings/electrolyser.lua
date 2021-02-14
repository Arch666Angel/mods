data:extend(
  {
    {
      type = "item",
      name = "angels-electrolyser",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        1, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-electrolyser",
      order = "ab[angels-electrolyser]-a",
      place_result = "angels-electrolyser",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-electrolyser",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        1, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-electrolyser"},
      fast_replaceable_group = "angels-electrolyser",
      next_upgrade = "angels-electrolyser-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"petrochem-electrolyser"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.02 * 60
      },
      energy_usage = "300kW",
      ingredient_count = 3,
      animation = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/electrolyser.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -3}}}
        },
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {2, -3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    },
    {
      type = "item",
      name = "angels-electrolyser-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        2, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-electrolyser",
      order = "ab[angels-electrolyser]-b",
      place_result = "angels-electrolyser-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-electrolyser-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        2, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-electrolyser-2"},
      fast_replaceable_group = "angels-electrolyser",
      next_upgrade = "angels-electrolyser-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"petrochem-electrolyser"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "350kW",
      ingredient_count = 3,
      animation = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/electrolyser.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -3}}}
        },
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {2, -3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    },
    {
      type = "item",
      name = "angels-electrolyser-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        3, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-electrolyser",
      order = "ab[angels-electrolyser]-c",
      place_result = "angels-electrolyser-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-electrolyser-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        3, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-electrolyser-3"},
      fast_replaceable_group = "angels-electrolyser",
      next_upgrade = "angels-electrolyser-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"petrochem-electrolyser"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "400kW",
      ingredient_count = 3,
      animation = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/electrolyser.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -3}}}
        },
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {2, -3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    },
    {
      type = "item",
      name = "angels-electrolyser-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        4, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-electrolyser",
      order = "ab[angels-electrolyser]-d",
      place_result = "angels-electrolyser-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-electrolyser-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        4, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "angels-electrolyser-4"},
      fast_replaceable_group = "angels-electrolyser",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"petrochem-electrolyser"},
      crafting_speed = 2.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "450kW",
      ingredient_count = 3,
      animation = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/electrolyser.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, -3}}}
        },
        {
          production_type = "input",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {2, -3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, 3}}}
        },
        {
          production_type = "output",
          pipe_picture = electrolyserpictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, 3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    }
  }
)
