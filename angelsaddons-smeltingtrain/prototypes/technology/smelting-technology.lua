local funcs = require("prototypes/smelting-train-functions")

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
    name = "angels-smelting-train",
    icon = "__angelsaddons-smeltingtrain__/graphics/technology/smelting-loco-1-tech.png",
    icon_size = 128,
    prerequisites = {
      "railway"
    },
    unit = tiers[1],
    order = "c-a"
  },
  tiers
)
-- data:extend(
--   {
--     {
--       type = "technology",
--       name = "angels-smelting-train",
--       icon = "__angelsaddons-smeltingtrain__/graphics/technology/smelting-loco-1-tech.png",
--       icon_size = 128,
--       prerequisites = {
--         "railway"
--       },
--       effects = get_unlocks("angels-smelting-train", {}),
--       unit = {
--         count = 60,
--         ingredients = {
--           {"automation-science-pack", 1},
--           {"logistic-science-pack", 1},
--         },
--         time = 15
--       },
--       order = "c-a"
--     }
--   }
-- )
