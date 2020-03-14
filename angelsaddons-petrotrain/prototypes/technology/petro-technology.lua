local funcs = require("prototypes/petro-train-functions")

local tiers = {
  {
    count = 60,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 30
  },
  {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 30
  },
  {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 30
  },
  {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 30
  },
  {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 30
  }
}

funcs.generate_train_technology(
  {
    type = "technology",
    name = "angels-petro-train",
    icon = "__angelsaddons-petrotrain__/graphics/technology/petro-loco-1-tech.png",
    icon_size = 128,
    prerequisites = {
      "railway"
    },
    order = "c-a"
  },
  tiers
)
