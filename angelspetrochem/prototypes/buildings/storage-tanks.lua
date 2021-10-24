data:extend(
  {
    ---------------------------------------------------------------------------
    -- GAS TANK ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "item",
      name = "angels-storage-tank-1",
      icon = "__angelspetrochem__/graphics/icons/petrochem-gas-tank.png",
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "angels-fluid-tanks",
      order = "b[angels-storage-tank-1]",
      place_result = "angels-storage-tank-1",
      stack_size = 10,
    },
    {
      type = "storage-tank",
      name = "angels-storage-tank-1",
      icon = "__angelspetrochem__/graphics/icons/petrochem-gas-tank.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-player", "player-creation", "not-rotatable"},
      minable = {mining_time = 3, result = "angels-storage-tank-1"},
      max_health = 500,
      corpse = "medium-remnants",
      collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -3.25}, {2.5, 2.5}},
      two_direction_only = false,
      fluid_box =
      {
        base_area = 1250,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          { position = {0, -3} },
          { position = {3, 0} },
          { position = {-3, 0} },
          { position = {0, 3} },
        },
      },
      window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
      pictures =
      {
        picture =
        {
          sheets =
          {
            {
              filename = "__angelspetrochem__/graphics/entity/petrochem-gas-tank/petrochem-gas-tank.png",
              priority = "extra-high",
              frames = 1,
              width = 167,
              height = 192,
              shift = util.by_pixel(-1, -7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/petrochem-gas-tank/hr-petrochem-gas-tank.png",
                priority = "extra-high",
                frames = 1,
                width = 334,
                height = 387,
                shift = util.by_pixel(-0.5, -6),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelspetrochem__/graphics/entity/petrochem-gas-tank/petrochem-gas-tank-shadow.png",
              priority = "extra-high",
              frames = 1,
              width = 220,
              height = 120,
              shift = util.by_pixel(26, 31),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/petrochem-gas-tank/hr-petrochem-gas-tank-shadow.png",
                priority = "extra-high",
                frames = 1,
                width = 437,
                height = 237,
                shift = util.by_pixel(26, 32),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        },
        fluid_background =
        {
          filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
          priority = "extra-high",
          width = 32,
          height = 15
        },
        window_background =
        {
          filename = "__base__/graphics/entity/storage-tank/window-background.png",
          priority = "extra-high",
          width = 17,
          height = 24,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
            priority = "extra-high",
            width = 34,
            height = 48,
            scale = 0.5
          } or nil
        },
        flow_sprite =
        {
          filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
          priority = "extra-high",
          width = 160,
          height = 20
        },
        gas_flow =
        {
          filename = "__base__/graphics/entity/pipe/steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 24,
          height = 15,
          frame_count = 60,
          axially_symmetrical = false,
          direction_count = 1,
          animation_speed = 0.25,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/pipe/hr-steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 48,
            height = 30,
            frame_count = 60,
            axially_symmetrical = false,
            animation_speed = 0.25,
            direction_count = 1,
            scale = 0.5
          } or nil
        },
      },
      flow_length_in_ticks = 360,
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound =
        {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.6
        },
        match_volume_to_activity = true,
        audible_distance_modifier = 0.5,
        max_sounds_per_type = 3
      },
      circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
      circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    ---------------------------------------------------------------------------
    -- OIL TANK ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "item",
      name = "angels-storage-tank-2",
      icon = "__angelspetrochem__/graphics/icons/petrochem-oil-tank.png",
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "angels-fluid-tanks",
      order = "c[angels-storage-tank-2]",
      place_result = "angels-storage-tank-2",
      stack_size = 10,
    },
    {
      type = "storage-tank",
      name = "angels-storage-tank-2",
      icon = "__angelspetrochem__/graphics/icons/petrochem-oil-tank.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-player", "player-creation"},
      minable = {mining_time = 3, result = "angels-storage-tank-2"},
      max_health = 500,
      corpse = "medium-remnants",
      collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
      selection_box = {{-2, -2}, {2, 2}},
      two_direction_only = true,
      fluid_box =
      {
        base_area = 800,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          { position = {-1.5, -2.5} },
          { position = {2.5, 1.5} },
          { position = {1.5, 2.5} },
          { position = {-2.5, -1.5} },
        },
      },
      window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
      pictures =
      {
        picture =
        {
          sheets =
          {
            {
              filename = "__angelspetrochem__/graphics/entity/petrochem-oil-tank/petrochem-oil-tank.png",
              priority = "extra-high",
              frames = 2,
              width = 135,
              height = 154,
              shift = util.by_pixel(-1, -1),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/petrochem-oil-tank/hr-petrochem-oil-tank.png",
                priority = "extra-high",
                frames = 2,
                width = 273,
                height = 307,
                shift = util.by_pixel(0, -2),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelspetrochem__/graphics/entity/petrochem-oil-tank/petrochem-oil-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 167,
              height = 165,
              shift = util.by_pixel(15, 8.5),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/petrochem-oil-tank/hr-petrochem-oil-tank-shadow.png",
                priority = "extra-high",
                frames = 2,
                width = 335,
                height = 328,
                shift = util.by_pixel(16.5, 9.5),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        },
        fluid_background =
        {
          filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
          priority = "extra-high",
          width = 32,
          height = 15
        },
        window_background =
        {
          filename = "__base__/graphics/entity/storage-tank/window-background.png",
          priority = "extra-high",
          width = 17,
          height = 24,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
            priority = "extra-high",
            width = 34,
            height = 48,
            scale = 0.5
          } or nil
        },
        flow_sprite =
        {
          filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
          priority = "extra-high",
          width = 160,
          height = 20
        },
        gas_flow =
        {
          filename = "__base__/graphics/entity/pipe/steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 24,
          height = 15,
          frame_count = 60,
          axially_symmetrical = false,
          direction_count = 1,
          animation_speed = 0.25,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/pipe/hr-steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 48,
            height = 30,
            frame_count = 60,
            axially_symmetrical = false,
            animation_speed = 0.25,
            direction_count = 1,
            scale = 0.5
          } or nil
        },
      },
      flow_length_in_ticks = 360,
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
        },
        apparent_volume = 1.5,
        max_sounds_per_type = 3
      },
      circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
      circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    ---------------------------------------------------------------------------
    -- SMALL INLINE TANK ------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "item",
      name = "angels-storage-tank-3",
      icon = "__angelspetrochem__/graphics/icons/petrochem-inline-tank.png",
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "angels-fluid-tanks",
      order = "d",
      place_result = "angels-storage-tank-3",
      stack_size = 10,
    },  
    {
      type = "storage-tank",
      name = "angels-storage-tank-3",
      icon = "__angelspetrochem__/graphics/icons/petrochem-inline-tank.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-player", "player-creation"},
      minable = {mining_time = 3, result = "angels-storage-tank-3"},
      max_health = 500,
      corpse = "medium-remnants",
      collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -1.9}, {1, 1}},
      two_direction_only = false,
      fluid_box =
      {
        base_area = 200,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          { position = {0.5, -1.5} },
          { position = {0.5, 1.5} },
        },
      },
      window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
      pictures =
      {
        picture =
        {
          sheets = {
            {
              filename = "__angelspetrochem__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              frames = 4,
              width = 71,
              height = 102,
              shift = util.by_pixel(-0.5, -8),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/petrochem-inline-tank/hr-petrochem-inline-tank.png",
                priority = "extra-high",
                frames = 4,
                width = 142,
                height = 199,
                shift = util.by_pixel(0, -7.5),
                scale = 0.5
              } or nil
            },
            {
              filename = "__angelspetrochem__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank-shadow.png",
              priority = "extra-high",
              frames = 4,
              width = 106,
              height = 101,
              shift = util.by_pixel(17, 8),
              draw_as_shadow = true,
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/petrochem-inline-tank/hr-petrochem-inline-tank-shadow.png",
                priority = "extra-high",
                frames = 4,
                width = 207,
                height = 199,
                shift = util.by_pixel(16.5, 9),
                draw_as_shadow = true,
                scale = 0.5
              } or nil
            }
          }
        },
        fluid_background =
        {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1
        },
        window_background =
        {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1
        },
        flow_sprite =
        {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1
        },
        gas_flow =
        {
          filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          animation_speed = 0.25,
          hr_version =
          {
            filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
            priority = "extra-high",
            width = 1,
            height = 1,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            animation_speed = 0.25,
          }
        }
      },
      flow_length_in_ticks = 360,
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
        },
        apparent_volume = 1.5,
        max_sounds_per_type = 3
      },
      circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
      circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
  }
)
