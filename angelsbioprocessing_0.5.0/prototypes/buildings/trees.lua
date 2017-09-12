data:extend(
{
  {
    type = "item",
    name = "temperate-tree",
    icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "farming-gardens",
    order = "a",
    stack_size = 200
  },  
  {
    type = "tree",
    name = "temperate-tree",
    icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 1
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
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
	  --tile_restriction = {"grass", "grass-medium"}
    },
    pictures =
	{
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-1-a.png",
        width = 256,
        height = 256,
        shift = {0.5, -1.5}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-1-b.png",
        width = 256,
        height = 256,
        shift = {0.5, -1.5}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-1-c.png",
        width = 256,
        height = 256,
        shift = {0.5, -1.5}
      },
	}
  },
})
