--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.logistics = angelsmods.logistics or {}

require("prototypes.categories")
--ENTITIES
require("prototypes.buildings.angels-logistics-roboport")
require("prototypes.buildings.angels-logistics-charging-station")
require("prototypes.buildings.angels-logistics-zone-expander")
require("prototypes.buildings.angels-logistics-construction-zone-expander")
require("prototypes.buildings.angels-logistics-relay-station")
require("prototypes.buildings.angels-logistics-big-chest")
require("prototypes.buildings.angels-logistics-robot-construction")
require("prototypes.buildings.angels-logistics-robot-cargo")
--RECIPES
require("prototypes.recipes.logistics-entity")
--TECHS
require("prototypes.technology.logistics-technology")
