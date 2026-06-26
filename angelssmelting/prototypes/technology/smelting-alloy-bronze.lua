if mods["bobplates"] then
  data:extend({
    --TECH
    {
      type = "technology",
      name = "angels-bronze-smelting-1",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-bronze-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-tin-smelting-1",
        "angels-copper-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-bronze",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-bronze",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
    {
      type = "technology",
      name = "angels-bronze-smelting-2",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-bronze-tech.png",
      icon_size = 256,
      prerequisites = {
        --"angels-metallurgy-2",
        "angels-bronze-smelting-1",
        "angels-nickel-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-bronze-2",
        },
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
    {
      type = "technology",
      name = "angels-bronze-smelting-3",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-bronze-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-metallurgy-3",
        "angels-bronze-smelting-2",
        "angels-zinc-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-bronze-3",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
  })
end
