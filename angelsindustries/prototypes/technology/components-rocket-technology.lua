if angelsmods.industries.components then
  data:extend({
    {
      type = "technology",
      name = "angels-rocket",
      icon = "__angelsindustriesgraphics__/graphics/technology/rocket-tech.png",
      icon_size = 250,
      prerequisites = {
        "rocketry",
        "rocket-fuel",
        "rocket-control-unit",
        "low-density-structure",
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "k-a",
    },
    {
      type = "technology",
      name = "angels-rocket-hull",
      icon = "__angelsindustriesgraphics__/graphics/technology/rocket-hull-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-rocket",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-rocket-hull",
        },
      },
      unit = {
        count = 500,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "k-a",
    },
    {
      type = "technology",
      name = "angels-rocket-ion-thruster",
      icon = "__angelsindustriesgraphics__/graphics/technology/rocket-ion-thruster-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-rocket",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-rocket-ion-thruster",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-rocket-ion-booster",
        },
      },
      unit = {
        count = 500,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "k-a",
    },
    {
      type = "technology",
      name = "angels-rocket-fusion-reactor",
      icon = "__angelsindustriesgraphics__/graphics/technology/rocket-fusion-reactor-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-rocket",
        "angels-fusion-power-1",
        "fission-reactor-equipment",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-rocket-fusion-reactor",
        },
      },
      unit = {
        count = 500,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "k-a",
    },
    {
      type = "technology",
      name = "angels-rocket-shield-array",
      icon = "__angelsindustriesgraphics__/graphics/technology/rocket-shield-array-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-rocket",
        "discharge-defense-equipment",
        mods["angelsaddons-cab"] and "angels-vequipment-2" or "energy-shield-mk2-equipment",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-rocket-shield-array",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-rocket-laser-array",
        },
      },
      unit = {
        count = 500,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "k-a",
    },
  })
end
