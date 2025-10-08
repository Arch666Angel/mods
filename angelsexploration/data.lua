--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.exploration = angelsmods.exploration or {}
angelsmods.functions = angelsmods.functions or {}

--TRIGGER CHECKS
angelsmods.trigger.artifacts["red"] = true
angelsmods.trigger.artifacts["yellow"] = true
angelsmods.trigger.artifacts["orange"] = true
angelsmods.trigger.artifacts["blue"] = true
angelsmods.trigger.artifacts["purple"] = true
angelsmods.trigger.artifacts["green"] = true
angelsmods.trigger.artifacts["base"] = true -- pink

--angelsmods.trigger.bio_pastes["copper"] = true
--angelsmods.trigger.bio_pastes["gold"] = true
--angelsmods.trigger.bio_pastes["tungsten"] = true
--angelsmods.trigger.bio_pastes["cobalt"] = true
--angelsmods.trigger.bio_pastes["titanium"] = true
--angelsmods.trigger.bio_pastes["zinc"] = true
--angelsmods.trigger.bio_pastes["iron"] = true

--angelsmods.trigger.smelting_products["iron"].powder = true

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
