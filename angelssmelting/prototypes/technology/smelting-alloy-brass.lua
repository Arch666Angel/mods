if mods["bobplates"] then
  data:extend({
    --TECHS
    {
      type = "technology",
      name = "angels-brass-smelting-1",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-brass-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-zinc-smelting-1",
        "angels-copper-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-brass",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-brass",
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
      name = "angels-brass-smelting-2",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-brass-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-metallurgy-3",
        "angels-brass-smelting-1",
        "angels-tin-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-brass-2",
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
    {
      type = "technology",
      name = "angels-brass-smelting-3",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-brass-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-metallurgy-4",
        "angels-brass-smelting-2",
        "angels-lead-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-brass-3",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
  })
end
