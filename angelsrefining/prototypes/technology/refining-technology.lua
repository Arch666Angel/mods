data:extend({
  --TIER 1
  {
    type = "technology",
    name = "angels-ore-crushing",
    icon = "__angelsrefininggraphics__/graphics/technology/mechanical-refining.png",
    icon_size = 256,
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crusher",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-sorting-facility",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-crushed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-crushed",
      },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "angels-ore5-crushed"
      -- },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "angels-ore6-crushed"
      -- },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-stone-crushed",
      },
    },
    unit = {
      count = 20,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-advanced-ore-refining-1",
    icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
    icon_size = 256,
    prerequisites = {
      --"angels-ore-crushing",
      "angels-slag-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crusher-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-sorting-facility-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crushed-mix1-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crushed-mix2-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crushed-mix3-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crushed-mix4-processing",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-geode-processing-1",
    icon = "__angelsrefininggraphics__/graphics/technology/geode-processing-red.png",
    icon_size = 256,
    prerequisites = {
      --"angels-ore-crushing",
      "angels-ore-floatation",
      "angels-slag-processing-1",
      "angels-water-washing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-geode-blue-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-cyan-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-lightgreen-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-purple-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-red-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-yellow-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-dust-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-slurry-filtering-conversion-1",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-slag-processing-1",
    icon = "__angelsrefininggraphics__/graphics/technology/slag-processing.png",
    icon_size = 64,
    prerequisites = {
      "angels-ore-crushing",
      "angels-water-treatment",
      "sulfur-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-filtration-unit",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystallizer",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalysator-brown",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-filter-frame",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-filter-coal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-dissolution",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-stone-crushed-dissolution",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-filtering-1",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  --TIER 2
  {
    type = "technology",
    name = "angels-ore-floatation",
    icon = "__angelsrefininggraphics__/graphics/technology/hydro-refining.png",
    icon_size = 256,
    prerequisites = {
      "angels-advanced-ore-refining-1",
      "angels-ore-crushing",
      "angels-water-treatment",
      "automation-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-floatation-cell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-chunk",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-chunk",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-chunk",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-chunk",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-chunk",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-chunk",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-chunk-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-chunk-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-chunk-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-chunk-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-chunk-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-chunk-processing",
      },
    },
    unit = {
      count = 80,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-advanced-ore-refining-2",
    icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
    icon_size = 256,
    prerequisites = {
      --"angels-ore-floatation",
      "angels-advanced-ore-refining-1",
      "chemical-science-pack",
      "angels-ore-powderizer",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crusher-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-floatation-cell-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-sorting-facility-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix1-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix2-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix3-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix4-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix5-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix6-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-chunk-mix7-processing",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-geode-processing-2",
    icon = "__angelsrefininggraphics__/graphics/technology/geode-processing-green.png",
    icon_size = 256,
    prerequisites = {
      "angels-geode-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-geode-blue-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-cyan-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-lightgreen-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-purple-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-red-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-geode-yellow-liquify",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-slurry-filtering-1",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-slag-processing-2",
    icon = "__angelsrefininggraphics__/graphics/technology/slag-processing.png",
    icon_size = 64,
    prerequisites = {
      "angels-slag-processing-1",
      "chemical-science-pack",
      "angels-geode-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-filtration-unit-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystallizer-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalysator-green",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-6",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-7",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-filter-ceramic",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-filter-ceramic-refurbish",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-filtering-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-slag-processing-3",
    icon = "__angelsrefininggraphics__/graphics/technology/slag-processing.png",
    icon_size = 64,
    prerequisites = {
      "processing-unit",
      "production-science-pack",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-filtration-unit-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystallizer-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalysator-orange",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-8",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-slag-processing-9",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-thermal-water-extraction",
    icon = "__angelsrefininggraphics__/graphics/technology/thermal-extractor.png",
    icon_size = 128,
    prerequisites = {
      "angels-water-treatment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-thermal-bore",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  {
    type = "technology",
    name = "angels-thermal-water-extraction-2",
    icon = "__angelsrefininggraphics__/graphics/technology/thermal-extractor.png",
    icon_size = 128,
    prerequisites = {
      "angels-thermal-water-extraction",
      "angels-advanced-ore-refining-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-thermal-extractor",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  {
    type = "technology",
    name = "angels-thermal-water-processing",
    icon = "__angelsrefininggraphics__/graphics/technology/slag-processing.png",
    icon_size = 64,
    prerequisites = {
      "angels-thermal-water-extraction",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-thermal-water-filtering-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-thermal-water-filtering-2",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  --TIER 3
  {
    type = "technology",
    name = "angels-ore-leaching",
    icon = "__angelsrefininggraphics__/graphics/technology/chemical-refining.png",
    icon_size = 128,
    prerequisites = {
      "angels-ore-floatation",
      "angels-advanced-ore-refining-2",
      "advanced-circuit",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-leaching-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-crystal-processing",
      },
    },
    unit = {
      count = 80,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-advanced-ore-refining-3",
    icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-leaching",
      "angels-advanced-ore-refining-2",
      "angels-slag-processing-3",
      "angels-ore-advanced-floatation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-floatation-cell-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-leaching-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-sorting-facility-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-powderizer-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crystal-mix1-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crystal-mix2-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crystal-mix3-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crystal-mix4-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crystal-mix5-processing",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-geode-processing-3",
    icon = "__angelsrefininggraphics__/graphics/technology/geode-processing-yellow.png",
    icon_size = 256,
    prerequisites = {
      "angels-geode-processing-2",
      "angels-slag-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-slurry-filtering-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-crystal-slurry-filtering-conversion-2",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  --TIER 4
  {
    type = "technology",
    name = "angels-ore-refining",
    icon = "__angelsrefininggraphics__/graphics/technology/thermal-refining.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-leaching",
      "angels-advanced-ore-refining-3",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-refinery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-pure",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-pure",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-pure",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-pure",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-pure",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-pure",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore1-pure-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore2-pure-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore3-pure-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore4-pure-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore5-pure-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore6-pure-processing",
      },
    },
    unit = {
      count = 80,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-advanced-ore-refining-4",
    icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-refining",
      "angels-advanced-ore-refining-3",
      "angels-ore-electro-whinning-cell",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-leaching-plant-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-refinery-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-sorting-facility-5",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electro-whinning-cell-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-pure-mix1-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-pure-mix2-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-pure-mix3-processing",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  --TIER -.5
  {
    type = "technology",
    name = "angels-ore-advanced-crushing",
    icon = "__angelsrefininggraphics__/graphics/technology/powderizer-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-ore-crushing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-crushed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-crushed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-crushed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-crushed-processing",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  {
    type = "technology",
    name = "angels-ore-powderizer",
    icon = "__angelsrefininggraphics__/graphics/technology/powderizer-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-ore-advanced-crushing",
      "angels-advanced-ore-refining-1",
      "lubricant",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-powderizer",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-powder",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-powder",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-powder-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-powder-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-milling-drum",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-milling-drum-lubricated",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  {
    type = "technology",
    name = "angels-ore-advanced-floatation",
    icon = "__angelsrefininggraphics__/graphics/technology/powderizer-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-ore-powderizer",
      "angels-thermal-water-extraction-2",
      "angels-ore-leaching",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ore-powderizer-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-sludge",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-dust",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-sludge",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-dust",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-dust-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-dust-processing",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
  {
    type = "technology",
    name = "angels-ore-electro-whinning-cell",
    icon = "__angelsrefininggraphics__/graphics/technology/electro-whinning-cell-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-ore-leaching",
      "angels-advanced-ore-refining-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-electro-whinning-cell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-slime",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-anode-sludge",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-slime",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-anode-sludge",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-crystal",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore8-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore9-crystal-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ore-crystal-mix6-processing",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 15,
    },
    order = "a-a-a1",
  },
})
