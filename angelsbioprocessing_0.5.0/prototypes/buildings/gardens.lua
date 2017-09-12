data:extend(
{
  {
    type = "item",
    name = "temperate-garden",
    icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "a",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "temperate-garden",
    icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "temperate-garden",
      count = 1
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.3, -1.3}, {1.3, 1.3}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "b",
      max_probability = 0.05,
      peaks =
      {
        {
          influence = 0.0002
        },
        {
          influence = 0.002;
          min_influence = 0,
          elevation_optimal = 45000,
          elevation_range = 37000,
          elevation_max_range = 45000,
        }
      },
	  tile_restriction = {"grass", "grass-medium"}
    },
    pictures =
	{
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/temperate-garden-1.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/temperate-garden-2.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/temperate-garden-3.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/temperate-garden-4.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/temperate-garden-5.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
	}
  },
  {
    type = "item",
    name = "desert-garden",
    icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "b",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "desert-garden",
    icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "desert-garden",
      count = 1
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.3, -1.3}, {1.3, 1.3}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "b",
      max_probability = 0.05,
      peaks =
      {
        {
          influence = 0.0002
        },
        {
          influence = 0.002;
          min_influence = 0,
          elevation_optimal = 45000,
          elevation_range = 37000,
          elevation_max_range = 45000,
        }
      },
	  tile_restriction = {"red-desert", "red-desert-dark", "sand", "sand-dark", "dirt", "dirt-dark"}
    },
    pictures =
	{
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/desert-garden-1.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/desert-garden-2.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/desert-garden-3.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/desert-garden-4.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
	}
  },
  {
    type = "item",
    name = "water-garden",
    icon = "__angelsbioprocessing__/graphics/icons/water-garden.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "c",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "water-garden",
    icon = "__angelsbioprocessing__/graphics/icons/water-garden.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "water-garden",
      count = 1
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.3, -1.3}, {1.3, 1.3}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "b",
      max_probability = 0.05,
      peaks =
      {
        {
          influence = 0.0002
        },
        {
          influence = 0.002;
          min_influence = 0,
          elevation_optimal = 45000,
          elevation_range = 37000,
          elevation_max_range = 45000,
        }
      },
	  tile_restriction = {"grass-dry"}
    },
    pictures =
	{
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/water-garden-1.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/water-garden-2.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/water-garden-3.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      -- {
        -- filename = "__angelsbioprocessing__/graphics/entity/gardens/water-garden-4.png",
        -- width = 128,
        -- height = 128,
		-- scale = 0.75,
        -- shift = {0, 0}
      -- },
      -- {
        -- filename = "__angelsbioprocessing__/graphics/entity/gardens/water-garden-5.png",
        -- width = 128,
        -- height = 128,
		-- scale = 0.75,
        -- shift = {0, 0}
      -- },
	}
  },
})
