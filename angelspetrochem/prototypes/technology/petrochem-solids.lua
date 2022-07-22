data:extend(
  {
    --SOLIDS
    {
      type = "technology",
      name = "plastic-1",
      icon = "__angelspetrochem__/graphics/technology/plastic-1-tech.png",
      icon_size = 128,
      prerequisites = {
        "plastics",
        "gas-steam-cracking-1",
        "oil-steam-cracking-1",
        --"angels-advanced-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-plastic-1"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-plastic"
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
      name = "plastic-2",
      icon = "__angelspetrochem__/graphics/technology/plastic-2-tech.png",
      icon_size = 128,
      prerequisites = {
        "plastic-1",
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-plastic-2"
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
      name = "plastic-3",
      icon = "__angelspetrochem__/graphics/technology/plastic-3-tech.png",
      icon_size = 128,
      prerequisites = {
        "plastic-2",
        "angels-advanced-chemistry-4"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-plastic-3"
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
      name = "resins",
      icon = "__angelspetrochem__/graphics/technology/resins-tech.png",
      icon_size = 128,
      prerequisites = {
        "basic-chemistry-3"
      },
      effects = {
        --{
        --  type = "unlock-recipe",
        --  recipe = "solid-resin"
        --},
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
      name = "resin-1",
      icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
      icon_size = 128,
      prerequisites = {
        "resins",
        "angels-advanced-chemistry-1",
        "angels-nitrogen-processing-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-resin-1"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-resin"
        },
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
      name = "resin-2",
      icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
      icon_size = 128,
      prerequisites = {
        "resin-1",
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-resin-2"
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
      name = "resin-3",
      icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
      icon_size = 128,
      prerequisites = {
        "resin-2",
        "angels-advanced-chemistry-4",
        "chlorine-processing-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-resin-3"
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
      name = "rubbers",
      icon = "__angelspetrochem__/graphics/technology/rubbers-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-oil-processing"
      },
      effects = {
        --{
        --  type = "unlock-recipe",
        --  recipe = "solid-rubber"
        --},
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
      name = "rubber",
      icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
      icon_size = 128,
      prerequisites = {
        "rubbers",
        --"oil-steam-cracking-1",
        "angels-advanced-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "liquid-rubber-1"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-rubber"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    --ROCKET FUEL -- Removed since base has it now
    -- Separate nuclear fuel since changed recipes
    {
      type = "technology",
      name = "angels-nuclear-fuel",
      icon = "__angelspetrochem__/graphics/technology/nuclear-fuel.png",
      icon_size = 128,
      icon_mipmaps = 1,
      prerequisites = {
        "kovarex-enrichment-process",
        "utility-science-pack",
        "rocket-fuel"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nuclear-fuel"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-b"
    }
  }
)
