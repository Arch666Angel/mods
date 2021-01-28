--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.bioprocessing = angelsmods.bioprocessing or {}
angelsmods.bioprocessing.number_tint = {r = 0.2, g = 1, b = 0.2, a = 1}

--TRIGGER CHECKS
angelsmods.triggers = angelsmods.triggers or {}
angelsmods.triggers.lab_ignore_token = angelsmods.triggers.lab_ignore_token or {}
angelsmods.triggers.lab_ignore_token["lab-alien"] = true
angelsmods.triggers.lab_ignore_token["lab-module"] = true

angelsmods.triggers.artifacts = angelsmods.triggers.artifacts or {}
if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-blue"] then
  angelsmods.triggers.artifacts["red"] = true
  angelsmods.triggers.artifacts["yellow"] = true
  angelsmods.triggers.artifacts["orange"] = true
  angelsmods.triggers.artifacts["blue"] = true
  angelsmods.triggers.artifacts["purple"] = true
  angelsmods.triggers.artifacts["green"] = true
  angelsmods.triggers.artifacts["base"] = true -- pink
end

angelsmods.triggers.bio_pastes = angelsmods.triggers.bio_pastes or {}
angelsmods.triggers.bio_pastes["cellulose"] = true -- required for petri dish
if angelsmods.triggers.artifacts["red"] then
  angelsmods.triggers.bio_pastes["copper"] = true
end
if angelsmods.triggers.artifacts["yellow"] then
  angelsmods.triggers.bio_pastes["gold"] = true
end
if angelsmods.triggers.artifacts["orange"] then
  angelsmods.triggers.bio_pastes["tungsten"] = true
end
if angelsmods.triggers.artifacts["blue"] then
  angelsmods.triggers.bio_pastes["cobalt"] = true
end
if angelsmods.triggers.artifacts["purple"] then
  angelsmods.triggers.bio_pastes["titanium"] = true
end
if angelsmods.triggers.artifacts["green"] then
  angelsmods.triggers.bio_pastes["zinc"] = true
end
if angelsmods.triggers.artifacts["base"] then
  angelsmods.triggers.bio_pastes["iron"] = true
end
--angelsmods.triggers.bio_pastes["silver"] = true --unused

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
require("prototypes.items.bio-refugium-hogger")
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
require("prototypes.recipes.bio-refugium-hogger")
require("prototypes.recipes.bio-module")

require("prototypes.technology.bio-processing-algae")
require("prototypes.technology.bio-processing-wood-paper")
require("prototypes.technology.bio-processing-alien")
require("prototypes.technology.crop-farming")
require("prototypes.technology.bio-refugium")
require("prototypes.technology.bio-module")
