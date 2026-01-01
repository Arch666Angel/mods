local funcs = require("prototypes.train-functions")

if angelsmods.addons.mobility.petrotrain.enabled then
  ---@type Angels.Addons.Mobility.TrainTechnologyTier[]
  local tiers = {
    {
      unit = {
        count = 60,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 15,
      },
    },
    {
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 15,
      },
      prerequisites = { "speed-module", "efficiency-module", "chemical-science-pack" },
    },
    {
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      prerequisites = { "speed-module-2", "efficiency-module-2", "low-density-structure", "electric-engine", "production-science-pack" },
    },
    {
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
      prerequisites = { "speed-module-3", "efficiency-module-3", "utility-science-pack" },
    },
    {
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 60,
      },
      prerequisites = { "space-science-pack" },
    },
  }

  funcs.generate_train_technology({
    type = "technology",
    name = "angels-petro-train",
    icon = "__angelsaddons-mobility-graphics-petro__/graphics/technology/petro-trains.png",
    icon_size = 256,
    prerequisites = {
      "fluid-wagon",
    },
    order = "c-a",
  }, tiers)
end
