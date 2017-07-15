if not angelsmods then angelsmods = {} end
if not angelsmods.addons then angelsmods.addons = {} end
if not angelsmods.addons.oresilos then angelsmods.addons.oresilos = {} end

--TRIGGERS
angelsmods.addons.silo_icon = settings.startup["angels-enable-icon-scaling-silos"].value

--LOAD PROTOTYPES
require("prototypes.angels-silos-category")
	
require("prototypes.buildings.ore-silos")

require("prototypes.recipes.ore-silos")

require("prototypes.technology.ore-silo-technology")