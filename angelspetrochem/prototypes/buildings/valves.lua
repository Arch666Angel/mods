data:extend(
{
--CHECK VALVE
  {
    type = "item",
    name = "valve-check",
    icon = "__angelspetrochem__/graphics/icons/valve-check.png",
	icon_size = 32,
	subgroup = "angels-fluid-control",
    order = "a[valve-check]",
    place_result = "valve-check",
    stack_size = 10,
  },
  {
	type = "storage-tank",
	name = "valve-check",
	icon = "__angelspetrochem__/graphics/icons/valve-check.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "valve-check"},
	max_health = 80,
	corpse = "small-remnants",
	resistances =
	{
	{
	  type = "fire",
	  percent = 70
	}
	},
	fast_replaceable_group = "pipe",
	two_direction_only = false,
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
	{
	base_area = 10,
	--pipe_covers = pipecoverspictures(),
	pipe_connections =
	{
	  { position = {0, 1} },
	  { position = {0, -1}}
	},
	},
	window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
	pictures =
	{
	picture =
	{
	  north =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-check.png",
		priority = "extra-high",
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0}
	  },
	  east =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-check.png",
		priority = "extra-high",
		x = 64,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	  south =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-check.png",
		priority = "extra-high",
		x = 128,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0.05}
	  },
	  west =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-check.png",
		priority = "extra-high",
		x = 192,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	},
	fluid_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	window_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	flow_sprite =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	gas_flow =
	{
	filename = "__core__/graphics/empty.png",
	priority = "extra-high",
	width = 1,
	height = 1,
	frame_count = 1,
	axially_symmetrical = false,
	direction_count = 1,
	animation_speed = 0.25,
	}
	},
	flow_length_in_ticks = 360,
	vehicle_impact_sound =
	{
	filename = "__base__/sound/car-metal-impact.ogg",
	volume = 0.65
	},
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
},
--RETURN VALVE
  {
    type = "item",
    name = "valve-return",
    icon = "__angelspetrochem__/graphics/icons/valve-return.png",
	icon_size = 32,
	subgroup = "angels-fluid-control",
    order = "b[valve-return]",
    place_result = "valve-return",
    stack_size = 10,
  },
  {
	type = "storage-tank",
	name = "valve-return",
	icon = "__angelspetrochem__/graphics/icons/valve-return.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "valve-return"},
	max_health = 80,
	corpse = "small-remnants",
	resistances =
	{
	{
	  type = "fire",
	  percent = 70
	}
	},
	fast_replaceable_group = "pipe",
	two_direction_only = false,
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
	{
	base_area = 1,
	--pipe_covers = pipecoverspictures(),
	pipe_connections =
	{
	  { position = {0, 1} },
	  { position = {0, -1}, type="input"}
	},
	},
	window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
	pictures =
	{
	picture =
	{
	  north =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
		priority = "extra-high",
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0}
	  },
	  east =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
		priority = "extra-high",
		x = 64,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	  south =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
		priority = "extra-high",
		x = 128,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0.05}
	  },
	  west =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
		priority = "extra-high",
		x = 192,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	},
	fluid_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	window_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	flow_sprite =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	gas_flow =
	{
	filename = "__core__/graphics/empty.png",
	priority = "extra-high",
	width = 1,
	height = 1,
	frame_count = 1,
	axially_symmetrical = false,
	direction_count = 1,
	animation_speed = 0.25,
	}
	},
	flow_length_in_ticks = 360,
	vehicle_impact_sound =
	{
	filename = "__base__/sound/car-metal-impact.ogg",
	volume = 0.65
	},
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
},
--OVERFLOW VALVE
  {
    type = "item",
    name = "valve-overflow",
    icon = "__angelspetrochem__/graphics/icons/valve-overflow.png",
	icon_size = 32,
	subgroup = "angels-fluid-control",
    order = "c[valve-overflow]",
    place_result = "valve-overflow",
    stack_size = 10,
  },
  {
	type = "storage-tank",
	name = "valve-overflow",
	icon = "__angelspetrochem__/graphics/icons/valve-overflow.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "valve-overflow"},
	max_health = 80,
	corpse = "small-remnants",
	resistances =
	{
	{
	  type = "fire",
	  percent = 70
	}
	},
	fast_replaceable_group = "pipe",
	two_direction_only = false,
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
	{
	base_area = 1,
	base_level = 0.8,
	--pipe_covers = pipecoverspictures(),
	pipe_connections =
	{
	  { position = {0, 1}, type="output"},
	  { position = {0, -1} }
	}
	},
	window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
	pictures =
	{
	picture =
	{
	  north =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
		priority = "extra-high",
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0}
	  },
	  east =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
		priority = "extra-high",
		x = 64,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	  south =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
		priority = "extra-high",
		x = 128,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0.05}
	  },
	  west =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
		priority = "extra-high",
		x = 192,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	},
	fluid_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	window_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	flow_sprite =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	gas_flow =
	{
	filename = "__core__/graphics/empty.png",
	priority = "extra-high",
	width = 1,
	height = 1,
	frame_count = 1,
	axially_symmetrical = false,
	direction_count = 1,
	animation_speed = 0.25,
	}
	},
	flow_length_in_ticks = 360,
	vehicle_impact_sound =
	{
	filename = "__base__/sound/car-metal-impact.ogg",
	volume = 0.65
	},
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
},
--UNDERFLOW VALVE
  {
    type = "item",
    name = "valve-underflow",
    icon = "__angelspetrochem__/graphics/icons/valve-underflow.png",
	icon_size = 32,
	subgroup = "angels-fluid-control",
    order = "d[valve-underflow]",
    place_result = "valve-underflow",
    stack_size = 10,
  },
  {
	type = "storage-tank",
	name = "valve-underflow",
	icon = "__angelspetrochem__/graphics/icons/valve-underflow.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "valve-underflow"},
	max_health = 80,
	corpse = "small-remnants",
	resistances =
	{
	{
	  type = "fire",
	  percent = 70
	}
	},
	fast_replaceable_group = "pipe",
	two_direction_only = false,
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
	{
	base_area = 1,
	base_level = -0.2,
	--pipe_covers = pipecoverspictures(),
	pipe_connections =
	{
	  { position = {0, 1}, type="output"},
	  { position = {0, -1} }
	}
	},
	window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
	pictures =
	{
	picture =
	{
	  north =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
		priority = "extra-high",
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0}
	  },
	  east =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
		priority = "extra-high",
		x = 64,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	  south =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
		priority = "extra-high",
		x = 128,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, -0.05}
	  },
	  west =
	  {
		filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
		priority = "extra-high",
		x = 192,
		frames = 1,
		width = 64,
		height = 64,
		shift = {0, 0}
	  },
	},
	fluid_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	window_background =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	flow_sprite =
	{
	  filename = "__core__/graphics/empty.png",
	  priority = "extra-high",
	  width = 1,
	  height = 1
	},
	gas_flow =
	{
	filename = "__core__/graphics/empty.png",
	priority = "extra-high",
	width = 1,
	height = 1,
	frame_count = 1,
	axially_symmetrical = false,
	direction_count = 1,
	animation_speed = 0.25,
	}
	},
	flow_length_in_ticks = 360,
	vehicle_impact_sound =
	{
	filename = "__base__/sound/car-metal-impact.ogg",
	volume = 0.65
	},
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
},
--CONVERTER VALVE
    {
    type = "item",
    name = "valve-converter",
    icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
	icon_size = 32,
	subgroup = "angels-fluid-control",
    order = "d[valve-converter]",
    place_result = "valve-converter",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "valve-converter",
    icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "valve-converter"},
    max_health = 100,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    crafting_categories = {"angels-converter"},
    result_inventory_size = 1,
    crafting_speed = 2,
    source_inventory_size = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -1} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, 1} }}
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
    animation =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
        priority = "extra-high",
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, -0}
      },
	  east =
      {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
        priority = "extra-high",
		x = 64,
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, 0}
      },
	  south =
      {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
        priority = "extra-high",
		x = 128,
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, -0.05}
      },
	  west =
      {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
        priority = "extra-high",
		x = 192,
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, 0}
      },
	},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },
}
)
