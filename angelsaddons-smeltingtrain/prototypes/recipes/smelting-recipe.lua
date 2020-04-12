local funcs = require("prototypes/smelting-train-functions")

--TRAINS
funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "smelting-locomotive-1",
    energy_required = 10,
    enabled = "false",
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
    result = "smelting-locomotive-1"
  },
  "angels-smelting-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "smelting-locomotive-tender",
    energy_required = 10,
    enabled = "false",
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
    result = "smelting-locomotive-tender"
  },
  "angels-smelting-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "smelting-wagon-1",
    energy_required = 10,
    enabled = "false",
    ingredients = {
      {"cargo-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, "+0"}},
      {"iron-gear-wheel", {25, 0, 0, 0, 0}},
      {"iron-chest", {0, 5, "+5", 0, 0}},
      {"steel-chest", {0, 0, 0, 5, "+5"}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "smelting-wagon-1"
  },
  "angels-smelting-train"
)
