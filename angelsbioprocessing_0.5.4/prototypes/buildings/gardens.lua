data:extend(
{
  {
    type = "item",
    name = "temperate-garden",
    icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "a",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "temperate-garden",
    icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
	icon_size = 32,
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
	map_color = {r = 0.2, g = 0.8, b = 0.2},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "za",
      max_probability = 0.025,
      peaks =
      {
        -- {
          -- influence = 0.0002
        -- },
        {
          influence = 0.0005,
          min_influence = 0,
          water_optimal = 0.625,
          water_range = 0.125,
          water_max_range = 0.125,
        }
      },
	  --tile_restriction = {"grass-1", "grass-2", "grass-3", "grass-4", "dry-dirt"},
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
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "b",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "desert-garden",
    icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
	icon_size = 32,
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
	map_color = {r = 0.2, g = 0.8, b = 0.2},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "zb",
      max_probability = 0.025,
      peaks =
      {
        -- {
          -- influence = 0.0002
        -- },
        {
          influence = 0.0005,
          min_influence = 0,
          water_optimal = 0.375,
          water_range = 0.125,
          water_max_range = 0.125,
        }
      },
	  --tile_restriction = {"red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3", "sand-1", "sand-2", "sand-3"},
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
    name = "swamp-garden",
    icon = "__angelsbioprocessing__/graphics/icons/swamp-garden.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "c",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "swamp-garden",
    icon = "__angelsbioprocessing__/graphics/icons/swamp-garden.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "swamp-garden",
      count = 1
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.3, -1.3}, {1.3, 1.3}},
	map_color = {r = 0.2, g = 0.8, b = 0.2},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "zc",
      max_probability = 0.025,
      peaks =
      {
        -- {
          -- influence = 0.0002
        -- },
        {
          influence = 0.0005,
          min_influence = 0,
          water_optimal = 0.875,
          water_range = 0.125,
          water_max_range = 0.125,
        }
      },
	  --tile_restriction = {"dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7"},
    },
    pictures =
	{
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/swamp-garden-1.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/swamp-garden-2.png",
        width = 128,
        height = 128,
		scale = 0.75,
        shift = {0, 0}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/gardens/swamp-garden-3.png",
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
