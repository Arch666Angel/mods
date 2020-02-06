local OV = angelsmods.functions.OV

--REFINING
if angelsmods.refining then
	OV.remove_science_pack("water-treatment-3", "angels-science-pack-green")
	OV.set_science_pack("water-treatment-3", "angels-science-pack-orange")
	OV.remove_science_pack("water-treatment", "angels-science-pack-red")
	OV.set_science_pack("water-treatment", "angels-science-pack-grey")
	OV.remove_science_pack("advanced-ore-refining-4", "angels-science-pack-blue")
	OV.set_science_pack("advanced-ore-refining-4", "angels-science-pack-yellow")
	OV.remove_science_pack("ore-leaching", "angels-science-pack-blue")
	OV.set_science_pack("ore-leaching", "angels-science-pack-orange")
	OV.remove_science_pack("geode-processing-2", "angels-science-pack-green")
	OV.set_science_pack("geode-processing-2", "angels-science-pack-orange")
	OV.remove_science_pack("advanced-ore-refining-2", "angels-science-pack-green")
	OV.set_science_pack("advanced-ore-refining-2", "angels-science-pack-orange")

	OV.set_science_pack("water-treatment", "datacore-basic", 2)
	OV.set_science_pack("water-treatment-2", "datacore-processing-1", 2)
	OV.set_science_pack("water-treatment-3", "datacore-processing-1", 2)
	OV.set_science_pack("water-treatment-4", "datacore-processing-1", 2)
	OV.set_science_pack("water-washing-1", "datacore-processing-1", 2)
	OV.set_science_pack("water-washing-2", "datacore-processing-1", 2)
	--OV.set_science_pack("nodule-processing", "datacore-processing-1", 2) --does not exist any more
end

--PETROCHEM
if angelsmods.petrochem then
	OV.remove_science_pack("angels-advanced-chemistry-2", "angels-science-pack-green")
	OV.set_science_pack("angels-advanced-chemistry-2", "angels-science-pack-orange")
	OV.remove_science_pack("plastic-1", "angels-science-pack-green")
	OV.set_science_pack("plastic-1", "angels-science-pack-orange")
	OV.remove_science_pack("resin-2", "angels-science-pack-blue")
	OV.set_science_pack("resin-2", "angels-science-pack-orange")
	OV.remove_science_pack("rubber", "angels-science-pack-green")
	OV.set_science_pack("rubber", "angels-science-pack-orange")
	OV.remove_science_pack("rocket-booster-1", "angels-science-pack-green")
	OV.set_science_pack("rocket-booster-1", "angels-science-pack-orange")
	OV.remove_science_pack("rocket-explosives-1", "angels-science-pack-green")
	OV.set_science_pack("rocket-explosives-1", "angels-science-pack-orange")

	OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
	OV.set_science_pack("angels-coal-cracking", "datacore-processing-1", 2)
	OV.set_science_pack("oil-gas-extraction", "datacore-processing-1", 2)
	OV.set_science_pack("angels-flare-stack", "datacore-processing-1", 2)
	OV.set_science_pack("gas-synthesis", "datacore-processing-1", 2)
	OV.set_science_pack("angels-electric-boiler", "datacore-energy-1", 2)
	OV.set_science_pack("resin-1", "datacore-processing-1", 2)
	OV.set_science_pack("resin-2", "datacore-processing-1", 2)
	OV.set_science_pack("resin-3", "datacore-processing-1", 2)
	OV.set_science_pack("rubber", "datacore-processing-1", 2)
	OV.set_science_pack("angels-rocket-fuel", "datacore-processing-2", 2)
	OV.remove_science_pack("rocket-booster-1", "datacore-war-1")
	OV.set_science_pack("rocket-booster-1", "datacore-processing-1", 2)
	OV.remove_science_pack("rocket-booster-2", "datacore-war-1")
	OV.set_science_pack("rocket-booster-2", "datacore-processing-2", 2)
	OV.set_science_pack("rocket-explosives-1", "datacore-processing-1", 2)
	OV.set_science_pack("rocket-explosives-2", "datacore-processing-2", 2)
	OV.remove_science_pack("angels-rocket-fuel", "datacore-war-1")
	OV.remove_science_pack("rocket-fuel", "datacore-war-1")
	OV.set_science_pack("rocket-fuel", "datacore-enhance-1", 2)
end

--SMELTING

--BIO PROCESSING
if angelsmods.bioprocessing then
	OV.remove_science_pack("bio-processing-brown", "angels-science-pack-red")
	OV.set_science_pack("bio-processing-brown", "angels-science-pack-grey")
	OV.remove_science_pack("bio-wood-processing-3", "angels-science-pack-green")
	OV.set_science_pack("bio-wood-processing-3", "angels-science-pack-orange")
	OV.remove_science_pack("bio-paper-1", "angels-science-pack-red")
	OV.set_science_pack("bio-paper-1", "angels-science-pack-grey")
	OV.remove_science_pack("bio-temperate-farming", "angels-science-pack-red")
	OV.set_science_pack("bio-temperate-farming", "angels-science-pack-red", 4)
	OV.remove_science_pack("bio-fermentation", "angels-science-pack-green")
	OV.set_science_pack("bio-fermentation", "angels-science-pack-red")
	OV.remove_science_pack("bio-arboretum-temperate-1", "angels-science-pack-green")
	OV.set_science_pack("bio-arboretum-temperate-1", "angels-science-pack-red")
end

--COMPONENTS
if angelsmods.industries then
	OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
	OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
	OV.set_science_pack("angels-yellow-loader", "datacore-logistic-1", 2)
	OV.set_science_pack("angels-red-loader", "datacore-logistic-1", 2)
	OV.set_science_pack("angels-blue-loader", "datacore-logistic-1", 2)
end

--EXPLORATION
if angelsmods.exploration then
	OV.set_science_pack("angels-heavy-tank", "datacore-war-1", 2)
end

--ADDONS
if angelsmods.addons then
	--PRESSURE TANKS
	if angelsmods.addons.pressuretanks then
		OV.set_science_pack("pressure-tanks", "datacore-logistic-1", 2)
	end
	--ORE SILORS
	if angelsmods.addons.oresilos then
		OV.set_science_pack("ore-silos", "datacore-logistic-1", 2)
	end
	--WAREHOUSES
	if angelsmods.addons.warehouses then
		OV.set_science_pack("angels-warehouses", "datacore-logistic-1", 2)
		OV.set_science_pack("angels-logistic-warehouses", "datacore-logistic-1", 2)
	end
	--PETROTRAIN
	if angelsmods.addons.petrotrain then
		OV.set_science_pack("angels-petro-train", "datacore-logistic-1", 2)
	end
end

-- tech tier unlock fixes
if angelsmods.industries and angelsmods.industries.tech and not mods['bobplates'] then
	OV.add_unlock("angels-tin-smelting-1", "basic-tinned-copper-wire")
	OV.add_unlock("angels-silver-smelting-1", "basic-silvered-copper-wire")
	OV.add_unlock("angels-silicon-smelting-1","angels-silicon-wafer")
	OV.add_unlock("angels-glass-smelting-2","angels-coil-glass-fiber")
	OV.add_unlock("angels-gold-smelting-1","angels-wire-gold")
end
