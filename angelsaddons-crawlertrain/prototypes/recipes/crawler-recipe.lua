local funcs = require("prototypes/crawler-train-functions")
--TRAINS
funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-locomotive",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"engine-unit", 20},
      {"steel-plate", 75},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25}
    },
    result = "crawler-locomotive"
  },
  "angels-crawler-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-locomotive-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"engine-unit", 20},
      {"steel-plate", 75},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25}
    },
    result = "crawler-locomotive-wagon"
  },
  "angels-crawler-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"steel-plate", 50},
      {"iron-plate", 30},
      {"iron-gear-wheel", 25}
    },
    result = "crawler-wagon"
  },
  "angels-crawler-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-bot-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"steel-plate", 75},
      {"iron-plate", 50},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25}
    },
    result = "crawler-bot-wagon"
  },
  "angels-crawler-train"
)
