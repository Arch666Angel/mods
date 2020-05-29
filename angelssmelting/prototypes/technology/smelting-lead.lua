data:extend(
  {
    {
      type = "technology",
      name = "angels-lead-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
      icon_size = 128,
      prerequisites = {
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
      name = "angels-lead-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-lead-smelting-1",
        "ore-processing-1",
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
        },
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
      name = "angels-lead-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-lead-smelting-2",
        "ore-processing-2",
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
