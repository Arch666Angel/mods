local OV = angelsmods.functions.OV

if angelsmods.refining then
	--CREATE BARRELS
	angelsmods.functions.make_void("thermal-water", "water")
	angelsmods.functions.make_void("mineral-sludge", "water")
	angelsmods.functions.make_void("slag-slurry", "water")
	angelsmods.functions.make_void("crystal-slurry", "water")
	angelsmods.functions.make_void("crystal-seedling", "water")
	angelsmods.functions.make_void("crystal-matrix", "water")
	
	angelsmods.functions.make_void("water", "water")
	angelsmods.functions.make_void("water-purified", "water")	
	angelsmods.functions.make_void("water-yellow-waste", "water")
	angelsmods.functions.make_void("water-saline", "water")	
	angelsmods.functions.make_void("water-mineralized", "water")
	
	if angelsmods.petrochem then
		angelsmods.functions.make_void("water-red-waste", "water")	
		angelsmods.functions.make_void("water-green-waste", "water")	
		angelsmods.functions.make_void("water-greenyellow-waste", "water")
	end	
	
	if angelsmods.smelting then
		angelsmods.functions.make_void("water-viscous-mud", "water")
		angelsmods.functions.make_void("water-heavy-mud", "water")
		angelsmods.functions.make_void("water-concentrated-mud", "water")
		angelsmods.functions.make_void("water-light-mud", "water")
		angelsmods.functions.make_void("water-thin-mud", "water")
	end
	
	if bobmods and bobmods.plates then
		angelsmods.functions.make_void("lithia-water", "water")
	end
	
	--ADD THE BARRELING PUMP
	angelsmods.functions.OV.add_unlock("fluid-handling", "barreling-pump")
	
	--MOVE EMPTY BARREL
	data.raw["item-subgroup"]["fill-barrel"].group = "angels-fluid-control"
	data.raw["item-subgroup"]["empty-barrel"].group = "angels-fluid-control"
	data.raw["item"]["empty-barrel"].subgroup = "angels-fluid-control"
	data.raw["item"]["empty-barrel"].order = "h"
	--angelsmods.functions.OV.set_special_recipe_override("empty-barrel", { subgroup = "angels-fluid-control", order = "h" })
	
	--MOVE STORAGE TANK
	data.raw["item"]["storage-tank"].subgroup = "angels-fluid-tanks"
	data.raw["item"]["storage-tank"].order = "a"
	--angelsmods.functions.OV.set_special_recipe_override("storage-tank", { subgroup = "angels-fluid-tanks", order = "a" })
	
	--MODIFY BARRELING RECIPES
	angelsmods.functions.modify_barreling_recipes()
end