if not angelsmods then angelsmods = {} end
if not angelsmods.addons then angelsmods.addons = {} end
if not angelsmods.addons.warehouses then angelsmods.addons.warehouses = {} end

--TRIGGERS
angelsmods.addons.warehouse_icon = settings.startup["angels-enable-icon-scaling-warehouses"].value

--LOAD PROTOTYPES
require("prototypes.angels-warehouses-category")
	
require("prototypes.buildings.warehouses")

require("prototypes.recipes.warehouses")

require("prototypes.technology.warehouses-technology")