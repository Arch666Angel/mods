--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.exploration = angelsmods.exploration or {}
angelsmods.functions = angelsmods.functions or {}

--TRIGGER CHECKS

--LOAD PROTOTYPES
require("prototypes.exploration-category")
require("prototypes.exploration-debug")

--LOAD FUNCTIONS
require("prototypes.entities.biter-builder")
require("prototypes.entities.gathering-turret-builder")

--PROTOTYPES
require("prototypes.entities.ammo-cannon-turret-shells")
require("prototypes.entities.ammo-heavy-cannon-shells")
--require("prototypes.entities.ammo-rocket")
require("prototypes.entities.ammo-bio")
require("prototypes.entities.defensive-structures")

require("prototypes.entities.vehicles")
--require("prototypes.entities.crawlertron")

require("prototypes.entities.bio-gun")
require("prototypes.entities.cannon-turret")
require("prototypes.entities.rocket-turret")
require("prototypes.entities.bio-turret")
require("prototypes.entities.gathering-turret")

require("prototypes.entities.biter")

require("prototypes.recipes.ammo")
require("prototypes.recipes.vehicles")
require("prototypes.recipes.bio-gun")
require("prototypes.recipes.turret")

require("prototypes.technology.exploration-technology")
require("prototypes.technology.refined-biological")

require("prototypes.generation.map-gen-presets")
