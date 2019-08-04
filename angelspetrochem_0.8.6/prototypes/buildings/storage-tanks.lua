data:extend(
{
  {
    type = "item",
    name = "angels-storage-tank-1",
    icon = "__angelspetrochem__/graphics/icons/storage-tank-1.png",
	icon_size = 32,
	subgroup = "angels-fluid-tanks",
    order = "b[angels-storage-tank-1]",
    place_result = "angels-storage-tank-1",
    stack_size = 10,
  },
   {
    type = "storage-tank",
    name = "angels-storage-tank-1",
    icon = "__angelspetrochem__/graphics/icons/storage-tank-1.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "angels-storage-tank-1"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
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
		sheet =
		{
		filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-1.png",
		priority = "extra-high",
		frames = 1,
		width = 224,
		height = 224,
		shift = {0, 0}
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
		height = 24
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
		hr_version =
		{
		  filename = "__base__/graphics/entity/pipe/hr-steam.png",
		  priority = "extra-high",
		  line_length = 10,
		  width = 48,
		  height = 30,
		  frame_count = 60,
		  axially_symmetrical = false,
		  animation_speed = 0.25,
		  direction_count = 1
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
  {
    type = "item",
    name = "angels-storage-tank-2",
    icon = "__angelspetrochem__/graphics/icons/storage-tank-2.png",
	icon_size = 32,
	subgroup = "angels-fluid-tanks",
    order = "c[angels-storage-tank-2]",
    place_result = "angels-storage-tank-2",
    stack_size = 10,
  },  
  {
    type = "storage-tank",
    name = "angels-storage-tank-2",
    icon = "__angelspetrochem__/graphics/icons/storage-tank-2.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "angels-storage-tank-2"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
	two_direction_only = false,
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
		sheet =
		{
			filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-2.png",
			priority = "extra-high",
			frames = 2,
			width = 192,
			height = 192,
			shift = {0, 0}
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
		height = 24
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
		hr_version =
		{
		  filename = "__base__/graphics/entity/pipe/hr-steam.png",
		  priority = "extra-high",
		  line_length = 10,
		  width = 48,
		  height = 30,
		  frame_count = 60,
		  axially_symmetrical = false,
		  animation_speed = 0.25,
		  direction_count = 1
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
  {
    type = "item",
    name = "angels-storage-tank-3",
    icon = "__angelspetrochem__/graphics/icons/storage-tank-3.png",
	icon_size = 32,
	subgroup = "angels-fluid-tanks",
    order = "d",
    place_result = "angels-storage-tank-3",
    stack_size = 10,
  },  
  {
    type = "storage-tank",
    name = "angels-storage-tank-3",
    icon = "__angelspetrochem__/graphics/icons/storage-tank-3.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "angels-storage-tank-3"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
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
		sheet =
		{
			filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
			priority = "extra-high",
			frames = 4,
			width = 256,
			height = 320,
			scale = 0.495,
			shift = {0, -0.5}
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
