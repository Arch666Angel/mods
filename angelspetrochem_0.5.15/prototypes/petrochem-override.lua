local OV = angelsmods.functions.OV

--PREPARATIONS
	OV.remove_input("gas-sulfur-dioxide-calcium-sulfate", "angels-void")
	
--OVERRIDE FOR BASE
   data.raw["resource"]["crude-oil"]["minable"].results={{type = "fluid", name = "liquid-multi-phase-oil", amount_min = 10, amount_max = 10, probability = 1}}
   table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories,"liquifying")

   --ROCKET FUEL
   OV.patch_recipes({
   { name = "rocket-fuel", ingredients = {
         {"!!"},
         { "rocket-fuel-capsule", 10 },
         { "rocket-oxidizer-capsule", 10 }
      }, category = "chemistry" }
   })
	OV.add_prereq("rocket-silo", "angels-rocket-fuel")
	
--OVERRIDE FOR ANGELS REFINING
if angelsmods.refining then	
	--MOVE LIQUIFIER AND ADD CATEGORY
	table.insert(data.raw["assembling-machine"]["advanced-chemical-plant"].crafting_categories,"liquifying")
	table.insert(data.raw["assembling-machine"]["advanced-chemical-plant-2"].crafting_categories,"liquifying")
   OV.patch_recipes({
      { name = "carbon-separation-1", category = "liquifying" },
      { name = "carbon-separation-2", category = "liquifying" },
      { name = "liquifier", subgroup = "petrochem-electrolyser", order = "e" },
      { name = "liquifier-2", subgroup = "petrochem-electrolyser", order = "f" },
      { name = "liquifier-3", subgroup = "petrochem-electrolyser", order = "g" },
      { name = "liquifier-4", subgroup = "petrochem-electrolyser", order = "h" }
   })

	OV.remove_unlock("slag-processing-1", "liquifier")
	OV.add_unlock("basic-chemistry", "liquifier")
	OV.remove_unlock("slag-processing-2", "liquifier-2")
	OV.add_unlock("angels-advanced-chemistry-1", "liquifier-2")
	OV.add_unlock("angels-advanced-chemistry-2", "liquifier-3")
	OV.add_unlock("angels-advanced-chemistry-3", "liquifier-4")
end	

if not angelsmods.smelting then
	OV.disable_recipe({ "solid-sodium-cyanide", "solid-sodium-carbonate", "solid-sodium-sulfate-separation" })
end

--UPDATE ENTITY RECIPES
require("prototypes.recipes.petrochem-entity-angels")

if angelsmods.components then
		data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
		data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"
	else
	if bobmods then 
		if bobmods.plates then
			if bobmods.greenhouse then
				OV.patch_recipes({
				{ name = "bob-resin-wood",
					energy_required = 5,
					ingredients = { { name = "raw-wood", type = "item", amount = "+4" } },
				},
				})
			end
			
			OV.patch_recipes({
			{ name = "catalyst-metal-red", ingredients = {
				{ "iron-ore", 1 },
				{ "copper-ore", 1 }
			} },
			{ name = "catalyst-metal-green", ingredients = {
				{ "bauxite-ore", 1 },
				{ "silver-ore", 1 }
			} },
			{ name = "catalyst-metal-blue", ingredients = {
				{ "rutile-ore", 1 },
				{ "cobalt-ore", 1 }
			} },
			{ name = "catalyst-metal-yellow", ingredients = {
				{ "tungsten-ore", 1 },
				{ "nickel-ore", 1 }
			} },
			{ name = "gas-sulfur-dioxide-calcium-sulfate", ingredients = {
				{ "quartz", 1 }
			} },
			})
			OV.disable_recipe({ "bob-resin-oil" })
			
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
		end
	else
		OV.disable_recipe({ "solid-calcium-chloride", "gas-chlor-methane", "gas-allylchlorid", "gas-epichlorhydrin", "gas-glycerol", "solid-sodium-chlorate", "solid-sodium-perchlorate", "liquid-perchloric-acid" })
		OV.disable_recipe({ "gas-ammonium-chloride", "gas-urea", "gas-melamine" })
		OV.disable_recipe({ "catalyst-steam-cracking-butane", "gas-styrene-catalyst", "gas-ethylbenzene-catalyst", "solid-resin-1", "solid-resin-2", "solid-rubber" })
		OV.patch_recipes({
         { name = "catalyst-metal-red", ingredients = {
            { "angels-ore1", 1 },
            { "angels-ore3", 1 }
         } },
         { name = "catalyst-metal-green", ingredients = {
            { "angels-ore1", 1 },
            { "angels-ore2", 1 }
         } },
         { name = "catalyst-metal-blue", ingredients = {
            { "angels-ore3", 1 },
            { "angels-ore4", 1 }
         } },
         { name = "catalyst-metal-yellow", ingredients = {
            { "angels-ore2", 1 },
            { "angels-ore4", 1 }
         } }
      })
	end
end

--ENABLE PRODUCTIVITY
	angelsmods.functions.allow_productivity("liquid-plastic-1")
	angelsmods.functions.allow_productivity("liquid-plastic-2")
	angelsmods.functions.allow_productivity("liquid-plastic-3")
	
	angelsmods.functions.allow_productivity("liquid-resin-1")
	angelsmods.functions.allow_productivity("liquid-resin-2")
	angelsmods.functions.allow_productivity("liquid-resin-3")
	
	angelsmods.functions.allow_productivity("solid-rubber")