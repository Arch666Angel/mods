local OV = angelsmods.functions.OV

if not mods["bobelectronics"] then
	--disable empty resin technologies
	OV.disable_technology({"resin-1", "resin-2", "resin-3"})
	--disable resins and remove from cement-processing-2
	OV.disable_technology("resins")
	OV.remove_prereq("angels-stone-smelting-2","resins")
	angelsmods.functions.disable_barreling_recipes("liquid-resin")	
	----
	--rubbers
	OV.disable_technology({"rubber", "rubbers"})
	angelsmods.functions.disable_barreling_recipes("liquid-rubber")
end