angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.storage = angelsmods.addons.storage or {}
angelsmods.addons.storage.icon_scaling = settings.startup["angels-enable-storage-icon-scaling"].value
-- pressure tank trigger
angelsmods.addons.storage.pressuretank = angelsmods.addons.storage.pressuretanks or settings.startup["angels-enable-pressure-tank"].value
-- warehouse trigger
angelsmods.addons.storage.warehouses = angelsmods.addons.storage.warehouses or settings.startup["angels-enable-warehouses"].value
--ore-silo trigger
angelsmods.addons.storage.oresilos = angelsmods.addons.storage.oresilos or settings.startup["angels-enable-silos"].value

--categories
require("prototypes.storage-categories")
--buildings
require("prototypes.buildings.basic-storage")
require("prototypes.buildings.logistic-storage")
--recipes
require("prototypes.recipes.pressure-tanks")
require("prototypes.recipes.warehouses")
require("prototypes.recipes.ore-silos")
--technology
require("prototypes.technology.storage-technology")