if angelsmods.refining then
	--CREATE BARRELS
	angelsmods.functions.make_barrel("thermal-water", "refining", "a", "water")
	angelsmods.functions.make_barrel("mineral-sludge", "refining", "a", "water")
	angelsmods.functions.make_barrel("slag-slurry", "refining", "a", "water")
	angelsmods.functions.make_barrel("crystal-slurry", "refining", "a", "water")
	angelsmods.functions.make_barrel("crystal-seedling", "refining", "a", "water")
	angelsmods.functions.make_barrel("crystal-matrix", "refining", "a", "water")

	if angelsmods.smelting then
		angelsmods.functions.make_barrel("nodule-slurry", "refining", "a", "water")
		angelsmods.functions.make_barrel("nodule-concentrated-slurry", "refining", "a", "water")
		angelsmods.functions.make_barrel("nodule-sludge", "refining", "a", "water")
	end
	
	angelsmods.functions.make_barrel("water", "angel-water", "b", "water")
	angelsmods.functions.make_barrel("water-purified", "angel-water", "b", "water")	
	angelsmods.functions.make_barrel("water-yellow-waste", "angel-water", "b", "water")

	if angelsmods.petrochem then
		angelsmods.functions.make_barrel("water-red-waste", "angel-water", "b", "water")	
		angelsmods.functions.make_barrel("water-green-waste", "angel-water", "b", "water")	
		angelsmods.functions.make_barrel("water-greenyellow-waste", "angel-water", "b", "water")
	end
	
	angelsmods.functions.make_barrel("water-saline", "angel-water", "b", "water")	
	angelsmods.functions.make_barrel("water-mineralized", "angel-water", "b", "water")
	
	if angelsmods.smelting then
		angelsmods.functions.make_barrel("water-muddy", "angel-water", "b", "water")
		angelsmods.functions.make_barrel("water-concentrated-muddy", "angel-water", "b", "water")
	end
	
	if bobmods and bobmods.plates then
		angelsmods.functions.make_barrel("lithia-water", "bob-fluid", "z", "water")
	end
	
	--ADD BARRELING CRAFTING CATEGORY
	if data.raw["assembling-machine"]["heavy-pump"] then
		table.insert(data.raw["assembling-machine"]["heavy-pump"].crafting_categories,"angels-barreling")
	else
		table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories,"angels-barreling")
	end	
end