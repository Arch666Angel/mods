local funcs = require("prototypes.train-functions")
--------------------------------------------------------------------------------------------------
-- TRAIN recipes ---------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--== CRAWLER ==--
if angelsmods.addons.mobility.crawlertrain.enabled then
  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-crawler-locomotive",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-crawler-locomotive", amount = 1 } },
  }, {
    { type = "item", name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
    { type = "item", name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
    { type = "item", name = "electronic-circuit", amounts = { 20, 0, 0, 0, 0 } },
    { type = "item", name = "speed-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "speed-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "speed-module-3", amounts = { 0, 0, 0, 2, 0 } },
    { type = "item", name = "processing-unit", amounts = { 0, 0, 0, 0, 2 } },
    { type = "item", name = "steel-plate", amounts = { 40, "+10", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 50, "+25", "+25" } },
  }, "angels-crawler-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-crawler-locomotive-wagon",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-crawler-locomotive-wagon", amount = 1 } },
  }, {
    { type = "item", name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
    { type = "item", name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "speed-module", amounts = { 0, 1, 0, 0, 0 } },
    { type = "item", name = "speed-module-2", amounts = { 0, 0, 1, 0, 0 } },
    { type = "item", name = "speed-module-3", amounts = { 0, 0, 0, 1, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 1, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 1, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 1, 0 } },
    { type = "item", name = "processing-unit", amounts = { 0, 0, 0, 0, 2 } },
    { type = "item", name = "steel-plate", amounts = { 35, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 40, "+20", "+20" } },
  }, "angels-crawler-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-crawler-wagon",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-crawler-wagon", amount = 1 } },
  }, {
    { type = "item", name = "cargo-wagon", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 2, 0 } },
    { type = "item", name = "iron-gear-wheel", amounts = { 25, 0, 0, 0, 0 } },
    { type = "item", name = "iron-chest", amounts = { 0, 5, "+5", 0, 0 } },
    { type = "item", name = "steel-chest", amounts = { 0, 0, 0, 5, "+5" } },
    { type = "item", name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
  }, "angels-crawler-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-crawler-bot-wagon",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-crawler-bot-wagon", amount = 1 } },
  }, {
    { type = "item", name = "cargo-wagon", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 2, 0 } },
    { type = "item", name = "processing-unit", amounts = { 0, 0, 0, 0, 2 } },
    { type = "item", name = "iron-gear-wheel", amounts = { 25, 0, 0, 0, 0 } },
    { type = "item", name = "iron-chest", amounts = { 0, 5, 0, 0, 0 } },
    { type = "item", name = "steel-chest", amounts = { 0, 0, 5, 0, 0 } },
    { type = "item", name = "storage-chest", amounts = { 0, 0, 0, 5, 0 } },
    { type = "item", name = "buffer-chest", amounts = { 0, 0, 0, 0, 5 } },
    { type = "item", name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
  }, "angels-crawler-train")
end

--== PETRO ==--
if angelsmods.addons.mobility.petrotrain.enabled then
  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-petro-locomotive-1",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-petro-locomotive-1", amount = 1 } },
  }, {
    { type = "item", name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
    { type = "item", name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
    { type = "item", name = "electronic-circuit", amounts = { 20, 0, 0, 0, 0 } },
    { type = "item", name = "speed-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "speed-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "speed-module-3", amounts = { 0, 0, 0, 2, 0 } },
    { type = "item", name = "processing-unit", amounts = { 0, 0, 0, 0, 2 } },
    { type = "item", name = "steel-plate", amounts = { 40, "+10", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 50, "+25", "+25" } },
  }, "angels-petro-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-petro-tank1",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-petro-tank1", amount = 1 } },
  }, {
    { type = "item", name = "fluid-wagon", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 2, "+0" } },
    { type = "item", name = "pipe", amounts = { 25, 0, 0, 0, 0 } },
    { type = "item", name = "storage-tank", amounts = { 0, 3, "+3", "+3", "+3" } },
    { type = "item", name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
  }, "angels-petro-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-petro-tank2",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-petro-tank2", amount = 1 } },
  }, {
    { type = "item", name = "fluid-wagon", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 2, "+0" } },
    { type = "item", name = "pipe", amounts = { 25, 0, 0, 0, 0 } },
    { type = "item", name = "storage-tank", amounts = { 0, 3, "+3", "+3", "+3" } },
    { type = "item", name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
  }, "angels-petro-train")
end

--== Smelting ==--
if angelsmods.addons.mobility.smeltingtrain.enabled then
  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-smelting-locomotive-1",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-smelting-locomotive-1", amount = 1 } },
  }, {
    { type = "item", name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
    { type = "item", name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
    { type = "item", name = "electronic-circuit", amounts = { 20, 0, 0, 0, 0 } },
    { type = "item", name = "speed-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "speed-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "speed-module-3", amounts = { 0, 0, 0, 2, 0 } },
    { type = "item", name = "processing-unit", amounts = { 0, 0, 0, 0, 2 } },
    { type = "item", name = "steel-plate", amounts = { 40, "+10", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 50, "+25", "+25" } },
  }, "angels-smelting-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-smelting-locomotive-tender",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-smelting-locomotive-tender", amount = 1 } },
  }, {
    { type = "item", name = "locomotive", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "engine-unit", amounts = { 25, "+5", 0, 0, 0 } },
    { type = "item", name = "electric-engine-unit", amounts = { 0, 0, 40, 45, 50 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "speed-module", amounts = { 0, 1, 0, 0, 0 } },
    { type = "item", name = "speed-module-2", amounts = { 0, 0, 1, 0, 0 } },
    { type = "item", name = "speed-module-3", amounts = { 0, 0, 0, 1, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 1, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 1, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 1, 0 } },
    { type = "item", name = "processing-unit", amounts = { 0, 0, 0, 0, 2 } },
    { type = "item", name = "steel-plate", amounts = { 35, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 40, "+20", "+20" } },
  }, "angels-smelting-train")

  funcs.generate_train_recipe({
    type = "recipe",
    name = "angels-smelting-wagon-1",
    energy_required = 10,
    enabled = false,
    results = { { type = "item", name = "angels-smelting-wagon-1", amount = 1 } },
  }, {
    { type = "item", name = "cargo-wagon", amounts = { 1, 0, 0, 0, 0 } },
    { type = "item", name = "electronic-circuit", amounts = { 15, 0, 0, 0, 0 } },
    { type = "item", name = "efficiency-module", amounts = { 0, 2, 0, 0, 0 } },
    { type = "item", name = "efficiency-module-2", amounts = { 0, 0, 2, 0, 0 } },
    { type = "item", name = "efficiency-module-3", amounts = { 0, 0, 0, 2, "+0" } },
    { type = "item", name = "iron-gear-wheel", amounts = { 25, 0, 0, 0, 0 } },
    { type = "item", name = "iron-chest", amounts = { 0, 5, "+5", 0, 0 } },
    { type = "item", name = "steel-chest", amounts = { 0, 0, 0, 5, "+5" } },
    { type = "item", name = "steel-plate", amounts = { 20, "+5", 0, 0, 0 } },
    { type = "item", name = "low-density-structure", amounts = { 0, 0, 25, "+10", "+15" } },
  }, "angels-smelting-train")
end
