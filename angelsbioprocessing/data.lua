--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.bioprocessing = angelsmods.bioprocessing or {}
angelsmods.bioprocessing.number_tint = { r = 0.2, g = 1, b = 0.2, a = 1 }

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}
--BIO TOKEN
angelsmods.trigger.lab_ignore_token = angelsmods.trigger.lab_ignore_token or {}
angelsmods.trigger.lab_ignore_token["bob-lab-alien"] = true
--ARTIFACTS
angelsmods.trigger.artifacts = angelsmods.trigger.artifacts or {}
if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-blue"] then
  angelsmods.trigger.artifacts["red"] = true
  angelsmods.trigger.artifacts["yellow"] = true
  angelsmods.trigger.artifacts["orange"] = true
  angelsmods.trigger.artifacts["blue"] = true
  angelsmods.trigger.artifacts["purple"] = true
  angelsmods.trigger.artifacts["green"] = true
  angelsmods.trigger.artifacts["base"] = true -- pink
  bobmods.enemies.small_alien_artifacts = true
end
--BIO PASTES
angelsmods.trigger.bio_pastes = angelsmods.trigger.bio_pastes or {}
angelsmods.trigger.bio_pastes["cellulose"] = true -- required for petri dish

if angelsmods.trigger.artifacts["red"] then
  angelsmods.trigger.bio_pastes["copper"] = true
end
if angelsmods.trigger.artifacts["yellow"] then
  angelsmods.trigger.bio_pastes["gold"] = true
end
if angelsmods.trigger.artifacts["orange"] then
  angelsmods.trigger.bio_pastes["tungsten"] = true
end
if angelsmods.trigger.artifacts["blue"] then
  angelsmods.trigger.bio_pastes["cobalt"] = true
end
if angelsmods.trigger.artifacts["purple"] then
  angelsmods.trigger.bio_pastes["titanium"] = true
end
if angelsmods.trigger.artifacts["green"] then
  angelsmods.trigger.bio_pastes["zinc"] = true
end
if angelsmods.trigger.artifacts["base"] then
  angelsmods.trigger.bio_pastes["iron"] = true
end
--angelsmods.trigger.bio_pastes["silver"] = true --unused

--BIO ALTERNATIVES FOR PETRO
angelsmods.trigger.bio_rubber = angelsmods.trigger.bio_rubber or angelsmods.trigger.rubber or false
angelsmods.trigger.bio_resin = angelsmods.trigger.bio_resin or angelsmods.trigger.resin or false
angelsmods.trigger.bio_plastic = angelsmods.trigger.bio_plastic
  or (angelsmods.trigger.plastic and (angelsmods.trigger.bio_resin or angelsmods.trigger.bio_rubber))
  or false

angelsmods.trigger.paper = mods["bobelectronics"] and true or false
if angelsmods.trigger.paper then
  angelsmods.trigger.water_red_waste = true
  angelsmods.trigger.early_chemical_furnace = true
end

-- set triggers for other angel mods
require("prototypes.bio-processing-triggers")

--LOAD FUNCTIONS
require("prototypes.bio-processing-functions")

--LOAD PROTOTYPES
require("prototypes.bio-processing-category")

require("prototypes.buildings.algae-farm")
require("prototypes.buildings.crop-farm")
require("prototypes.buildings.composter")
require("prototypes.buildings.seed-extractor")
require("prototypes.buildings.bio-press")
require("prototypes.buildings.bio-processor")
require("prototypes.buildings.nutrient-extractor")
require("prototypes.buildings.arboretum")
require("prototypes.buildings.refugium")
require("prototypes.buildings.hatchery")
require("prototypes.buildings.butchery")
require("prototypes.buildings.gardens")
require("prototypes.buildings.trees")
require("prototypes.buildings.bio-tile")
--require("prototypes.buildings.puffer-spawner")
require("prototypes.buildings.puffer-nest")
require("prototypes.buildings.alien-fish")

require("prototypes.items.bio-processing-algae")
require("prototypes.items.bio-processing-wood-paper")
require("prototypes.items.bio-processing-alien")
require("prototypes.items.bio-processing-alien-crystal")
require("prototypes.items.bio-processing-paste")
require("prototypes.items.crop-farming-vegetables")
require("prototypes.items.crop-farming-processing")
require("prototypes.items.bio-refugium")
require("prototypes.items.bio-refugium-fish")
require("prototypes.items.bio-refugium-puffer")
require("prototypes.items.bio-refugium-biter")
require("prototypes.items.bio-module")

require("prototypes.recipes.bio-processing-algae")
require("prototypes.recipes.bio-processing-wood")
require("prototypes.recipes.bio-processing-paper")
require("prototypes.recipes.bio-processing-alien")
require("prototypes.recipes.bio-processing-alien-crystal")
require("prototypes.recipes.bio-processing-entity")
require("prototypes.recipes.bio-processing-paste")
require("prototypes.recipes.crop-farming-gardens")
require("prototypes.recipes.crop-farming-vegetables")
require("prototypes.recipes.crop-farming-processing-vegetables")
require("prototypes.recipes.crop-farming-processing-nutrients")
require("prototypes.recipes.crop-farming-processing-vegetable-oil")
require("prototypes.recipes.crop-farming-processing-fermentation")
require("prototypes.recipes.bio-refugium-fish")
require("prototypes.recipes.bio-refugium-puffer")
require("prototypes.recipes.bio-refugium-biter")
require("prototypes.recipes.bio-module")

require("prototypes.technology.bio-processing-algae")
require("prototypes.technology.bio-processing-wood-paper")
require("prototypes.technology.bio-processing-alien")
require("prototypes.technology.bio-processing-artifacts")
require("prototypes.technology.crop-farming")
require("prototypes.technology.bio-refugium")
require("prototypes.technology.bio-module")
