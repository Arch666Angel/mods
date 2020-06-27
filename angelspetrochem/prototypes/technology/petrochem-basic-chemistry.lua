data:extend(
  {
    --BASIC CHEMISTRY
    {
      type = "technology",
      name = "basic-chemistry",
      icon = "__angelspetrochem__/graphics/technology/petrochem-tech.png",
      icon_size = 128,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electrolyser"
        },
        {
          type = "unlock-recipe",
          recipe = "dirt-water-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "carbon-separation-2"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-metal-carrier"
        },
        {
          type = "unlock-recipe",
          recipe = "catalyst-metal-red"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "basic-chemistry-2",
      icon = "__angelspetrochem__/graphics/technology/petrochem-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "water-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "water-synthesis"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-calcium-chloride"
        },
        {
          type = "unlock-recipe",
          recipe = "water-gas-shift-1"
        },
        {
          type = "unlock-recipe",
          recipe = "water-gas-shift-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-plant"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "basic-chemistry-3",
      icon = "__angelspetrochem__/graphics/technology/petrochem-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-electrode"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-electrode-used"
        },
        {
          type = "unlock-recipe",
          recipe = "dirt-water-separation-2"
        },
        {
          type = "unlock-recipe",
          recipe = "water-separation-2"
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
      name = "water-chemistry-1",
      icon = "__angelspetrochem__/graphics/technology/water-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-sulfur-processing-2",
        "water-treatment-4",
        "angels-advanced-chemistry-3",
        "production-science-pack",
        mods["angelssmelting"] and "angels-coolant-1" or "basic-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-hydrogen-sulfide-enrichment"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-water-enrichment-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-water-enrichment-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-water-enrichment-3"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-water-enriched-cooling-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-water-enriched-cooling-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-water-enriched-cooling-3"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "water-chemistry-2",
      icon = "__angelspetrochem__/graphics/technology/water-tech.png",
      icon_size = 128,
      prerequisites = {
        "water-chemistry-1",
        "angels-electric-boiler-2",
        "basic-chemistry-3",
        "utility-science-pack"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-heavy-water-extraction"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-heavy-water-cooling"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-heavy-water-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-heavy-water-separation-2"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-coal-processing",
      icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "coke-purification"
        },
        {
          type = "unlock-recipe",
          recipe = "coal-crushed"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-coke"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-coal-processing-2",
      icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-coal-processing",
        "angels-advanced-chemistry-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "coke-purification-2"
        },
        {
          type = "unlock-recipe",
          recipe = "carbon-separation-1"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-coke-sulfur"
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
      name = "angels-coal-cracking",
      icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-coal-processing-2",
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "pellet-coke"
        },
        {
          type = "unlock-recipe",
          recipe = "coal-cracking-1"
        },
        {
          type = "unlock-recipe",
          recipe = "coal-cracking-2"
        },
        {
          type = "unlock-recipe",
          recipe = "coal-cracking-3"
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
      name = "angels-sulfur-processing-1",
      icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "solid-sulfur"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-sulfur-dioxide"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-sulfuric-acid"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-sulfur-processing-2",
      icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-acid-catalyst"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-hydrofluoric-acid"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-hydrogen-fluoride"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-hydrogen-fluoride"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-sulfur-dioxide-calcium-sulfate"
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
      name = "angels-sulfur-processing-3",
      icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-sulfur-processing-2",
        "angels-nitrogen-processing-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "filter-lime"
        },
        {
          type = "unlock-recipe",
          recipe = "filter-lime-used"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-sulfur-scrubber"
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
      name = "angels-nitrogen-processing-1",
      icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-air-filter"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-air-filtering"
        },
        {
          type = "unlock-recipe",
          recipe = "air-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-ammonia"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-nitrogen-processing-2",
      icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-nitrogen-processing-1",
        "angels-advanced-chemistry-1",
        "water-treatment-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-air-filter-2"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-nitrate-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-nitrogen-monoxide"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-nitrogen-dioxide"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-ammonium-chloride"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-urea"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-nitric-acid"
        },
        {
          type = "unlock-recipe",
          recipe = "sodium-nitrate-acid-processing"
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
      name = "angels-nitrogen-processing-3",
      icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-nitrogen-processing-2",
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-melamine"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-hypochlorite"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-monochloramine"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-hydrazine"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-hydrazine"
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
      name = "angels-nitrogen-processing-4",
      icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-nitrogen-processing-3",
        "angels-advanced-chemistry-4"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-dinitrogen-tetroxide"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-methylamine"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-dimethylamine"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-dimethylhydrazine"
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
      name = "chlorine-processing-1",
      icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-2",
        "water-treatment",
        "gas-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "water-saline-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-chlor-methane"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-hydrogen-chloride"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-hydrochloric-acid"
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
      name = "chlorine-processing-2",
      icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
      icon_size = 128,
      prerequisites = {
        "chlorine-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gas-allylchlorid"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-epichlorhydrin"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-glycerol"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          --{type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "chlorine-processing-3",
      icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
      icon_size = 128,
      prerequisites = {
        "chlorine-processing-2",
        "water-treatment-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "solid-salt-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-hydrogen-chloride-separation"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-hydrochloric-acid-solid-sodium-sulfate"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-chlorate"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-perchlorate"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-perchloric-acid"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-phosgene"
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
      name = "sodium-processing",
      icon = "__angelspetrochem__/graphics/technology/sodium-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-3",
        "chlorine-processing-3",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-aqueous-sodium-hydroxide"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-aqueous-sodium-hydroxide-reverse"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-hydroxide"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-carbonate"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-carbonate-electrolysis"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-cyanide"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-hydroxide-solid-sodium-sulfate"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-sulfate-separation"
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
    }
  }
)
