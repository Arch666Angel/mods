  data:extend(
  {
    {
    type = "item",
    name = "angels-big-chest",
    icon = "__angelslogistics__/graphics/icons/chest-big-ico.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "a",
    place_result = "angels-big-chest",
    stack_size = 50
    },
    {
    type = "container",
    name = "angels-big-chest",
    icon = "__angelslogistics__/graphics/icons/chest-big-ico.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "angels-big-chest"},
    max_health = 100,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    inventory_size = 60,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelslogistics__/graphics/entity/chests/chest-big.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
    },
    {
    type = "item",
    name = "angels-logistic-chest-requester",
    icon = "__angelslogistics__/graphics/icons/chest-big-requester-ico.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "a[angels-logistic-chest-requester]",
    place_result = "angels-logistic-chest-requester",
    stack_size = 50
    },
    {
    type = "logistic-container",
    name = "angels-logistic-chest-requester",
    icon = "__angelslogistics__/graphics/icons/chest-big-requester-ico.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-logistic-chest-requester"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    inventory_size = 60,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelslogistics__/graphics/entity/chests/chest-big-requester.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },
    {
    type = "item",
    name = "angels-logistic-chest-passive-provider",
    icon = "__angelslogistics__/graphics/icons/chest-big-passive-provider-ico.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "b[angels-logistic-chest-passive-provider]",
    place_result = "angels-logistic-chest-passive-provider",
    stack_size = 50
    },
    {
    type = "logistic-container",
    name = "angels-logistic-chest-passive-provider",
    icon = "__angelslogistics__/graphics/icons/chest-big-passive-provider-ico.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-logistic-chest-passive-provider"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    inventory_size = 60,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelslogistics__/graphics/entity/chests/chest-big-passive-provider.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    },
    {
    type = "item",
    name = "angels-logistic-chest-active-provider",
    icon = "__angelslogistics__/graphics/icons/chest-big-active-provider-ico.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "b",
    place_result = "angels-logistic-chest-active-provider",
    stack_size = 50
    },
    {
    type = "logistic-container",
    name = "angels-logistic-chest-active-provider",
    icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-logistic-chest-active-provider"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    inventory_size = 60,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelslogistics__/graphics/entity/chests/chest-big-active-provider.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
	},
    {
    type = "item",
    name = "angels-logistic-chest-storage",
    icon = "__angelslogistics__/graphics/icons/chest-big-storage-ico.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "b",
    place_result = "angels-logistic-chest-storage",
    stack_size = 50
    },
    {
    type = "logistic-container",
    name = "angels-logistic-chest-storage",
    icon = "__base__/graphics/icons/logistic-chest-storage.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-logistic-chest-storage"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    inventory_size = 60,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelslogistics__/graphics/entity/chests/chest-big-storage.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },
  }
  )