data:extend(
  {
    {
      type = "technology",
      name = "angels-nickel-smelting-1",
      localised_name = {"technology-name.angels-nickel-metallurgy"},
      localised_description = {"technology-description.angels-nickel-metallurgy"},
      icon = "__angelssmelting__/graphics/technology/casting-nickel-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "ore-crushing",
        "angels-metallurgy-1",
        "basic-chemistry-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nickel-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-nickel-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-nickel"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-nickel-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-nickel-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "ore-processing-1",
        "angels-nickel-smelting-1",
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nickel-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-nickel-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "cathode-nickel-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-nickel"
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
      name = "angels-nickel-casting-2",
      icon = "__angelssmelting__/graphics/technology/casting-nickel-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "strand-casting-1",
        "angels-nickel-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "roll-nickel-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-nickel-converting"
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
      name = "angels-nickel-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-nickel-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "ore-processing-2",
        "angels-nickel-smelting-2",
        "angels-sulfur-processing-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nickel-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-nickel-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-nickel-carbonyl-smelting"
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
      name = "angels-nickel-casting-3",
      icon = "__angelssmelting__/graphics/technology/casting-nickel-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "strand-casting-2",
        "angels-nickel-casting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "roll-nickel-casting-fast"
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
    }
  }
)
