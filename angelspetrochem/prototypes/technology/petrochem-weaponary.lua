data:extend(
{
  --WEAPONARY
  {
    type = "technology",
    name = "rocket-booster-1",
    icon = "__angelspetrochem__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-nitrogen-processing-2"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-ammonium-nitrate"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-booster-1"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "rocket-booster-2",
    icon = "__angelspetrochem__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites = {
      "rocket-booster-1",
      "angels-nitrogen-processing-3"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-ammonium-perchlorate"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-booster-2"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-explosives-1",
    icon = "__angelspetrochem__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites = {
      "explosives",
      "angels-nitrogen-processing-2",
      "angels-sulfur-processing-2"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-nitroglycerin"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-explosives-2",
    icon = "__angelspetrochem__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-explosives-1",
      "angels-advanced-chemistry-3"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-trinitrotoluene"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "c-a"
  }
}
)