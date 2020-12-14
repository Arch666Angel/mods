data:extend(
  {
    {
      type = "technology",
      name = "angels-cobalt-smelting-1",
      localised_name = {"technology-name.angels-cobalt-metallurgy"},
      localised_description = {"technology-description.angels-cobalt-metallurgy"},
      icon = "__angelssmelting__/graphics/technology/casting-cobalt-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "ore-floatation",
        "angels-metallurgy-2",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cobalt-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-cobalt-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-cobalt"
        },
        {
          type = "unlock-recipe",
          recipe = "cobalt-ore-processing-alt"
        }
      },
      unit = {
        count = 150,
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
      name = "angels-cobalt-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "ore-processing-2",
        "angels-cobalt-smelting-1",
        "water-washing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cobalt-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-cobalt-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-cobalt-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-cobalt"
        }
      },
      unit = {
        count = 200,
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
      name = "angels-cobalt-casting-2",
      icon = "__angelssmelting__/graphics/technology/casting-cobalt-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "strand-casting-2",
        "angels-cobalt-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "roll-cobalt-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-cobalt-converting"
        }
      },
      unit = {
        count = 200,
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
      name = "angels-cobalt-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-4",
        "ore-processing-3",
        "angels-cobalt-smelting-2",
        "angels-sulfur-processing-1",
        "chlorine-processing-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cobalt-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-cobalt-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-cobalt-hydroxide-smelting"
        }
      },
      unit = {
        count = 250,
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
      name = "angels-cobalt-casting-3",
      icon = "__angelssmelting__/graphics/technology/casting-cobalt-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-4",
        "strand-casting-3",
        "angels-cobalt-casting-2"
      },
      effects = { 
        {
          type = "unlock-recipe",
          recipe = "roll-cobalt-casting-fast"
        }
      },
      unit = {
        count = 250,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    }
  }
)
