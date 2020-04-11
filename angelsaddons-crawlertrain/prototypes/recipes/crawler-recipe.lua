local funcs = require("prototypes/crawler-train-functions")
--TRAINS
funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-locomotive",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {20, 0, 0, 0, 0}},
      {"speed-module", {0, 2, 0, 0, 0}},
      {"speed-module-2", {0, 0, 2, 0, 0}},
      {"speed-module-3", {0, 0, 0, 2, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {40, "+10", 0, 0, 0}},
      {"low-density-structure", {0, 0, 50, "+25", "+25"}}
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
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"speed-module", {0, 1, 0, 0, 0}},
      {"speed-module-2", {0, 0, 1, 0, 0}},
      {"speed-module-3", {0, 0, 0, 1, 0}},
      {"effectivity-module", {0, 1, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 1, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 1, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {35, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 40, "+20", "+20"}}
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
      {"cargo-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, 0}},
      {"iron-gear-wheel", {25, 0, 0, 0, 0}},
      {"iron-chest", {0, 5, "+5", 0, 0}},
      {"steel-chest", {0, 0, 0, 5, "+5"}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
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
      {"cargo-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"iron-gear-wheel", {25, 0, 0, 0, 0}},
      {"iron-chest", {0, 5, 0, 0, 0}},
      {"steel-chest", {0, 0, 5, 0, 0}},
      {"logistic-chest-storage", {0, 0, 0, 5, 0}},
      {"logistic-chest-buffer", {0, 0, 0, 0, 5}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "crawler-bot-wagon"
  },
  "angels-crawler-train"
)
