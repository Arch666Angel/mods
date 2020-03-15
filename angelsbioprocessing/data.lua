--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.bioprocessing = angelsmods.bioprocessing or {}
angelsmods.bioprocessing.number_tint = {r = 0.2, g = 1, b = 0.2, a = 0}

--TRIGGER CHECKS
angelsmods.triggers = angelsmods.triggers or {}
angelsmods.triggers.lab_ignore_token = angelsmods.triggers.lab_ignore_token or {}
angelsmods.triggers.lab_ignore_token["lab-alien"] = true
angelsmods.triggers.lab_ignore_token["lab-module"] = true

-- set triggers for other angel mods
require("prototypes.bio-processing-triggers")

--LOAD FUNCTIONS
require("prototypes.bio-processing-functions")

--LOAD PROTOTYPES
if angelsmods.bioprocessing then
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
  --require("prototypes.recipes.bio-refugium")

  require("prototypes.technology.bio-processing-algae")
  require("prototypes.technology.bio-processing-wood-paper")
  require("prototypes.technology.bio-processing-alien")
  require("prototypes.technology.crop-farming")
  require("prototypes.technology.bio-refugium")
end
