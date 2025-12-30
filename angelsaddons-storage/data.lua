angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.storage = angelsmods.addons.storage or {}
angelsmods.addons.storage.icon_scaling = settings.startup["angels-enable-storage-icon-scaling"].value

-- pressure tank trigger
angelsmods.addons.storage.inlinetank = mods["angelspetrochem"] and true
  or angelsmods.addons.storage.pressuretanks
  or settings.startup["angels-enable-inline-tank"].value
angelsmods.addons.storage.pressuretank = angelsmods.addons.storage.pressuretanks
  or settings.startup["angels-enable-pressure-tank"].value
-- warehouse trigger
angelsmods.addons.storage.warehouses = angelsmods.addons.storage.warehouses
  or settings.startup["angels-enable-warehouses"].value
-- silo triggers
angelsmods.addons.storage.silos = angelsmods.addons.storage.silos or settings.startup["angels-enable-silos"].value
angelsmods.addons.storage.oresilos = angelsmods.addons.storage.oresilos
  or settings.startup["angels-enable-oresilos"].value

--LOAD FUNCTIONS
angelsmods.functions = angelsmods.functions or {}

-- Helper functions
require("prototypes.angels-functions")
--categories
require("prototypes.storage-categories")
--buildings
require("prototypes.buildings.fluid-tanks")
require("prototypes.buildings.silos")
require("prototypes.buildings.warehouses")
--recipes
require("prototypes.recipes.fluid-tanks")
require("prototypes.recipes.silos")
require("prototypes.recipes.warehouses")
--technology
require("prototypes.technology.fluid-tanks")
require("prototypes.technology.silos")
require("prototypes.technology.warehouses")
