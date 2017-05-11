data:extend(
{
    {
    type = "item",
    name = "seafloor-pump",
    icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
	flags = {"goes-to-quickbar"},
    subgroup = "washing-building",
    order = "a",
    place_result = "seafloor-pump",
    stack_size = 10,
    },
    {
    type = "offshore-pump",
    name = "seafloor-pump",
    icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "seafloor-pump"},
    max_health = 80,
    corpse = "small-remnants",
    fluid = "water-muddy",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -0.45}, {1.4, 0.3}},
    selection_box = {{-1.6, -2.49}, {1.6, 0.49}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = 1,
    tile_width = 3,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      north =
      {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {0, -1},
        width = 160,
        height = 160
      },
      east =
      {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {1, 0},
        x = 160,
        width = 160,
        height = 160
      },
      south =
      {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {0, 1},
        x = 320,
        width = 160,
        height = 160
      },
      west =
      {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {-1, 0},
        x = 480,
        width = 160,
        height = 160,
      }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.71875, 0.375},
          green = {2.5, 0.375},
        },
        wire =
        {
          red = {0.84375, -0.09375},
          green = {0.6875, -0.09375},
        }
      },
      {
        shadow =
        {
          red = {0.765625, 0.546875},
          green = {0.765625, 0.421875},
        },
        wire =
        {
          red = {-0.28125, -0.09375},
          green = {-0.28125, -0.21875},
        }
      },
      {
        shadow =
        {
          red = {-0.09375, 0.5625},
          green = {0.0625, 0.5625},
        },
        wire =
        {
          red = {-0.90625, -0.53125},
          green = {-0.75, -0.53125},
        }
      },
      {
        shadow =
        {
          red = {1.78125, -0.46875},
          green = {1.78125, -0.3125},
        },
        wire =
        {
          red = {0.34375, -1.40625},
          green = {0.34375, -1.25},
        }
      }
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({0.90625, -0.15625}, nil, 0),
      get_circuit_connector_sprites({0, 0.03125}, nil, 6),
      get_circuit_connector_sprites({-0.9375, -0.25}, nil, 4),
      get_circuit_connector_sprites({0.125, -1.3125}, nil, 2),
    },
    circuit_wire_max_distance = 7.5

  },
}
)