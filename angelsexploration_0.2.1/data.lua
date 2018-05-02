--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.exploration then angelsmods.exploration = {} end

--TRIGGER CHECKS

--LOAD PROTOTYPES
require("prototypes.exploration-category")

--LOAD FUNCTIONS
if not angelsmods.functions then angelsmods.functions = {} end
if angelsmods.functions then
	require("prototypes.entities.biter-builder")
end

--PROTOTYPES
require("prototypes.entities.ammo-projectiles")
require("prototypes.entities.guns")

require("prototypes.entities.vehicles")

require("prototypes.entities.cannon-turret")
require("prototypes.entities.rocket-turret")

require("prototypes.entities.biter-definitions")
require("prototypes.entities.biter")

require("prototypes.recipes.vehicles-recipes")

require("prototypes.technology.exploration-technology")
