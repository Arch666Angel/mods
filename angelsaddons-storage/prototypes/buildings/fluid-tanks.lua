if angelsmods.addons.storage.pressuretank then

  circuit_connector_definitions["angels-pressure-tank-1"] = circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation =  4, main_offset = util.by_pixel(-4.25,  50.625), shadow_offset = util.by_pixel(-4.25,  50.625), show_shadow = true },
    { variation =  4, main_offset = util.by_pixel(-4.25,  50.625), shadow_offset = util.by_pixel(-4.25,  50.625), show_shadow = true },
    { variation =  4, main_offset = util.by_pixel(-4.25,  50.625), shadow_offset = util.by_pixel(-4.25,  50.625), show_shadow = true },
    { variation =  4, main_offset = util.by_pixel(-4.25,  50.625), shadow_offset = util.by_pixel(-4.25,  50.625), show_shadow = true },
  })

  --PRESSURE TANKS
  data:extend({
    {
      type = "item",
      name = "angels-pressure-tank-1",
      icon = "__angelsaddons-storage__/graphics/icons/pressure-tank-1.png",
      icon_size = 32,
      subgroup = "angels-fluid-tanks",
      order = "e",
      place_result = "angels-pressure-tank-1",
      stack_size = 10,
    },
    {
      type = "storage-tank",
      name = "angels-pressure-tank-1",
      icon = "__angelsaddons-storage__/graphics/icons/pressure-tank-1.png",
      icon_size = 32,
      flags = { "placeable-player", "player-creation", "not-rotatable" },
      minable = { mining_time = 3, result = "angels-pressure-tank-1" },
      max_health = 500,
      corpse = "medium-remnants",
      collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
      selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
      fluid_box = {
        volume = 350000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { position = { 0, -2 }, direction = defines.direction.north },
          { position = { 2, 0 }, direction = defines.direction.east },
          { position = { -2, 0 }, direction = defines.direction.west },
          { position = { 0, 2 }, direction = defines.direction.south },
        },
      },
      window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
      pictures = {
        picture = {
          filename = "__angelsaddons-storage__/graphics/entity/pressure-tank-1.png",
          priority = "extra-high",
          size = { 448, 448 },
          scale = 0.5,
          shift = { 0, 0 },
        },
        fluid_background = {
          filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
          priority = "extra-high",
          width = 32,
          height = 15,
        },
        window_background = {
          filename = "__base__/graphics/entity/storage-tank/window-background.png",
          priority = "extra-high",
          width = 17,
          height = 24,
        },
        flow_sprite = {
          filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
          priority = "extra-high",
          width = 160,
          height = 20,
        },
        gas_flow = {
          filename = "__base__/graphics/entity/pipe/steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          animation_speed = 0.25,
        },
      },
      flow_length_in_ticks = 360,
      impact_category = "metal",
      working_sound = {
        sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8,
        },
        max_sounds_per_prototype = 3,
      },
      circuit_connector = circuit_connector_definitions["angels-pressure-tank-1"],
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })
end

if angelsmods.addons.storage.inlinetank and not mods["angelspetrochem"] then

  circuit_connector_definitions["angels-storage-tank-3"] = circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  })

  --INLINE TANKS
  data:extend({
    {
      type = "item",
      name = "angels-storage-tank-3",
      icon = "__angelsaddons-storage__/graphics/icons/storage-tank-3.png",
      icon_size = 32,
      subgroup = "storage",
      order = "b[fluid]-b[inline-storage-tank]",
      place_result = "angels-storage-tank-3",
      stack_size = 10,
    },
    {
      type = "storage-tank",
      name = "angels-storage-tank-3",
      icon = "__angelsaddons-storage__/graphics/icons/storage-tank-3.png",
      icon_size = 32,
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 3, result = "angels-storage-tank-3" },
      max_health = 500,
      corpse = "medium-remnants",
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      two_direction_only = false,
      fluid_box = {
        volume = 20000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { position = { 0.5, -0.5 }, direction = defines.direction.north },
          { position = { 0.5, 0.5 }, direction = defines.direction.south },
        },
      },
      window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
      pictures = {
        picture = {
          sheet = {
            filename = "__angelsaddons-storage__/graphics/entity/storage-tank-3.png",
            priority = "extra-high",
            frames = 4,
            width = 256,
            height = 320,
            scale = 0.495,
            shift = { 0, -0.5 },
          },
        },
        fluid_background = {
          filename = "__angelsaddons-storage__/graphics/entity/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1,
        },
        window_background = {
          filename = "__angelsaddons-storage__/graphics/entity/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1,
        },
        flow_sprite = {
          filename = "__angelsaddons-storage__/graphics/entity/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1,
        },
        gas_flow = {
          filename = "__angelsaddons-storage__/graphics/entity/blank.png",
          priority = "extra-high",
          width = 1,
          height = 1,
          frame_count = 1,
          animation_speed = 0.25,
        },
      },
      flow_length_in_ticks = 360,
      impact_category = "metal",
      working_sound = {
        sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8,
        },
        max_sounds_per_prototype = 3,
      },
      circuit_connector = circuit_connector_definitions["angels-storage-tank-3"],
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })
end
