if angelsmods.refining then
	if angelsmods.petrochem and angelsmods.petrochem.enableacids then
		--PETROCHEM INSERT WATER RESOURCES REFINING RECIPES
		angelsmods.functions.OV.remove_output("angelsore1-chunk", "sulfur")	
		angelsmods.functions.OV.set_output("angelsore1-chunk", "water-yellow-waste", "fluid", 5)
		angelsmods.functions.OV.remove_output("angelsore2-chunk", "sulfur")	
		angelsmods.functions.OV.set_output("angelsore2-chunk", "water-greenyellow-waste", "fluid", 5)	
		angelsmods.functions.OV.remove_output("angelsore3-chunk", "sulfur")	
		angelsmods.functions.OV.set_output("angelsore3-chunk", "water-yellow-waste", "fluid", 5)	
		angelsmods.functions.OV.remove_output("angelsore4-chunk", "sulfur")	
		angelsmods.functions.OV.set_output("angelsore4-chunk", "water-green-waste", "fluid", 5)	
		angelsmods.functions.OV.remove_output("angelsore5-chunk", "sulfur")	
		angelsmods.functions.OV.set_output("angelsore5-chunk", "water-red-waste", "fluid", 5)	
		angelsmods.functions.OV.remove_output("angelsore6-chunk", "sulfur")	
		angelsmods.functions.OV.set_output("angelsore6-chunk", "water-yellow-waste", "fluid", 5)	
		
		angelsmods.functions.OV.set_output("greenyellow-waste-water-purification", "fluorite-ore", "item", 1)
	end
end