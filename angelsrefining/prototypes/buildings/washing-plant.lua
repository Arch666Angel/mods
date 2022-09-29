data:extend(
  {
    {
      type = "item",
      name = "washing-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/washing-plant-ico.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "washing-building",
      order = "b",
      place_result = "washing-plant",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "washing-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/washing-plant-ico.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "washing-plant"},
      fast_replaceable_group = "washing-plant",
      next_upgrade = "washing-plant-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 1
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"washing-plant"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "100kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/washing-plant/washing-plant.png",
            width = 224,
            height = 224,
            line_length = 5,
            frame_count = 25,
            shift = {0, 0}
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
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {3, 0}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        }
      }
    },
    {
      type = "item",
      name = "washing-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/washing-plant-ico.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "washing-building",
      order = "c",
      place_result = "washing-plant-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "washing-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/washing-plant-ico.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "washing-plant-2"},
      fast_replaceable_group = "washing-plant",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      crafting_categories = {"washing-plant"},
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/washing-plant/washing-plant.png",
            width = 224,
            height = 224,
            line_length = 5,
            frame_count = 25,
            shift = {0, 0}
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
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {3, 0}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        }
      }
    }
  }
)
