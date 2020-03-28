local funcs = require("prototypes/crawler-train-functions")

local prerequisites = {
  "railway"
}
if mods.angelsindustries then
  table.insert(prerequisites, "angels-crawler")
end

local tiers = {
  {
    count = 60,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 15
  },
  {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 15
  },
  {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 15
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
    name = "angels-crawler-train",
    icon = "__angelsaddons-crawlertrain__/graphics/technology/crawlertrain.png",
    icon_size = 128,
    prerequisites = prerequisites,
    order = "c-a"
  },
  tiers
)
