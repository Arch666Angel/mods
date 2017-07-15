--PREPARATIONS
	angelsmods.functions.OV.remove_input("gas-sulfur-dioxide-calcium-sulfate", "angels-void")
	
	--angelsmods.functions.OV.disable_recipe({ "rocket-booster-1", "rocket-booster-2", "gas-ammonium-nitrate", "gas-ammonium-perchlorate" })
	--angelsmods.functions.OV.disable_technology({ "angels-explosives" })
	--angelsmods.functions.OV.disable_recipe({ "liquid-toluene-from-naphtha", "liquid-toluene-from-benzene" })
	
--OVERRIDE FOR BASE
	data.raw["resource"]["crude-oil"]["minable"].results={{type = "fluid", name = "liquid-multi-phase-oil", amount_min = 10, amount_max = 10, probability = 1}}
    table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories,"liquifying")
	
	--ROCKET FUEL
	angelsmods.functions.OV.remove_input("rocket-fuel", "solid-fuel")
	angelsmods.functions.OV.set_input("rocket-fuel", "rocket-fuel-capsule", "item", 10)
	angelsmods.functions.OV.set_input("rocket-fuel", "rocket-oxidizer-capsule", "item", 10)
	angelsmods.functions.OV.set_special_recipe_override("rocket-fuel", { category = "chemistry" })
	angelsmods.functions.OV.add_prereq("rocket-silo", "angels-rocket-fuel")
	
--OVERRIDE FOR ANGELS REFINING
if angelsmods.refining then	
	--MOVE LIQUIFIER AND ADD CATEGORY
	table.insert(data.raw["assembling-machine"]["advanced-chemical-plant"].crafting_categories,"liquifying")
	table.insert(data.raw["assembling-machine"]["advanced-chemical-plant-2"].crafting_categories,"liquifying")
	angelsmods.functions.OV.set_special_recipe_override("carbon-separation-1", { category = "liquifying" })
	angelsmods.functions.OV.set_special_recipe_override("carbon-separation-2", { category = "liquifying" })

	angelsmods.functions.OV.remove_unlock("slag-processing-1", "liquifier")
	angelsmods.functions.OV.add_unlock("basic-chemistry", "liquifier")
	angelsmods.functions.OV.remove_unlock("slag-processing-2", "liquifier-2")
	angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-1", "liquifier-2")
	angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-2", "liquifier-3")
	angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-3", "liquifier-4")
	angelsmods.functions.OV.set_special_recipe_override("liquifier", { subgroup = "petrochem-electrolyser", order = "e" })
	angelsmods.functions.OV.set_special_recipe_override("liquifier-2", { subgroup = "petrochem-electrolyser", order = "f" })
	angelsmods.functions.OV.set_special_recipe_override("liquifier-3", { subgroup = "petrochem-electrolyser", order = "g" })
	angelsmods.functions.OV.set_special_recipe_override("liquifier-4", { subgroup = "petrochem-electrolyser", order = "h" })
end	
if not angelsmods.smelting then
	angelsmods.functions.OV.disable_recipe({ "solid-sodium-cyanide", "solid-sodium-carbonate", "solid-sodium-sulfate-separation" })
end

