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
	require("prototypes.buildings.gardens")
	require("prototypes.buildings.trees")

	require("prototypes.items.bio-processing-algae-blue")
	require("prototypes.items.bio-processing-algae-green")
	require("prototypes.items.bio-processing-algae-brown")
	require("prototypes.items.bio-processing-algae-red")
	require("prototypes.items.bio-processing-alien")
	require("prototypes.items.bio-processing-paste")
	require("prototypes.items.crop-farming")
	require("prototypes.items.crop-farming-processing")

	require("prototypes.recipes.bio-processing-algae-blue")
	require("prototypes.recipes.bio-processing-algae-green")
	require("prototypes.recipes.bio-processing-algae-brown")
	require("prototypes.recipes.bio-processing-algae-red")
	require("prototypes.recipes.bio-processing-alien")
	require("prototypes.recipes.bio-processing-entity")
	require("prototypes.recipes.bio-processing-paste")
	require("prototypes.recipes.crop-farming")
	require("prototypes.recipes.crop-farming-processing")

	require("prototypes.technology.bio-processing-technology")
end



