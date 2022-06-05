data:extend(
  {
    {
      type = "item",
      name = "filtration-unit",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/filtration-unit.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "refining-buildings",
      order = "b[filtration-unit]-a[mk1]",
      place_result = "filtration-unit",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "filtration-unit",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/filtration-unit.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "filtration-unit"},
      fast_replaceable_group = "filtration-unit",
      next_upgrade = "filtration-unit-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"filtering"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "100kW",
      --ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/filtration-unit/filtration-unit.png",
            width = 224,
            height = 224,
            frame_count = 1,
            shift = {0, -0.2}
          }
          -- {
          -- filename = "__angelsrefining__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_level = 1,
          pipe_connections = {{position = {-1, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "filtration-unit-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/filtration-unit.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "refining-buildings",
      order = "b[filtration-unit]-b[mk2]",
      place_result = "filtration-unit-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "filtration-unit-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/filtration-unit.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "filtration-unit-2"},
      fast_replaceable_group = "filtration-unit",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"filtering", "filtering-2"},
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "150kW",
      --ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/filtration-unit/filtration-unit.png",
            width = 224,
            height = 224,
            frame_count = 1,
            shift = {0, -0.2}
          }
          -- {
          -- filename = "__angelsrefining__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_level = 1,
          pipe_connections = {{position = {1, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          pipe_picture = filtrationpipepictures(),
          base_level = 1,
          pipe_connections = {{position = {-1, -3}}}
        }
      }
    }
  }
)
