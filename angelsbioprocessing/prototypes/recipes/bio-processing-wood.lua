data:extend(
{
  -- RAW WOOD GENERATOR
  {
    type = "recipe",
    name = "tree-generator-1",
    category = "angels-tree",
    subgroup = "bio-arboretum",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="tree-seed", amount=4},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "tree-generator-2",
    category = "angels-tree",
    subgroup = "bio-arboretum",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="tree-seed", amount=6},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "tree-generator-3",
    category = "angels-tree",
    subgroup = "bio-arboretum",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
      {type="fluid", name="gas-carbon-dioxide", amount=20},
    },
    results=
    {
      {type="item", name="tree-seed", amount=8},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a[generator]-c",
  },



  -- RAW WOOD ARBORETUM
  {
    type = "recipe",
    name = "tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="solid-tree", amount=4},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 100/255, a = 1},
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="solid-tree", amount=6},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 100/255, a = 1},
    },
    order = "b[arboretum]-b",
  },
  {
    type = "recipe",
    name = "tree-arboretum-3",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
      {type="fluid", name="liquid-nutrient-pulp", amount=10},
    },
    results=
    {
      {type="item", name="solid-tree", amount=8},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 100/255, a = 1},
    },
    order = "b[arboretum]-c",
  },



  -- RAW WOOD PROCESSING
  {
    type = "recipe",
    name = "solid-saw",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = "false",
    energy_required = 0.5,
    ingredients =
    {
      {type="item", name="iron-plate", amount=1},
    },
    results=
    {
      {type="item", name="solid-saw", amount=1},
    },
    --icon_size = 32,
    order = "b[saw]",
  },
  {
    type = "recipe",
    name = "wood-sawing",
    category = "crafting",
    subgroup = "bio-processing-wood",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="solid-tree", amount=1},
      {type="item", name="solid-saw", amount=1},
    },
    results=
    {
      {type="item", name="wood", amount_min=6, amount_max=8},
      {type="item", name="solid-saw", amount=1, catalyst_amount=1, probability= 0.9},
    },
    main_product = "wood",
    --icon_size = 32,
    order = "a",
  },



  -- TEMPERATE WOOD GENERATOR
  {
    type = "recipe",
    name = "temperate-tree-generator-1",
    category = "angels-tree-temperate",
    subgroup = "bio-arboretum-temperate",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="tree-temperate-seed", amount=4},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-temperate-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "temperate-tree-generator-2",
    category = "angels-tree-temperate",
    subgroup = "bio-arboretum-temperate",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="tree-temperate-seed", amount=6},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-temperate-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "temperate-tree-generator-3",
    category = "angels-tree-temperate",
    subgroup = "bio-arboretum-temperate",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
      {type="fluid", name="gas-carbon-dioxide", amount=20},
    },
    results=
    {
      {type="item", name="tree-temperate-seed", amount=8},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-temperate-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a[generator]-c",
  },



  -- TEMPERATE WOOD ARBORETUM
  {
    type = "recipe",
    name = "temperate-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-temperate-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="bio-resin", amount=2},
      {type="item", name="solid-tree", amount=2},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-resin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "temperate-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-temperate-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="bio-resin", amount=4},
      {type="item", name="solid-tree", amount=3},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-resin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "b[arboretum]-b",
  },



  -- TEMPERATE WOOD PROCESSING
  {
    type = "recipe",
    name = "bio-resin",
    category = "liquifying",
    subgroup = "bio-arboretum-temperate",
    enabled = "false",
    energy_required = 4,
    ingredients =
    {
      {type="fluid", name="gas-ethanol", amount=20},
      {type="item", name="bio-resin", amount=1},
    },
    results=
    {
      {type="fluid", name="liquid-resin", amount=5},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/liquid-resin.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-resin.png",
        scale = 0.5,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[processing]",
  },



  -- SWAMP WOOD GENERATOR
  {
    type = "recipe",
    name = "swamp-tree-generator-1",
    category = "angels-tree-swamp",
    subgroup = "bio-arboretum-swamp",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-mud", amount=5},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="tree-swamp-seed", amount=4},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-swamp-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 0/255, b = 100/255, a = 1},
    },
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "swamp-tree-generator-2",
    category = "angels-tree-swamp",
    subgroup = "bio-arboretum-swamp",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-mud", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="tree-swamp-seed", amount=6},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-swamp-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 0/255, b = 100/255, a = 1},
    },
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "swamp-tree-generator-3",
    category = "angels-tree-swamp",
    subgroup = "bio-arboretum-swamp",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-mud", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-light-mud", amount=50},
      {type="fluid", name="gas-nitrogen", amount=20},
    },
    results=
    {
      {type="item", name="tree-swamp-seed", amount=8},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-swamp-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 0/255, b = 100/255, a = 1},
    },
    order = "a[generator]-c",
  },



  -- SWAMP WOOD ARBORETUM
  {
    type = "recipe",
    name = "swamp-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-swamp-seed", amount=2},
      {type="item", name="solid-mud", amount=5},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="bio-plastic", amount=2},
      {type="item", name="solid-tree", amount=2},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-plastic.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 0/255, b = 100/255, a = 1},
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "swamp-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-swamp-seed", amount=2},
      {type="item", name="solid-mud", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="bio-plastic", amount=4},
      {type="item", name="solid-tree", amount=3},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-plastic.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 0/255, g = 0/255, b = 100/255, a = 1},
    },
    order = "b[arboretum]-b",
  },



  -- SWAMP WOOD PROCESSING
  {
    type = "recipe",
    name = "bio-plastic",
    category = "liquifying",
    subgroup = "bio-arboretum-swamp",
    enabled = "false",
    energy_required = 4,
    ingredients =
    {
      {type="fluid", name="gas-acetone", amount=20},
      {type="item", name="bio-plastic", amount=1},
    },
    results=
    {
      {type="fluid", name="liquid-plastic", amount=5},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-plastic.png",
        scale = 0.5,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[processing]",
  },



  -- DESERT WOOD GENERATOR
  {
    type = "recipe",
    name = "desert-tree-generator-1",
    category = "angels-tree-desert",
    subgroup = "bio-arboretum-desert",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-sand", amount=5},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="tree-desert-seed", amount=4},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-desert-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "desert-tree-generator-2",
    category = "angels-tree-desert",
    subgroup = "bio-arboretum-desert",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-sand", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="tree-desert-seed", amount=6},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-desert-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "desert-tree-generator-3",
    category = "angels-tree-desert",
    subgroup = "bio-arboretum-desert",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {type="item", name="solid-sand", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-saline", amount=50},
      {type="fluid", name="gas-nitrogen", amount=20},
    },
    results=
    {
      {type="item", name="tree-desert-seed", amount=8},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-desert-seed.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "a[generator]-c",
  },



  -- DESERT WOOD ARBORETUM
  {
    type = "recipe",
    name = "desert-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-desert-seed", amount=2},
      {type="item", name="solid-sand", amount=5},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="bio-rubber", amount=2},
      {type="item", name="solid-tree", amount=2},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-rubber.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "desert-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="tree-desert-seed", amount=2},
      {type="item", name="solid-sand", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="bio-rubber", amount=4},
      {type="item", name="solid-tree", amount=3},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-rubber.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    crafting_machine_tint =
    {
      primary = {r = 100/255, g = 100/255, b = 0/255, a = 1},
    },
    order = "b[arboretum]-b",
  },



  -- DESERT WOOD PROCESSING
  {
    type = "recipe",
    name = "bio-rubber",
    category = "liquifying",
    subgroup = "bio-arboretum-desert",
    enabled = "false",
    energy_required = 4,
    ingredients =
    {
      {type="fluid", name="gas-acetone", amount=20},
      {type="item", name="bio-rubber", amount=1},
    },
    results=
    {
      {type="fluid", name="liquid-rubber", amount=5},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/liquid-rubber.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-rubber.png",
        scale = 0.5,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[processing]",
  },
}
)
