data:extend(
  {
    --METALLURGY
    {
      type = "technology",
      name = "angels-metallurgy-1",
      icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      prerequisites = {
        "steel-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "blast-furnace"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-furnace"
        },
        {
          type = "unlock-recipe",
          recipe = "induction-furnace"
        },
        {
          type = "unlock-recipe",
          recipe = "casting-machine"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-metallurgy-2",
      icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "angels-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "blast-furnace-2"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-furnace-2"
        },
        {
          type = "unlock-recipe",
          recipe = "induction-furnace-2"
        },
        {
          type = "unlock-recipe",
          recipe = "casting-machine-2"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-metallurgy-3",
      icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "angels-metallurgy-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "blast-furnace-3"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-furnace-3"
        },
        {
          type = "unlock-recipe",
          recipe = "induction-furnace-3"
        },
        {
          type = "unlock-recipe",
          recipe = "casting-machine-3"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-metallurgy-4",
      icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "angels-metallurgy-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "blast-furnace-4"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-chemical-furnace-4"
        },
        {
          type = "unlock-recipe",
          recipe = "induction-furnace-4"
        },
        {
          type = "unlock-recipe",
          recipe = "casting-machine-4"
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
        time = 30
      },
      order = "c-a"
    },
    --POWDER METALLURGY
    {
      type = "technology",
      name = "powder-metallurgy-1",
      icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sintering-oven"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-mixer"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "powder-metallurgy-2",
      icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "powder-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sintering-oven-2"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-mixer-2"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "powder-metallurgy-3",
      icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "powder-metallurgy-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sintering-oven-3"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-mixer-3"
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
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "powder-metallurgy-4",
      icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "powder-metallurgy-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sintering-oven-4"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-mixer-4"
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
        time = 30
      },
      order = "c-a"
    },
    --STRAND CASTING
    {
      type = "technology",
      name = "strand-casting-1",
      icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      prerequisites = {
        "angels-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "strand-casting-machine"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "strand-casting-2",
      icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "strand-casting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "strand-casting-machine-2"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "strand-casting-3",
      icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "strand-casting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "strand-casting-machine-3"
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
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "strand-casting-4",
      icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "strand-casting-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "strand-casting-machine-4"
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
        time = 30
      },
      order = "c-a"
    },
    --ORE PROCESSING
    {
      type = "technology",
      name = "ore-processing-1",
      icon = "__angelssmelting__/graphics/technology/processing-machine-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      prerequisites = {
        "angels-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "ore-processing-machine"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "ore-processing-2",
      icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "ore-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "ore-processing-machine-2"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-press"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "ore-processing-3",
      icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "ore-processing-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "ore-processing-machine-3"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-press-2"
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
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "ore-processing-4",
      icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "ore-processing-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "ore-processing-machine-4"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-press-3"
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
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "ore-processing-5",
      icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
      icon_size = 256,
      icon_mipmaps = 2,
      upgrade = true,
      prerequisites = {
        "ore-processing-4"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "pellet-press-4"
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
        time = 30
      },
      order = "c-a"
    },
    --SUPPORT
    {
      type = "technology",
      name = "angels-coolant-1",
      icon = "__angelssmelting__/graphics/technology/coolant-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "water-treatment",
        "angels-oil-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cooling-tower"
        },
        {
          type = "unlock-recipe",
          recipe = "coolant"
        },
        {
          type = "unlock-recipe",
          recipe = "coolant-used-filtration-1"
        },
        {
          type = "unlock-recipe",
          recipe = "coolant-cool-100"
        },
        {
          type = "unlock-recipe",
          recipe = "coolant-cool-200"
        },
        {
          type = "unlock-recipe",
          recipe = "coolant-cool-300"
        },
        {
          type = "unlock-recipe",
          recipe = "coolant-cool-steam"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-coolant-2",
      icon = "__angelssmelting__/graphics/technology/coolant-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-coolant-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "coolant-used-filtration-2"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    }
  }
)
