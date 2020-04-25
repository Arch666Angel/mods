data:extend(
  {
    {
      type = "technology",
      name = "angels-zinc-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
      icon_size = 128,
      prerequisites = {
        "angels-metallurgy-1",
        "basic-chemistry"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "zinc-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-zinc-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-zinc"
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
      name = "angels-zinc-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-zinc-smelting-1",
        "ore-processing-1",
        "angels-coal-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "zinc-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-zinc-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-zinc"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-zinc-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-zinc-converting"
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
      name = "angels-zinc-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
      icon_size = 128,
      upgrade = true,
      prerequisites = {
        "angels-zinc-smelting-2",
        "ore-processing-2",
        "angels-sulfur-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "zinc-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-zinc-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-zinc-oxide-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "cathode-zinc-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-zinc-casting-fast"
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
    }
  }
)
