data:extend(
{
  {
    type = "item",
    name = "temperate-tree",
    icon = "__angelsbioprocessing__/graphics/icons/tree-temperate.png",
    icon_size = 64,
    subgroup = "bio-arboretum-temperate",
    order = "b",
    stack_size = 10
  },  
  {
    type = "tree",
    name = "temperate-tree",
    icon = "__angelsbioprocessing__/graphics/icons/tree-temperate.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      results = {
        {type = "item", name = "wood", amount = 100},
        {type = "item", name = "temperate-tree", amount = 1},
      }
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-2, -5}, {2, 1}},
    map_color = {r = 0.2, g = 0.2, b = 0.8},
    subgroup = "trees",
    order = "z-a",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "xaa",
      max_probability = 0.025,
      peaks =
      {
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
  {
    type = "item",
    name = "swamp-tree",
    icon = "__angelsbioprocessing__/graphics/icons/tree-swamp.png",
    icon_size = 64,
    subgroup = "bio-arboretum-temperate",
    order = "c",
    stack_size = 10
  },  
  {
    type = "tree",
    name = "swamp-tree",
    icon = "__angelsbioprocessing__/graphics/icons/tree-swamp.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      results = {
        {type = "item", name = "wood", amount = 100},
        {type = "item", name = "swamp-tree", amount = 1},
      }
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.5, -5}, {1.5, 1}},
    map_color = {r = 0.2, g = 0.2, b = 0.8},
    subgroup = "trees",
    order = "z-b",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "yaa",
      max_probability = 0.025,
      peaks =
      {
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
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-2-a.png",
        width = 256,
        height = 256,
        shift = {1, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-2-b.png",
        width = 256,
        height = 256,
        shift = {1, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-2-c.png",
        width = 256,
        height = 256,
        shift = {1, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-2-d.png",
        width = 256,
        height = 256,
        shift = {1, -2}
      },
    }
  },
  {
    type = "item",
    name = "desert-tree",
    icon = "__angelsbioprocessing__/graphics/icons/tree-desert.png",
    icon_size = 64,
    subgroup = "bio-arboretum-temperate",
    order = "d",
    stack_size = 10
  },  
  {
    type = "tree",
    name = "desert-tree",
    icon = "__angelsbioprocessing__/graphics/icons/tree-desert.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      results = {
            {type = "item", name = "wood", amount = 100},
            {type = "item", name = "desert-tree", amount = 1},
        }
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-2.5, -5}, {2.5, 1}},
    map_color = {r = 0.2, g = 0.2, b = 0.8},
    subgroup = "trees",
    order = "z-b",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace =
    {
      order = "yaa",
      max_probability = 0.025,
      peaks =
      {
        {
          influence = 0.0005,
          min_influence = 0,
          water_optimal = 0.375,
          water_range = 0.125,
          water_max_range = 0.125,
        }
      },
      --tile_restriction = {"dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7"},
    },
    pictures =
    {
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-3-a.png",
        width = 256,
        height = 256,
        shift = {0.5, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-3-b.png",
        width = 256,
        height = 256,
        shift = {1.5, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-3-c.png",
        width = 256,
        height = 256,
        shift = {0.25, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-3-d.png",
        width = 256,
        height = 256,
        shift = {0.5, -2}
      },
      {
        filename = "__angelsbioprocessing__/graphics/entity/trees/tree-3-e.png",
        width = 256,
        height = 256,
        shift = {0.5, -2}
      },
    }
  },
}
)
