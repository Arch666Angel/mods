data:extend(
  {
    --PETRO CHEMISTRY
    {
      type = "technology",
      name = "oil-gas-extraction",
      icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-3",
        --"electronics",
        "fluid-handling"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "pumpjack"
        },
        {
          type = "unlock-recipe",
          recipe = "separator"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "oil-separation"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-oil-processing",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = {
        "oil-gas-extraction"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "oil-refinery"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-storage-tank-2"
        },
        {
          type = "unlock-recipe",
          recipe = "oil-refining"
        },
        {
          type = "unlock-recipe",
          recipe = "condensates-oil-refining"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-naphtha"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-fuel-oil"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-advanced-oil-processing",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = {
        "oil-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "advanced-oil-refining"
        },
        {
          type = "unlock-recipe",
          recipe = "residual-oil-refining"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "gas-processing",
      icon = "__angelspetrochem__/graphics/technology/gas-refinery-tech.png",
      icon_size = 128,
      prerequisites = {
        "oil-gas-extraction"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-refinery-small"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-storage-tank-1"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-refining"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-fractioning"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-methane"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-advanced-gas-processing",
      icon = "__angelspetrochem__/graphics/technology/gas-refinery-tech.png",
      icon_size = 128,
      prerequisites = {
        "gas-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-refinery"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-fractioning-synthesis"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-fractioning-condensates"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-fractioning-residual"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-flare-stack",
      icon = "__angelspetrochem__/graphics/technology/flare-stack.png",
      icon_size = 128,
      prerequisites = {
        "angels-fluid-control",
        "basic-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-flare-stack"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-advanced-chemistry-1",
      icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
      icon_size = 128,
      prerequisites = {
        --"basic-chemistry-3",
        "ore-floatation"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electrolyser-2"
        },
        {
          type = "unlock-recipe",
          recipe = "advanced-chemical-plant"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-methanol-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-formaldehyde-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-metal-green"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-advanced-chemistry-2",
      icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-advanced-chemistry-1",
        "advanced-electronics",
        "gas-steam-cracking-1",
        "oil-steam-cracking-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electrolyser-3"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-plant-2"
        },
        {
          type = "unlock-recipe",
          recipe = "separator-2"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-refinery-small-2"
        },
        {
          type = "unlock-recipe",
          recipe = "oil-refinery-2"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-styrene-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-benzene-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-ethylbenzene-catalyst"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-advanced-chemistry-3",
      icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-advanced-chemistry-2",
        "advanced-electronics-2",
        "angels-advanced-gas-processing",
        "gas-steam-cracking-2",
        "oil-steam-cracking-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electrolyser-4"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-plant-3"
        },
        {
          type = "unlock-recipe",
          recipe = "separator-3"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-refinery-2"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-refinery-small-3"
        },
        {
          type = "unlock-recipe",
          recipe = "oil-refinery-3"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracker-3"
        },
        {
          type = "unlock-recipe",
          recipe = "advanced-chemical-plant-2"
        },
        {
          type = "unlock-recipe",
          recipe = "condensates-refining"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-mineral-oil-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-polyethylene-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-metal-blue"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-advanced-chemistry-4",
      icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-plant-4"
        },
        {
          type = "unlock-recipe",
          recipe = "separator-4"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-refinery-3"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-refinery-small-4"
        },
        {
          type = "unlock-recipe",
          recipe = "oil-refinery-4"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracker-4"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-phenol-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "cumene-process"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-bisphenol-a"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-metal-yellow"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "gas-synthesis",
      icons = angelsmods.functions.create_gas_tech_icon({{210, 120, 210}, {175, 100, 175}, {140, 080, 140}}),
      prerequisites = {
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-synthesis-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-synthesis-reforming"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-synthesis-methanation"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-synthesis-methanol"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-naphtha-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-synthesis"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "gas-steam-cracking-1",
      icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
      icon_size = 128,
      prerequisites = {
        "gas-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "steam-cracker"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-methane"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-ethane"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-butane"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-propene-synthesis"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-ethylene-oxide"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-ethylene-carbonate"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "gas-steam-cracking-2",
      icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
      icon_size = 128,
      prerequisites = {
        "gas-steam-cracking-1",
        "angels-advanced-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "steam-cracker-2"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-gas-residual"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-toluene-from-benzene"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "oil-steam-cracking-1",
      icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
      icon_size = 128,
      prerequisites = {
        "oil-processing",
        "angels-advanced-chemistry-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "steam-cracker"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-steam-cracking-butane"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-steam-cracking-naphtha"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "oil-steam-cracking-2",
      icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
      icon_size = 128,
      prerequisites = {
        "oil-steam-cracking-1",
        "angels-advanced-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "steam-cracker-2"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-naphtha"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-mineral-oil"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-fuel-oil"
        },
        {
          type = "unlock-recipe",
          recipe = "steam-cracking-oil-residual"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-toluene-from-naphtha"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-electric-boiler",
      icon = "__angelspetrochem__/graphics/technology/electric-boiler-tech.png",
      icon_size = 128,
      prerequisites = {
        "oil-steam-cracking-1",
        "gas-steam-cracking-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electric-boiler"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-steam-water"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-electric-boiler-2",
      icon = "__angelspetrochem__/graphics/technology/electric-boiler-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-electric-boiler",
        "oil-steam-cracking-2",
        "gas-steam-cracking-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electric-boiler-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-steam-water-purified"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-b"
    },
    {
      type = "technology",
      name = "angels-electric-boiler-3",
      icon = "__angelspetrochem__/graphics/technology/electric-boiler-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-electric-boiler-2",
        "angels-advanced-chemistry-4"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electric-boiler-3"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-c"
    }
  }
)
