--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.bioprocessing then angelsmods.bioprocessing = {} end

--TRIGGER CHECKS

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
	require("prototypes.buildings.aliens")

	require("prototypes.items.bio-processing-algae")
	require("prototypes.items.bio-processing-wood-paper")
	require("prototypes.items.bio-processing-alien")
	require("prototypes.items.bio-processing-paste")
	require("prototypes.items.crop-farming")
	require("prototypes.items.crop-farming-processing")
	require("prototypes.items.bio-refugium")

	require("prototypes.recipes.bio-processing-algae")
	require("prototypes.recipes.bio-processing-wood-paper")
	require("prototypes.recipes.bio-processing-alien")
	require("prototypes.recipes.bio-processing-entity")
	require("prototypes.recipes.bio-processing-paste")
	require("prototypes.recipes.crop-farming")
	require("prototypes.recipes.crop-farming-processing")
	require("prototypes.recipes.bio-refugium")

	require("prototypes.technology.bio-processing-technology")
end
