--REFINING
if angelsmods.refining then
	angelsmods.functions.OV.set_science_pack("ore-crushing", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("advanced-ore-refining-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("geode-processing-1", "datacore-processing-1", 2)	
	angelsmods.functions.OV.set_science_pack("slag-processing-1", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("ore-floatation", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("advanced-ore-refining-2", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("geode-processing-2", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("slag-processing-2", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("thermal-water-extraction", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("ore-leaching", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("advanced-ore-refining-3", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("geode-crystallization", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("ore-refining", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("advanced-ore-refining-4", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("angels-fluid-barreling", "datacore-logistic-1", 2)		
	angelsmods.functions.OV.set_science_pack("water-treatment", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("water-treatment-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("water-treatment-3", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("water-washing", "datacore-processing-1", 2)		
	angelsmods.functions.OV.set_science_pack("nodule-processing", "datacore-processing-1", 2)
end	
	
--PETROCHEM
if angelsmods.petrochem then
	angelsmods.functions.OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("basic-chemistry", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("basic-chemistry-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-coal-processing", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-coal-processing-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-coal-cracking", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-sulfur-processing-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-sulfur-processing-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nitrogen-processing-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nitrogen-processing-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nitrogen-processing-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nitrogen-processing-4", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("chlorine-processing-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("chlorine-processing-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("chlorine-processing-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("sodium-processing", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("oil-gas-extraction", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-oil-processing", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-advanced-oil-processing", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("gas-processing", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("flare-stack", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-advanced-chemistry-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-advanced-chemistry-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-advanced-chemistry-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-advanced-chemistry-4", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("gas-synthesis", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("gas-steam-cracking-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("gas-steam-cracking-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("oil-steam-cracking-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("oil-steam-cracking-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("plastic-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("plastic-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("plastic-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("resin-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("resin-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("rubber", "datacore-processing-1", 2)
end

--SMELTING
if angelsmods.smelting then
	angelsmods.functions.OV.remove_science_pack("angels-aluminium-smelting-2", "angels-science-pack-blue")
	angelsmods.functions.OV.set_science_pack("angels-aluminium-smelting-2", "angels-science-pack-orange")
	angelsmods.functions.OV.remove_science_pack("angels-copper-smelting-3", "angels-science-pack-green")
	angelsmods.functions.OV.set_science_pack("angels-copper-smelting-3", "angels-science-pack-orange")
	angelsmods.functions.OV.remove_science_pack("angels-iron-smelting-3", "angels-science-pack-green")
	angelsmods.functions.OV.set_science_pack("angels-iron-smelting-3", "angels-science-pack-orange")
	angelsmods.functions.OV.remove_science_pack("angels-silver-smelting-2", "angels-science-pack-blue")
	angelsmods.functions.OV.set_science_pack("angels-silver-smelting-2", "angels-science-pack-orange")
	angelsmods.functions.OV.remove_science_pack("angels-silicon-smelting-2", "angels-science-pack-blue")
	angelsmods.functions.OV.set_science_pack("angels-silicon-smelting-2", "angels-science-pack-orange")
	angelsmods.functions.OV.remove_science_pack("angels-zinc-smelting-2", "angels-science-pack-blue")
	angelsmods.functions.OV.set_science_pack("angels-zinc-smelting-2", "angels-science-pack-orange")

	angelsmods.functions.OV.set_science_pack("angels-aluminium-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-aluminium-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-aluminium-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-chrome-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-chrome-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-chrome-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-cobalt-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-cobalt-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-cobalt-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-copper-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-copper-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-copper-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-gold-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-gold-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-gold-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-iron-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-iron-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-iron-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-lead-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-lead-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-lead-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-manganese-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-manganese-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-manganese-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nickel-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nickel-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-nickel-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-platinum-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-platinum-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-platinum-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-silicon-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-silicon-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-silicon-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-silver-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-silver-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-silver-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-tin-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-tin-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-tin-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-titanium-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-titanium-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-titanium-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-tungsten-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-tungsten-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-tungsten-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-zinc-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-zinc-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-zinc-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-steel-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-steel-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-steel-smelting-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-solder-smelting-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-solder-smelting-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-solder-smelting-3", "datacore-processing-1", 2)

	angelsmods.functions.OV.set_science_pack("angels-metallurgy-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-metallurgy-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-metallurgy-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-metallurgy-4", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("advanced-angels-metallurgy-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("advanced-angels-metallurgy-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("advanced-angels-metallurgy-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("advanced-angels-metallurgy-4", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("ore-processing-1", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("ore-processing-2", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("ore-processing-3", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("ore-processing-4", "datacore-processing-1", 2)
end

--BIO PROCESSING
if angelsmods.bioprocessing then
	angelsmods.functions.OV.set_science_pack("bio-processing-green", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("bio-processing-brown", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("bio-processing-blue", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("bio-processing-red", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("bio-processing-paste", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("bio-processing-alien", "datacore-processing-1", 2)
	angelsmods.functions.OV.set_science_pack("big-alien-artifacts", "datacore-processing-1", 2)
end

--COMPONENTS
if angelsmods.components then
	angelsmods.functions.OV.set_science_pack("angels-vequipment-1", "datacore-enhance-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-vequipment-2", "datacore-enhance-1", 2)
end

--LOGISTICS
if angelsmods.logistics then
	angelsmods.functions.OV.set_science_pack("angels-construction-robots", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("cargo-robots", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("cargo-robots-2", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-yellow-loader", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-red-loader", "datacore-logistic-1", 2)
	angelsmods.functions.OV.set_science_pack("angels-blue-loader", "datacore-logistic-1", 2)
end

--EXPLORATION
if angelsmods.exploration then
	angelsmods.functions.OV.set_science_pack("angels-heavy-tank", "datacore-war-1", 2)
end

--ADDONS
if angelsmods.addons then
	--PRESSURE TANKS
	if angelsmods.addons.pressuretanks then
		angelsmods.functions.OV.set_science_pack("pressure-tanks", "datacore-logistic-1", 2)
	end
	--ORE SILORS
	if angelsmods.addons.oresilos then
		angelsmods.functions.OV.set_science_pack("ore-silos", "datacore-logistic-1", 2)
	end
	--WAREHOUSES
	if angelsmods.addons.warehouses then
		angelsmods.functions.OV.set_science_pack("angels-warehouses", "datacore-logistic-1", 2)
		angelsmods.functions.OV.set_science_pack("angels-logistic-warehouses", "datacore-logistic-1", 2)
	end
	--PETROTRAIN
	if angelsmods.addons.petrotrain then
		angelsmods.functions.OV.set_science_pack("angels-petro-train", "datacore-logistic-1", 2)
	end
end