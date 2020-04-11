--INITIALIZE
if not angelsmods then
	angelsmods = {}
end
if not angelsmods.exploration then
	angelsmods.exploration = {}
end

--TRIGGER CHECKS

--LOAD PROTOTYPES
require("prototypes.exploration-category")

--LOAD FUNCTIONS
if not angelsmods.functions then
	angelsmods.functions = {}
end
if angelsmods.functions then
	require("prototypes.entities.biter-builder")
end

--PROTOTYPES
require("prototypes.entities.ammo-cannon-turret-shells")
require("prototypes.entities.ammo-heavy-cannon-shells")
--require("prototypes.entities.ammo-rocket")
require("prototypes.entities.ammo-bio")
require("prototypes.entities.defensive-structures")

require("prototypes.entities.vehicles")

require("prototypes.entities.bio-gun")
require("prototypes.entities.cannon-turret")
require("prototypes.entities.rocket-turret")
require("prototypes.entities.bio-turret")

require("prototypes.entities.biter")

require("prototypes.recipes.ammo")
require("prototypes.recipes.vehicles")
require("prototypes.recipes.bio-gun")
require("prototypes.recipes.turret")

require("prototypes.technology.exploration-technology")
require("prototypes.technology.refined-biological")
