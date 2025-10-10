data:extend({
  --PETRO CHEMISTRY
  {
    type = "technology",
    name = "angels-oil-processing",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 256,
    prerequisites = {
      "oil-gathering",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-oil-refining",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-condensates-oil-refining",
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
    name = "angels-advanced-oil-processing",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 256,
    prerequisites = {
      "angels-advanced-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-oil-refining",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-residual-oil-refining",
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
    name = "angels-gas-processing",
    icon = "__angelspetrochemgraphics__/graphics/technology/gas-refinery-tech.png",
    icon_size = 256,
    prerequisites = {
      "oil-gathering",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery-small",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refining",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-fractioning",
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
    name = "angels-advanced-gas-processing",
    icon = "__angelspetrochemgraphics__/graphics/technology/advanced-gas-refinery-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-steam-cracking-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-fractioning-synthesis",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-fractioning-condensates",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-fractioning-residual",
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
    name = "angels-flare-stack",
    icon = "__angelspetrochemgraphics__/graphics/technology/flare-stack-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-fluid-control",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-flare-stack",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-advanced-chemistry-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      --"angels-basic-chemistry-3",
      "angels-ore-floatation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-chemical-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-methanol",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-formaldehyde",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalyst-metal-green",
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
    name = "angels-advanced-chemistry-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-1",
      "advanced-circuit",
      "angels-steam-cracking-1",
      "chemical-science-pack",
      "angels-sulfur-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-separator-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery-small-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-oil-refinery-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-styrene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-benzene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-ethylbenzene",
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
    name = "angels-advanced-chemistry-3",
    icon = "__angelspetrochemgraphics__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-2",
      "angels-advanced-gas-processing",
      "angels-chlorine-processing-1",
      "angels-steam-cracking-2",
      "angels-thermal-water-extraction",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-condensates-refining",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-mineral-oil-catalyst",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-polyethylene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalyst-metal-blue",
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
    name = "angels-advanced-chemistry-4",
    icon = "__angelspetrochemgraphics__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-3",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-separator-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery-small-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-oil-refinery-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracker-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-chemical-plant-2",
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
    name = "angels-advanced-chemistry-5",
    icon = "__angelspetrochemgraphics__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-4",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-separator-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-refinery-small-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-oil-refinery-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracker-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-phenol",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cumene-process",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-bisphenol-a",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalyst-metal-yellow",
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
  {
    type = "technology",
    name = "angels-gas-synthesis",
    icons = angelsmods.functions.create_gas_tech_icon({ { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    prerequisites = {
      "angels-advanced-chemistry-3",
      "flammables",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-synthesis-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-synthesis-reforming",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-synthesis-methanation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-synthesis-methanol",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-naphtha-catalyst",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-fuel-synthesis",
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
    name = "angels-steam-cracking-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/steam-cracker-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-1",
      "angels-gas-processing",
      "oil-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracker",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-butadiene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalyst-steam-cracking-naphtha",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-methane",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-ethylene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-butane",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-propene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-ethylene-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-ethylene-carbonate",
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
    name = "angels-steam-cracking-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/steam-cracker-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-advanced-chemistry-2",
      "angels-steam-cracking-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracker-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-naphtha",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-mineral-oil",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-fuel-oil",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-oil-residual",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-cracking-gas-residual",
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
    name = "angels-electric-boiler",
    icon = "__angelspetrochemgraphics__/graphics/technology/electric-boiler-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-steam-cracking-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-electric-boiler",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-water",
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
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-electric-boiler-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/electric-boiler-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-electric-boiler",
      "angels-steam-cracking-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-electric-boiler-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-steam-water-purified",
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
    order = "c-b",
  },
  {
    type = "technology",
    name = "angels-electric-boiler-3",
    icon = "__angelspetrochemgraphics__/graphics/technology/electric-boiler-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-electric-boiler-2",
      "angels-advanced-chemistry-5",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-electric-boiler-3",
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
    order = "c-c",
  },
})
