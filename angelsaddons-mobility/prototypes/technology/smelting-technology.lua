local funcs = require("prototypes/train-functions")
if angelsmods.addons.mobility.smeltingtrain.enabled then
  local tiers = {
    {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    {
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
  }

  local extra_prereq = {
    nil,
    { "speed-module", "effectivity-module" },
    { "speed-module-2", "effectivity-module-2", "low-density-structure", "electric-engine" },
    { "speed-module-3", "effectivity-module-3" },
    { "rocket-control-unit" },
  }

  funcs.generate_train_technology({
    type = "technology",
    name = "angels-smelting-train",
    icon = "__angelsaddons-mobility__/graphics/technology/smelting-loco-1-tech.png",
    icon_size = 128,
    prerequisites = {
      "railway",
    },
    order = "c-a",
  }, tiers, extra_prereq)
end
