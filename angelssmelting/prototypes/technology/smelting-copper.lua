data:extend(
  {
    {
      type = "technology",
      name = "angels-copper-smelting-1",
      localised_name = {"technology-name.angels-copper-metallurgy"},
      localised_description = {"technology-description.angels-copper-metallurgy"},
      icon = "__angelssmelting__/graphics/technology/casting-copper-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "ore-crushing",
        "angels-metallurgy-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-copper"
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
      name = "angels-copper-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-copper-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "ore-processing-1",
        "angels-copper-smelting-1",
        "basic-chemistry"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-copper"
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
      name = "angels-copper-casting-2",
      icon = "__angelssmelting__/graphics/technology/casting-copper-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "strand-casting-1",
        "angels-copper-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-copper-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-copper-converting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-copper-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-copper-converting"
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
      name = "angels-copper-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-copper-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "ore-processing-2",
        "angels-copper-smelting-2",
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-copper-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "anode-copper-smelting"
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
      name = "angels-copper-casting-3",
      icon = "__angelssmelting__/graphics/technology/casting-copper-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "strand-casting-2",
        "angels-copper-casting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-copper-casting-fast"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-copper-casting-fast"
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
