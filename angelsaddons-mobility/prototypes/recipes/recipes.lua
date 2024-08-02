local funcs = require("prototypes/train-functions")
--------------------------------------------------------------------------------------------------
-- TRAIN recipes ---------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--== CRAWLER ==--
if angelsmods.addons.mobility.crawlertrain.enabled then
  funcs.generate_train_recipe({
    type = "recipe",
    name = "crawler-locomotive",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
      { name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
      { name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
      { name = "electronic-circuit", amounts = { 20, 0, 0, 0, 0 } },
      { name = "speed-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "speed-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "speed-module-3", amounts = { 0, 0, 0, 2, 0 } },
      { name = "rocket-control-unit", amounts = { 0, 0, 0, 0, 2 } },
      { name = "steel-plate", amounts = { 40, "+10", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 50, "+25", "+25" } },
    }, 
    results = {{ type = "item", name = "crawler-locomotive", amount = 1, }},
  }, "angels-crawler-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "crawler-locomotive-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
      { name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
      { name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "speed-module", amounts = { 0, 1, 0, 0, 0 } },
      { name = "speed-module-2", amounts = { 0, 0, 1, 0, 0 } },
      { name = "speed-module-3", amounts = { 0, 0, 0, 1, 0 } },
      { name = "effectivity-module", amounts = { 0, 1, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 1, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 1, 0 } },
      { name = "rocket-control-unit", amounts = { 0, 0, 0, 0, 2 } },
      { name = "steel-plate", amounts = { 35, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 40, "+20", "+20" } },
    },
    results = {{ type = "item", name = "crawler-locomotive-wagon", amount = 1, }},
  }, "angels-crawler-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "crawler-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "cargo-wagon", amounts = { 1, 0, 0, 0, 0 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "effectivity-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 2, 0 } },
      { name = "iron-gear-wheel", amounts = { 25, 0, 0, 0, 0 } },
      { name = "iron-chest", amounts = { 0, 5, "+5", 0, 0 } },
      { name = "steel-chest", amounts = { 0, 0, 0, 5, "+5" } },
      { name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
    },
    results = {{ type = "item", name = "crawler-wagon", amount = 1, }},
  }, "angels-crawler-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "crawler-bot-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "cargo-wagon", amounts = { 1, 0, 0, 0, 0 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "effectivity-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 2, 0 } },
      { name = "rocket-control-unit", amounts = { 0, 0, 0, 0, 2 } },
      { name = "iron-gear-wheel", amounts = { 25, 0, 0, 0, 0 } },
      { name = "iron-chest", amounts = { 0, 5, 0, 0, 0 } },
      { name = "steel-chest", amounts = { 0, 0, 5, 0, 0 } },
      { name = "logistic-chest-storage", amounts = { 0, 0, 0, 5, 0 } },
      { name = "logistic-chest-buffer", amounts = { 0, 0, 0, 0, 5 } },
      { name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
    },
    results = {{ type = "item", name = "crawler-bot-wagon", amount = 1, }},
  }, "angels-crawler-train")
end

--== PETRO ==--
if angelsmods.addons.mobility.petrotrain.enabled then
  funcs.generate_train_recipe({
    type = "recipe",
    name = "petro-locomotive-1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
      { name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
      { name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
      { name = "electronic-circuit", amounts = { 20, 0, 0, 0, 0 } },
      { name = "speed-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "speed-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "speed-module-3", amounts = { 0, 0, 0, 2, 0 } },
      { name = "rocket-control-unit", amounts = { 0, 0, 0, 0, 2 } },
      { name = "steel-plate", amounts = { 40, "+10", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 50, "+25", "+25" } },
    },
    results = {{ type = "item", name = "petro-locomotive-1", amount = 1, }},
  }, "angels-petro-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "petro-tank1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "fluid-wagon", amounts = { 1, 0, 0, 0, 0 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "effectivity-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 2, "+0" } },
      { name = "pipe", amounts = { 25, 0, 0, 0, 0 } },
      { name = "storage-tank", amounts = { 0, 3, "+3", "+3", "+3" } },
      { name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
    },
    results = {{ type = "item", name = "petro-tank1", amount = 1, }},
  }, "angels-petro-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "petro-tank2",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "fluid-wagon", amounts = { 1, 0, 0, 0, 0 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "effectivity-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 2, "+0" } },
      { name = "pipe", amounts = { 25, 0, 0, 0, 0 } },
      { name = "storage-tank", amounts = { 0, 3, "+3", "+3", "+3" } },
      { name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
    },
    results = {{ type = "item", name = "petro-tank2", amount = 1, }},
  }, "angels-petro-train")
end

--== Smelting ==--
if angelsmods.addons.mobility.smeltingtrain.enabled then
  funcs.generate_train_recipe({
    type = "recipe",
    name = "smelting-locomotive-1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
      { name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
      { name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
      { name = "electronic-circuit", amounts = { 20, 0, 0, 0, 0 } },
      { name = "speed-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "speed-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "speed-module-3", amounts = { 0, 0, 0, 2, 0 } },
      { name = "rocket-control-unit", amounts = { 0, 0, 0, 0, 2 } },
      { name = "steel-plate", amounts = { 40, "+10", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 50, "+25", "+25" } },
    },
    results = {{ type = "item", name = "smelting-locomotive-1", amount = 1, }},
  }, "angels-smelting-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "smelting-locomotive-tender",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
      { name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
      { name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "speed-module", amounts = { 0, 1, 0, 0, 0 } },
      { name = "speed-module-2", amounts = { 0, 0, 1, 0, 0 } },
      { name = "speed-module-3", amounts = { 0, 0, 0, 1, 0 } },
      { name = "effectivity-module", amounts = { 0, 1, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 1, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 1, 0 } },
      { name = "rocket-control-unit", amounts = { 0, 0, 0, 0, 2 } },
      { name = "steel-plate", amounts = { 35, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 40, "+20", "+20" } },
    },
    results = {{ type = "item", name = "smelting-locomotive-tender", amound = 1, }},
  }, "angels-smelting-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "smelting-wagon-1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { name = "cargo-wagon", amounts = { 1, 0, 0, 0, 0 } },
      { name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
      { name = "effectivity-module", amounts = { 0, 2, 0, 0, 0 } },
      { name = "effectivity-module-2", amounts = { 0, 0, 2, 0, 0 } },
      { name = "effectivity-module-3", amounts = { 0, 0, 0, 2, "+0" } },
      { name = "iron-gear-wheel", amounts = { 25, 0, 0, 0, 0 } },
      { name = "iron-chest", amounts = { 0, 5, "+5", 0, 0 } },
      { name = "steel-chest", amounts = { 0, 0, 0, 5, "+5" } },
      { name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
      { name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
    },
    results = {{ type = "item", name = "smelting-wagon-1", amount = 1, }},
  }, "angels-smelting-train")
end
