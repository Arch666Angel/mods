data:extend(
  {
    {
      type = "technology",
      name = "angels-tin-smelting-1",
      localised_name = {"technology-name.angels-tin-metallurgy"},
      localised_description = {"technology-description.angels-tin-metallurgy"},
      icon = "__angelssmelting__/graphics/technology/casting-tin-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "angels-metallurgy-1",
        "ore-crushing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tin-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-tin-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-tin"
        },
        {
          type = "unlock-recipe",
          recipe = "basic-tinned-copper-wire"
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
      name = "angels-tin-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-tin-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "ore-processing-1",
        "angels-tin-smelting-1",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tin-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-tin-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-tin"
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
      name = "angels-tin-casting-2",
      icon = "__angelssmelting__/graphics/technology/casting-tin-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "strand-casting-1",
        "angels-tin-smelting-1",
        "angels-copper-casting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-tin-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-tin-converting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-tin-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-tin-converting"
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
      name = "angels-tin-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-tin-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "ore-processing-2",
        "angels-tin-smelting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "tin-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-tin-smelting"
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
      name = "angels-tin-casting-3",
      icon = "__angelssmelting__/graphics/technology/casting-tin-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "strand-casting-2",
        "angels-tin-casting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-tin-casting-fast"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-tin-casting-fast"
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
