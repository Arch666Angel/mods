angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.warehouses = angelsmods.addons.warehouses or {}

--TRIGGERS
angelsmods.addons.warehouse_icon = settings.startup["angels-enable-icon-scaling-warehouses"].value

--LOAD PROTOTYPES
require("prototypes.angels-warehouses-category")
require("prototypes.buildings.warehouses")
require("prototypes.recipes.warehouses")
require("prototypes.technology.warehouses-technology")
