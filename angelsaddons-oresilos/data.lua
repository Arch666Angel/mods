angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.oresilos = angelsmods.addons.oresilos or {}

--TRIGGERS
angelsmods.addons.silo_icon = settings.startup["angels-enable-icon-scaling-silos"].value

--LOAD PROTOTYPES
require("prototypes.angels-silos-category")
require("prototypes.buildings.ore-silos")
require("prototypes.recipes.ore-silos")
require("prototypes.technology.ore-silo-technology")
