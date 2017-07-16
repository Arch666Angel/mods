--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.bioprocessing then angelsmods.bioprocessing = {} end

--TRIGGER CHECKS

--LOAD PROTOTYPES
if angelsmods.bioprocessing then
	require("prototypes.bio-processing-category")

	require("prototypes.buildings.algae-farm")

	require("prototypes.items.bio-processing-algae-blue")
	require("prototypes.items.bio-processing-algae-green")
	require("prototypes.items.bio-processing-algae-brown")
	require("prototypes.items.bio-processing-algae-red")
	require("prototypes.items.bio-processing-alien")
	require("prototypes.items.bio-processing-paste")

	require("prototypes.recipes.bio-processing-algae-blue")
	require("prototypes.recipes.bio-processing-algae-green")
	require("prototypes.recipes.bio-processing-algae-brown")
	require("prototypes.recipes.bio-processing-algae-red")
	require("prototypes.recipes.bio-processing-alien")
	require("prototypes.recipes.bio-processing-entity")
	require("prototypes.recipes.bio-processing-paste")

	require("prototypes.technology.bio-processing-technology")
end



