data:extend(
  {
    {
      type = "technology",
      name = "angels-lead-smelting-1",
      localised_name = {"technology-name.angels-lead-metallurgy"},
      localised_description = {"technology-description.angels-lead-metallurgy"},
      icon = "__angelssmelting__/graphics/technology/casting-lead-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "ore-crushing",
        "angels-metallurgy-1",
        "basic-chemistry"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "lead-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-lead-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-lead"
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
      name = "angels-lead-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-lead-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "ore-processing-1",
        "angels-lead-smelting-1",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "lead-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-lead-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-lead-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-lead"
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
      name = "angels-lead-casting-2",
      icon = "__angelssmelting__/graphics/technology/casting-lead-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-2",
        "strand-casting-1",
        "angels-lead-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "roll-lead-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-lead-converting"
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
      name = "angels-lead-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-lead-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "ore-processing-2",
        "angels-lead-smelting-2",
        "angels-sulfur-processing-2",
        "water-washing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "lead-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-lead-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-hexafluorosilicic-acid"
        },
        {
          type = "unlock-recipe",
          recipe = "anode-lead-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-lead-casting-fast"
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
      name = "angels-lead-casting-3",
      icon = "__angelssmelting__/graphics/technology/casting-lead-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "strand-casting-2",
        "angels-lead-casting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "roll-lead-casting-fast"
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
