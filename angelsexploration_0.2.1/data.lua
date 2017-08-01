--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.exploration then angelsmods.exploration = {} end

--TRIGGER CHECKS

--LOAD PROTOTYPES	
require("prototypes.exploration-category")

--VEHICLES
require("prototypes.entities.ammo-projectiles")
require("prototypes.entities.vehicles")

require("prototypes.entities.cannon-turret")
require("prototypes.entities.rocket-turret")

require("prototypes.entities.biter-functions")
require("prototypes.entities.biter")


require("prototypes.recipes.vehicles-recipes")

require("prototypes.technology.exploration-technology")