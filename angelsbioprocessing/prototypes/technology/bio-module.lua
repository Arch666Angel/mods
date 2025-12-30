data:extend({
  {
    type = "technology",
    name = "angels-bio-yield-module",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/module-bio-productivity-1-tech.png",
    icon_size = 256,
    prerequisites = {
      "productivity-module",
      "efficiency-module",
      "angels-gardens-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-yield-module",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-yield-module-2",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/module-bio-productivity-2-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-bio-yield-module",
      "productivity-module-2",
      "efficiency-module-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-yield-module-2",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-bio-yield-module-3",
    icon = "__angelsbioprocessinggraphics__/graphics/technology/module-bio-productivity-3-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-bio-yield-module-2",
      "productivity-module-3",
      "efficiency-module-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-yield-module-3",
      },
    },
    unit = {
      count = 300,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "angels-token-bio", 1 },
      },
      time = 30,
    },
  },
})

if mods["bobmodules"] then
  data:extend({
    {
      type = "technology",
      name = "angels-bio-yield-module-4",
      icon = "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-4.png",
      icon_size = 256,
      prerequisites = {
        "angels-bio-yield-module-3",
        "bob-productivity-module-4",
        "bob-pollution-create-module-4",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-bio-yield-module-4",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "angels-token-bio", 1 },
        },
        time = 60,
      },
    },
    {
      type = "technology",
      name = "angels-bio-yield-module-5",
      icon = "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-5.png",
      icon_size = 256,
      prerequisites = {
        "angels-bio-yield-module-4",
        "bob-productivity-module-5",
        "bob-pollution-create-module-5",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-bio-yield-module-5",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
          { "angels-token-bio", 1 },
        },
        time = 60,
      },
    },
  })
end