require("prototypes.recipes.petrochem-entity-angels")
if angelsmods.components then
		data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
		data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"
	else
	if bobmods and bobmods.plates then
		--require("prototypes.recipes.petrochem-entity-bob")

		angelsmods.functions.OV.set_input("catalyst-metal-red", "iron-ore", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-red", "copper-ore", "item", 1)		
		angelsmods.functions.OV.set_input("catalyst-metal-green", "bauxite-ore", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-green", "silver-ore", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-blue", "rutile-ore", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-blue", "cobalt-ore", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-yellow", "tungsten-ore", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-yellow", "nickel-ore", "item", 1)
		
		angelsmods.functions.OV.set_input("gas-sulfur-dioxide-calcium-sulfate", "quartz", "item", 1)
		
		data.raw["assembling-machine"]["chemical-plant-2"].energy_usage="300kW"
		data.raw["assembling-machine"]["chemical-plant-2"].crafting_speed = 2
		data.raw["assembling-machine"]["chemical-plant-2"].module_specification={module_slots = 4}
		data.raw["assembling-machine"]["chemical-plant-3"].energy_usage="390kW"
		data.raw["assembling-machine"]["chemical-plant-3"].crafting_speed = 2.75
		data.raw["assembling-machine"]["chemical-plant-3"].module_specification={module_slots = 5}
		data.raw["assembling-machine"]["chemical-plant-4"].energy_usage="480kW"
		data.raw["assembling-machine"]["chemical-plant-4"].crafting_speed = 3.5
		data.raw["assembling-machine"]["chemical-plant-4"].module_specification={module_slots = 6}
		
		data.raw["assembling-machine"]["oil-refinery-2"].energy_usage="720kW"
		data.raw["assembling-machine"]["oil-refinery-2"].crafting_speed = 1.75
		data.raw["assembling-machine"]["oil-refinery-2"].module_specification={module_slots = 3}
		data.raw["assembling-machine"]["oil-refinery-3"].energy_usage="1MW"
		data.raw["assembling-machine"]["oil-refinery-3"].crafting_speed = 2.5
		data.raw["assembling-machine"]["oil-refinery-3"].module_specification={module_slots = 4}
		data.raw["assembling-machine"]["oil-refinery-4"].energy_usage="1.35MW"
		data.raw["assembling-machine"]["oil-refinery-4"].crafting_speed = 3.5
		data.raw["assembling-machine"]["oil-refinery-4"].module_specification={module_slots = 5}
	else
		--require("prototypes.recipes.petrochem-entity-vanilla")
		angelsmods.functions.OV.disable_recipe({ "solid-calcium-chloride", "gas-chlor-methane", "gas-allylchlorid", "gas-epichlorhydrin", "gas-glycerol", "solid-sodium-chlorate", "solid-sodium-perchlorate", "liquid-perchloric-acid" })
		angelsmods.functions.OV.disable_recipe({ "gas-ammonium-chloride", "gas-urea", "gas-melamine" })
		angelsmods.functions.OV.disable_recipe({ "catalyst-steam-cracking-butane", "gas-styrene-catalyst", "gas-ethylbenzene-catalyst", "solid-resin-1", "solid-resin-2", "solid-rubber" })
		--angelsmods.functions.OV.global_replace_item("solid-plastic-1", "plastic-bar")
		--angelsmods.functions.OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-1.png", "__base__/graphics/icons/plastic-bar.png")
		--angelsmods.functions.OV.global_replace_item("solid-plastic-2", "plastic-bar")
		--angelsmods.functions.OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-2.png", "__base__/graphics/icons/plastic-bar.png")
		--angelsmods.functions.OV.global_replace_item("solid-plastic-3", "plastic-bar")
		--angelsmods.functions.OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-3.png", "__base__/graphics/icons/plastic-bar.png")
		--angelsmods.functions.OV.set_output("solid-plastic-2", "plastic-bar", "item", 2)
		--angelsmods.functions.OV.set_output("solid-plastic-3", "plastic-bar", "item", 3)
		
		angelsmods.functions.OV.set_input("catalyst-metal-red", "angels-ore1", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-red", "angels-ore3", "item", 1)		
		angelsmods.functions.OV.set_input("catalyst-metal-green", "angels-ore1", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-green", "angels-ore2", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-blue", "angels-ore3", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-blue", "angels-ore4", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-yellow", "angels-ore2", "item", 1)
		angelsmods.functions.OV.set_input("catalyst-metal-yellow", "angels-ore4", "item", 1)
	end
end

--PETROCHEM OPTIONS
-- if not angelsmods.trigger.enableconverter then
	-- angelsmods.functions.OV.disable_recipe({ "valve-converter" })
-- end

--ENABLE PRODUCTIVITY
	angelsmods.functions.allow_productivity("solid-plastic-1")
	angelsmods.functions.allow_productivity("solid-plastic-2")
	angelsmods.functions.allow_productivity("solid-plastic-3")
	
	angelsmods.functions.allow_productivity("solid-resin-1")
	angelsmods.functions.allow_productivity("solid-resin-2")
	
	angelsmods.functions.allow_productivity("solid-rubber")