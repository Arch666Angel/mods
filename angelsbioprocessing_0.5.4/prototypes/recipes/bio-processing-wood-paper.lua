data:extend(
{
  {
    type = "recipe",
    name = "cellulose-fiber-raw-wood",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="raw-wood", amount=1},
    },
    results=
    {
      {type="item", name="cellulose-fiber", amount=4},
    },
    icon = "__angelsbioprocessing__/graphics/icons/cellulose-fiber-raw-wood.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "wood-from-cellulose",
    category = "advanced-crafting",
    subgroup = "bio-wood",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="cellulose-fiber", amount=4},
      {type="item", name="paste-cellulose", amount=2},
    },
    results=
    {
      {type="item", name="wood", amount=3},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-cellulose.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "wood-pellets",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="cellulose-fiber", amount=12},
    },
    results=
    {
      {type="item", name="wood-pellets", amount=2},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-pellets.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "wood-bricks",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="wood-pellets", amount=8},
    },
    results=
    {
      {type="item", name="wood-bricks", amount=4},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-bricks.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "gas-carbon-dioxide-from-wood",
    category = "liquifying",
    subgroup = "bio-wood",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="wood-pellets", amount=1},
    },
    results=
    {
      {type="fluid", name="gas-carbon-dioxide", amount=70},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-carbon-dioxide.png",
    icon_size = 32,
    order = "e",
  },
  --PAPER
  --T1
  {
    type = "recipe",
    name = "solid-wood-pulp",
    category = "crafting",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="cellulose-fiber", amount=4},
      {type="item", name="solid-alginic-acid", amount=1},
    },
    results=
    {
      {type="item", name="solid-wood-pulp", amount=3},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a",
  },
  --T2 SULFITE PROCESS
  {
    type = "recipe",
    name = "liquid-pulping-liquor",
    category = "advanced-chemistry",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="fluid", name="gas-sulfur-dioxide", amount=60},
      {type="fluid", name="gas-oxygen", amount=40},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="fluid", name="liquid-pulping-liquor", amount=100},
    },
    --icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "brown-liquor-recovery",
    category = "liquifying",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="liquid-brown-liquor", amount=50},
      {type="item", name="solid-sodium-hydroxide", amount=3},
    },
    results=
    {
      {type="item", name="solid-sodium-sulfate", amount=3},
      {type="fluid", name="water-red-waste", amount=50},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/liquid-brown-liquor.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "sulfite-pulping",
    category = "advanced-chemistry",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 6,
    ingredients ={
      {type="item", name="cellulose-fiber", amount=4},
      {type="fluid", name="liquid-pulping-liquor", amount=75},
      {type="fluid", name="gas-ammonia", amount=25},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="solid-wood-pulp", amount=4},
      {type="fluid", name="liquid-brown-liquor", amount=75},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d",
  },
  --T3 KRAFT PROCESS (SULFATE PROCESS)
  {
    type = "recipe",
    name = "liquid-white-liquor",
    category = "liquifying",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="solid-sodium-hydroxide", amount=2},
      {type="item", name="solid-sodium-sulfate", amount=2},
      {type="fluid", name="water", amount=40},
    },
    results=
    {
      {type="fluid", name="liquid-white-liquor", amount=40},
    },
    --icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "kraft-recovery",
    category = "liquifying",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="liquid-black-liquor", amount=40},
    },
    results=
    {
      {type="fluid", name="liquid-green-liquor", amount=40},	--+energy gain
    },
    icon = "__angelsbioprocessing__/graphics/icons/liquid-green-liquor.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "kraft-causting",
    category = "chemistry",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 6,
    ingredients ={
      {type="fluid", name="liquid-green-liquor", amount=60},
      {type="fluid", name="water", amount=60},
      {type="item", name="solid-lime", amount=4},
    },
    results=
    {
      {type="fluid", name="liquid-white-liquor", amount=55},
      {type="item", name="solid-limestone", amount=4},
    },
    icon = "__angelsbioprocessing__/graphics/icons/liquid-white-liquor.png",
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "kraft-cooking-washing",
    category = "liquifying",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 6,
    ingredients ={
      {type="item", name="cellulose-fiber", amount=4},
      {type="fluid", name="liquid-white-liquor", amount=40},
    },
    results=
    {
      {type="item", name="solid-wood-pulp", amount=5},
      {type="fluid", name="liquid-black-liquor", amount_min=35, amount_max=40},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "h",
  },
  --BLEACHING
  {
    type = "recipe",
    name = "paper-bleaching-1",
    category = "crafting",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-wood-pulp", amount=2},
    },
    results=
    {
      {type="item", name="solid-paper", amount=4},
    },
    --main_product = "solid-paper",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-paper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "paper-bleaching-2",
    category = "liquifying",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-wood-pulp", amount=2},
      {type="item", name="solid-sodium-hydroxide", amount=2},
      {type="fluid", name="gas-chlorine", amount=60},
    },
    results=
    {
      {type="item", name="solid-paper", amount=5},
      {type="item", name="solid-sodium-hypochlorite", amount=2},
    },
    --main_product = "solid-paper",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-paper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "j",
  },
  {
    type = "recipe",
    name = "paper-bleaching-3",
    category = "advanced-chemistry",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-wood-pulp", amount=2},
      {type="item", name="solid-sodium-hydroxide", amount=2},
      {type="fluid", name="gas-oxygen", amount=60},
      {type="fluid", name="gas-sulfur-dioxide", amount=40},
      {type="fluid", name="water", amount=100},
    },
    results=
    {
      {type="item", name="solid-paper", amount=6},
      {type="item", name="solid-sodium-carbonate", amount=2},
      {type="fluid", name="water-yellow-waste", amount=100},
    },
    --main_product = "solid-paper",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-paper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "k",
  },
  --PRODUCTS
  {
    type = "recipe",
    name = "circuit-paper-board",
    icon = "__angelsbioprocessing__/graphics/icons/wood-fiber-board.png",
    category = "advanced-crafting",
    subgroup = "bio-paper",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-paper", amount=2},
    },
    results=
    {
      {type="item", name="circuit-wood-fiber-board", amount=1},
    },
    icon_size = 32,
    order = "l",
  },
  --TREES
  --RAW WOOD
  --GENERATOR
  {
    type = "recipe",
    name = "tree-generator-1",
    category = "angels-tree",
    subgroup = "bio-aboretum",
    enabled = "false",
    energy_required = 15,
    ingredients ={
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="tree-seed", amount=2},
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
    order = "a",
  },
  {
    type = "recipe",
    name = "tree-generator-2",
    category = "angels-tree",
    subgroup = "bio-aboretum",
    enabled = "false",
    energy_required = 15,
    ingredients ={
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
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
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "tree-generator-3",
    category = "angels-tree",
    subgroup = "bio-aboretum",
    enabled = "false",
    energy_required = 15,
    ingredients ={
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
      {type="fluid", name="gas-carbon-dioxide", amount=50},
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
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c",
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-aboretum",
    enabled = "false",
    energy_required = 15,
    ingredients ={
      {type="item", name="tree-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="raw-wood", amount=6},
    },
    icons = {
      {
        icon = "__base__/graphics/icons/raw-wood.png",
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
    order = "d",
  },
  {
    type = "recipe",
    name = "tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-aboretum",
    enabled = "false",
    energy_required = 15,
    ingredients ={
      {type="item", name="tree-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="raw-wood", amount=6},
    },
    icons = {
      {
        icon = "__base__/graphics/icons/raw-wood.png",
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
    order = "e",
  },
  --TEMPERATE
  --GENERATOR
  {
    type = "recipe",
    name = "temperate-tree-generator-1",
    category = "angels-tree-temperate",
    subgroup = "bio-aboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="tree-temperate-seed", amount=2},
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
    order = "a",
  },
  {
    type = "recipe",
    name = "temperate-tree-generator-2",
    category = "angels-tree-temperate",
    subgroup = "bio-aboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
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
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "temperate-tree-generator-3",
    category = "angels-tree-temperate",
    subgroup = "bio-aboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
      {type="fluid", name="gas-methane", amount=50},
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
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c",
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "temperate-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-aboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="tree-temperate-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="bio-resin", amount=6},
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
    order = "d",
  },
  {
    type = "recipe",
    name = "temperate-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-aboretum-temperate",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="tree-temperate-seed", amount=2},
      {type="item", name="solid-soil", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water", amount=50},
    },
    results=
    {
      {type="item", name="bio-resin", amount=6},
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
    order = "e",
  },
  --PROCESSING
  {
    type = "recipe",
    name = "bio-resin",
    category = "liquifying",
    subgroup = "bio-aboretum-temperate",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="gas-ethanol", amount=20},
      {type="item", name="bio-resin", amount=2},
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
    order = "f",
  },
  --SWAMP
  --GENERATOR
  {
    type = "recipe",
    name = "swamp-tree-generator-1",
    category = "angels-tree-swamp",
    subgroup = "bio-aboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-mud", amount=5},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="tree-swamp-seed", amount=2},
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
    order = "a",
  },
  {
    type = "recipe",
    name = "swamp-tree-generator-2",
    category = "angels-tree-swamp",
    subgroup = "bio-aboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-mud", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
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
    order = "b",
  },
  {
    type = "recipe",
    name = "swamp-tree-generator-3",
    category = "angels-tree-swamp",
    subgroup = "bio-aboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-mud", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-light-mud", amount=50},
      {type="fluid", name="gas-nitrogen", amount=50},
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
    order = "c",
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "swamp-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-aboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="tree-swamp-seed", amount=2},
      {type="item", name="solid-mud", amount=5},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="bio-plastic", amount=2},
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
    order = "d",
  },
  {
    type = "recipe",
    name = "swamp-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-aboretum-swamp",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="tree-swamp-seed", amount=2},
      {type="item", name="solid-mud", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-light-mud", amount=50},
    },
    results=
    {
      {type="item", name="bio-plastic", amount=2},
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
    order = "e",
  },
  --PROCESSING
  {
    type = "recipe",
    name = "bio-plastic",
    category = "liquifying",
    subgroup = "bio-aboretum-swamp",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="gas-acetone", amount=20},
      {type="item", name="bio-plastic", amount=2},
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
    order = "f",
  },
  --DESERT
  --GENERATOR
  {
    type = "recipe",
    name = "desert-tree-generator-1",
    category = "angels-tree-desert",
    subgroup = "bio-aboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-sand", amount=5},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="tree-desert-seed", amount=2},
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
    order = "a",
  },
  {
    type = "recipe",
    name = "desert-tree-generator-2",
    category = "angels-tree-desert",
    subgroup = "bio-aboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-sand", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
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
    order = "b",
  },
  {
    type = "recipe",
    name = "desert-tree-generator-3",
    category = "angels-tree-desert",
    subgroup = "bio-aboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="solid-sand", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-saline", amount=50},
      {type="fluid", name="gas-nitrogen", amount=50},
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
    order = "c",
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "desert-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-aboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="tree-desert-seed", amount=2},
      {type="item", name="solid-sand", amount=5},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="bio-rubber", amount=2},
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
    order = "d",
  },
  {
    type = "recipe",
    name = "desert-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-aboretum-desert",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="tree-desert-seed", amount=2},
      {type="item", name="solid-sand", amount=5},
      {type="item", name="solid-fertilizer", amount=1},
      {type="fluid", name="water-saline", amount=50},
    },
    results=
    {
      {type="item", name="bio-rubber", amount=2},
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
    order = "e",
  },
  --PROCESSING
  {
    type = "recipe",
    name = "bio-rubber",
    category = "liquifying",
    subgroup = "bio-aboretum-desert",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="gas-acetone", amount=20},
      {type="item", name="bio-rubber", amount=2},
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
        icon = "__angelsbioprocessing__/graphics/icons/solid-bio-rubber.png",
        scale = 0.5,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "f",
  },
}
)
