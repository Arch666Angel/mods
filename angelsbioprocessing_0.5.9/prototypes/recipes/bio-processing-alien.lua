data:extend(
{
  --ALIEN ARTIFACTS
  --PRE
  {
    type = "recipe",
    name = "alien-air-filtering",
    category = "petrochem-air-filtering",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 20,
    ingredients ={
      {type="fluid", name="water-purified", amount=50},
    },
    results=
    {
      {type="fluid", name="alien-spores", amount=50},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-spores.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "alien-bacteria",
    category = "bio-processing",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 3,
    ingredients ={
      {type="fluid", name="alien-spores", amount=100},
      {type="item", name="solid-calcium-carbonate", amount=1},
      {type="fluid", name="liquid-perchloric-acid", amount=50},
    },
    results=
    {
      {type="item", name="alien-bacteria", amount=1},
    },
    main_product = "alien-bacteria",
    --icon = "__angelsbioprocessing__/graphics/icons/alien-bacteria.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "alien-goo",
    category = "chemistry",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 3,
    ingredients ={
      {type="item", name="alien-bacteria", amount=1},
    },
    results=
    {
      {type="fluid", name="alien-goo", amount=10},
    },
    main_product = "alien-goo",
    --icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "petri-dish",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="angels-plate-glass", amount=1},
    },
    results=
    {
      {type="item", name="petri-dish", amount=2},
    },
    main_product = "petri-dish",
    --icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "substrate-dish",
    category = "crafting",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 5,
    ingredients ={
      {type="item", name="petri-dish", amount=3},
      {type="item", name="paste-cellulose", amount=1},
    },
    results=
    {
      {type="item", name="substrate-dish", amount=3},
    },
    main_product = "substrate-dish",
    --icon = "__angelsbioprocessing__/graphics/icons/substrate-dish.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "seeded-dish",
    category = "crafting",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="substrate-dish", amount=3},
      {type="item", name="alien-bacteria", amount=1},
    },
    results=
    {
      {type="item", name="seeded-dish", amount=3},
    },
    main_product = "seeded-dish",
    --icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "crystal-seed",
    category = "crafting",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="seeded-dish", amount=1},
      {type="item", name="crystal-dust", amount=1},
    },
    results=
    {
      {type="item", name="crystal-seed", amount=1},
    },
    main_product = "crystal-seed",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "crystal-enhancer",
    category = "crafting",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="seeded-dish", amount=1},
      {type="item", name="crystal-powder", amount=1},
      {type="item", name="catalysator-green", amount=1},
    },
    results=
    {
      {type="item", name="crystal-enhancer", amount=1},
    },
    main_product = "crystal-enhancer",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "crystal-grindstone",
    category = "crafting",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="iron-plate", amount=1},
      {type="item", name="crystal-powder", amount=1},
    },
    results=
    {
      {type="item", name="crystal-grindstone", amount=1},
    },
    main_product = "crystal-grindstone",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "crystal-powder-slurry",
    category = "crafting-with-fluid",
    subgroup = "bio-processing-alien-intermediate",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-powder", amount=1},
    },
    results=
    {
      {type="fluid", name="crystal-slurry", amount=1},
    },
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/liquify-blank.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "j",
  },
  --BITER SMALL
  {
    type = "recipe",
    name = "biter-small-egg",
    category = "crafting",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-seed", amount=1},
      {type="item", name="crystal-dust", amount=1},
    },
    results=
    {
      {type="item", name="biter-small-egg", amount=1},
    },
    main_product = "biter-small-egg",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "biter-small",
    category = "bio-refugium-biter",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="biter-small-egg", amount=1},
      {type="item", name="bio-raw-meat", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=1},
    },
    results=
    {
      {type="item", name="biter-small", amount=1},
    },
    main_product = "biter-small",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "biter-small-butchering",
    category = "crafting",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="biter-small", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
      {type="item", name="crystal-splinter-raw", amount=1},
    },
    main_product = "crystal-splinter-raw",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "crystal-splinter-cutting",
    category = "crafting",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-raw", amount=1},
    },
    results=
    {
      {type="item", name="crystal-splinter-blue-cut", amount=1},
      {type="item", name="crystal-splinter-red-cut", amount=1},
      {type="item", name="crystal-splinter-green-cut", amount=1},
      {type="item", name="crystal-dust", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-harmonic.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "crystal-splinter-blue",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-blue-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-splinter-blue", amount=1},
    },
    main_product = "crystal-splinter-blue",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "crystal-splinter-red",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-red-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-splinter-red", amount=1},
    },
    main_product = "crystal-splinter-red",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "crystal-splinter-green",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-green-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-splinter-green", amount=1},
    },
    main_product = "crystal-splinter-green",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "crystal-powder-splinter-blue",
    category = "liquifying",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-blue-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-blue.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "crystal-powder-splinter-red",
    category = "liquifying",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-red-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-red.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "crystal-powder-splinter-green",
    category = "liquifying",
    subgroup = "bio-biter-small",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-splinter-green-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-green.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "j",
  },
  --BITER MEDIUM
  {
    type = "recipe",
    name = "biter-medium-egg",
    category = "crafting",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-seed", amount=1},
      {type="item", name="crystal-splinter-raw", amount=1},
      {type="item", name="catalysator-green", amount=1},
    },
    results=
    {
      {type="item", name="biter-medium-egg", amount=1},
    },
    main_product = "biter-medium-egg",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "biter-medium",
    category = "bio-refugium-biter",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="biter-medium-egg", amount=1},
      {type="item", name="bio-raw-meat", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=1},
    },
    results=
    {
      {type="item", name="biter-medium", amount=1},
    },
    main_product = "biter-medium",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "biter-medium-butchering",
    category = "crafting",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="biter-medium", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
      {type="item", name="crystal-shard-raw", amount=1},
    },
    main_product = "crystal-shard-raw",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "crystal-shard-cutting",
    category = "crafting",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-raw", amount=1},
    },
    results=
    {
      {type="item", name="crystal-shard-blue-cut", amount=1},
      {type="item", name="crystal-shard-red-cut", amount=1},
      {type="item", name="crystal-shard-green-cut", amount=1},
      {type="item", name="crystal-dust", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-harmonic.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "crystal-shard-blue",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-blue-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-shard-blue", amount=1},
    },
    main_product = "crystal-shard-blue",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "crystal-shard-red",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-red-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-shard-red", amount=1},
    },
    main_product = "crystal-shard-red",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "crystal-shard-green",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-green-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-shard-green", amount=1},
    },
    main_product = "crystal-shard-green",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "crystal-powder-shard-blue",
    category = "liquifying",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-blue-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-blue.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "crystal-powder-shard-red",
    category = "liquifying",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-red-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-red.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "crystal-powder-shard-green",
    category = "liquifying",
    subgroup = "bio-biter-medium",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-shard-green-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-green.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "j",
  },
  --BITER BIG
  {
    type = "recipe",
    name = "biter-big-egg",
    category = "crafting",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-seed", amount=1},
      {type="item", name="crystal-enhancer", amount=1},
      {type="item", name="crystal-shard-raw", amount=1},
      {type="item", name="catalysator-green", amount=1},
    },
    results=
    {
      {type="item", name="biter-big-egg", amount=1},
    },
    main_product = "biter-big-egg",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "biter-big",
    category = "bio-refugium-biter",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="biter-big-egg", amount=1},
      {type="item", name="bio-raw-meat", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=1},
    },
    results=
    {
      {type="item", name="biter-big", amount=1},
    },
    main_product = "biter-big",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "biter-big-butchering",
    category = "crafting",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="biter-big", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
      {type="item", name="crystal-full-raw", amount=1},
    },
    main_product = "crystal-full-raw",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "crystal-full-cutting",
    category = "crafting",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-raw", amount=1},
    },
    results=
    {
      {type="item", name="crystal-full-blue-cut", amount=1},
      {type="item", name="crystal-full-red-cut", amount=1},
      {type="item", name="crystal-full-green-cut", amount=1},
      {type="item", name="crystal-dust", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/crystal-full-raw.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "crystal-full-blue",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-blue-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-full-blue", amount=1},
    },
    main_product = "crystal-full-blue",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "crystal-full-red",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-red-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-full-red", amount=1},
    },
    main_product = "crystal-full-red",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "crystal-full-green",
    category = "crafting-with-fluid",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-green-cut", amount=1},
      {type="item", name="crystal-grindstone", amount=1},
      {type="fluid", name="crystal-slurry", amount=1},
    },
    results=
    {
      {type="item", name="crystal-full-green", amount=1},
    },
    main_product = "crystal-full-green",
    --icon = "__angelsbioprocessing__/graphics/icons/void.png",
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "crystal-powder-full-blue",
    category = "liquifying",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-blue-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-full-blue.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "crystal-powder-full-red",
    category = "liquifying",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-red-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-full-red.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "crystal-powder-full-green",
    category = "liquifying",
    subgroup = "bio-biter-big",
    enabled = "false",
    energy_required = 2,
    ingredients ={
      {type="item", name="crystal-full-green-cut", amount=1},
    },
    results=
    {
      {type="item", name="crystal-powder", amount=1},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/crystal-full-green.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "j",
  },
}
)
