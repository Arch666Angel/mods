data:extend({
  --WEAPONARY
  {
    type = "technology",
    name = "rocket-booster-1",
    icon = "__angelspetrochem__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-ammonium-nitrate",
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-booster-1",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "rocket-booster-2",
    icon = "__angelspetrochem__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites = {
      "rocket-booster-1",
      "chlorine-processing-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-ammonium-perchlorate",
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-booster-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-explosives-1",
    icon = "__angelspetrochem__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites = {
      "explosives",
      "angels-nitrogen-processing-2",
      "chlorine-processing-2",
      "military-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-nitroglycerin",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-explosives-2",
    icon = "__angelspetrochem__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-explosives-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-trinitrotoluene",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
