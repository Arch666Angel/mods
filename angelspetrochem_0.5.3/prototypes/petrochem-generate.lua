if angelsmods.refining then
    --CREATE SPLITTER
    angelsmods.functions.make_splitter()
   
    --ADD UNLOCK TO BARRELS
    angelsmods.functions.OV.add_prereq("fluid-barreling", "angels-fluid-control")
	
	--CREATE CONVERTER
	angelsmods.functions.make_converter("sulfuric-acid", "liquid-sulfuric-acid")
	angelsmods.functions.disable_barreling_recipes("sulfuric-acid")
	angelsmods.functions.make_converter("heavy-oil", "liquid-naphtha")
	angelsmods.functions.disable_barreling_recipes("heavy-oil")
	angelsmods.functions.make_converter("light-oil", "liquid-fuel-oil")
	angelsmods.functions.disable_barreling_recipes("light-oil")
	angelsmods.functions.make_converter("petroleum-gas", "gas-methane")
	angelsmods.functions.disable_barreling_recipes("petroleum-gas")
	if bobmods and bobmods.plates then
		angelsmods.functions.make_converter("chlorine", "gas-chlorine")
		angelsmods.functions.disable_barreling_recipes("chlorine")
		angelsmods.functions.make_converter("oxygen", "gas-oxygen")
		angelsmods.functions.disable_barreling_recipes("oxygen")
		angelsmods.functions.make_converter("hydrogen", "gas-hydrogen")
		angelsmods.functions.disable_barreling_recipes("hydrogen")
		angelsmods.functions.make_converter("hydrogen-chloride", "gas-hydrogen-chloride")
		angelsmods.functions.disable_barreling_recipes("hydrogen-chloride")
		angelsmods.functions.make_converter("nitrogen", "gas-nitrogen")
		angelsmods.functions.disable_barreling_recipes("nitrogen")
		angelsmods.functions.make_converter("sulfur-dioxide", "gas-sulfur-dioxide")
		angelsmods.functions.disable_barreling_recipes("sulfur-dioxide")
		angelsmods.functions.make_converter("nitric-acid", "liquid-nitric-acid")
		angelsmods.functions.disable_barreling_recipes("nitric-acid")
		angelsmods.functions.make_converter("nitrogen-dioxide", "gas-nitrogen-dioxide")
		angelsmods.functions.disable_barreling_recipes("nitrogen-dioxide")
		angelsmods.functions.make_converter("liquid-air", "gas-compressed-air")
		angelsmods.functions.disable_barreling_recipes("liquid-air")
	end
		
	--CREATE BARRELS
	angelsmods.functions.make_barrel("gas-compressed-air", "basic-chemistry", "c", "chemical")
	angelsmods.functions.make_barrel("gas-hydrogen", "basic-chemistry", "c", "chemical")
	angelsmods.functions.make_barrel("gas-oxygen", "basic-chemistry", "c", "chemical")
	angelsmods.functions.make_barrel("gas-carbon-monoxide", "basic-chemistry", "c", "chemical")
	angelsmods.functions.make_barrel("gas-carbon-dioxide", "basic-chemistry", "c", "chemical")	
	angelsmods.functions.make_barrel("liquid-hydrofluoric-acid", "basic-chemistry", "c", "chemical")	
	
	angelsmods.functions.make_barrel("gas-chlorine", "chlorine", "d", "chemical")
	angelsmods.functions.make_barrel("gas-hydrogen-chloride", "chlorine", "d", "chemical")
	angelsmods.functions.make_barrel("liquid-hydrochloric-acid", "chlorine", "d", "chemical")
	angelsmods.functions.make_barrel("gas-allylchlorid", "chlorine", "d", "chemical")
	angelsmods.functions.make_barrel("gas-epichlorhydrin", "chlorine", "d", "chemical")
	angelsmods.functions.make_barrel("gas-chlor-methane", "chlorine", "d", "chemical")
	angelsmods.functions.make_barrel("liquid-perchloric-acid", "chlorine", "d", "chemical")
	if data.raw.fluid["ferric-chloride-solution"] then
		angelsmods.functions.make_barrel("ferric-chloride-solution", "bob-fluid", "z", "chemical")	
	end
	
	angelsmods.functions.make_barrel("gas-nitrogen", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-ammonia", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-nitrogen-dioxide", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-ammonium-chloride", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-urea", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-melamine", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("liquid-nitric-acid", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-monochloramine", "nitrogen", "e", "chemical")
	angelsmods.functions.make_barrel("gas-hydrazine", "nitrogen", "e", "chemical")
	
	angelsmods.functions.make_barrel("gas-methylamine", "nitrogen-2", "f", "chemical")
	angelsmods.functions.make_barrel("gas-dimethylamine", "nitrogen-2", "f", "chemical")
	angelsmods.functions.make_barrel("gas-dimethylhydrazine", "nitrogen-2", "f", "chemical")
	
	angelsmods.functions.make_barrel("gas-natural-1", "raws", "g", "chemical")
	angelsmods.functions.make_barrel("liquid-multi-phase-oil", "raws", "g", "chemical")
	angelsmods.functions.make_barrel("crude-oil", "raws", "g", "chemical")
	angelsmods.functions.make_barrel("gas-raw-1", "raws", "g", "chemical")
	angelsmods.functions.make_barrel("liquid-condensates", "raws", "g", "chemical")
	angelsmods.functions.make_barrel("liquid-ngl", "raws", "g", "chemical")
	angelsmods.functions.make_barrel("gas-residual", "raws", "g", "chemical")
	
	angelsmods.functions.make_barrel("gas-methane", "carbons", "h", "chemical")
	angelsmods.functions.make_barrel("gas-ethane", "carbons", "h", "chemical")
	angelsmods.functions.make_barrel("gas-butane", "carbons", "h", "chemical")
	angelsmods.functions.make_barrel("gas-propene", "carbons", "h", "chemical")
	angelsmods.functions.make_barrel("liquid-naphtha", "carbons", "h", "chemical")
	angelsmods.functions.make_barrel("liquid-mineral-oil", "carbons", "h", "chemical")
	angelsmods.functions.make_barrel("liquid-fuel-oil", "carbons", "h", "chemical")	
	angelsmods.functions.make_barrel("gas-methanol", "carbons", "h", "chemical")	
	angelsmods.functions.make_barrel("gas-ethylene", "carbons", "h", "chemical")	
	angelsmods.functions.make_barrel("gas-benzene", "carbons", "h", "chemical")	

	angelsmods.functions.make_barrel("gas-synthesis", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-butadiene", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-phenol", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-ethylbenzene", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-styrene", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-formaldehyde", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-polyethylene", "carbons-2", "i", "chemical")	
	angelsmods.functions.make_barrel("gas-glycerol", "carbons-2", "i", "chemical")
	angelsmods.functions.make_barrel("lubricant", "carbons-2", "i", "chemical")		
	
	angelsmods.functions.make_barrel("gas-acid", "sulfur", "j", "chemical")
	angelsmods.functions.make_barrel("gas-hydrogen-sulfide", "sulfur", "j", "chemical")
	angelsmods.functions.make_barrel("gas-sulfur-dioxide", "sulfur", "j", "chemical")
	angelsmods.functions.make_barrel("liquid-sulfuric-acid", "sulfur", "j", "chemical")
end