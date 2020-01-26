local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

--PREPARATIONS

--OVERRIDE FOR BASE
	ores = {
		value = 200,
		list = {
		"iron-ore",
		"copper-ore",
		"stone",
		"coal",
		"uranium-ore"
		}	
	}
	angelsmods.functions.override_item_conditions(ores)
	
	data.raw["item"]["iron-ore"].subgroup = "angels-iron"
	data.raw["item"]["iron-ore"].order = "a"
	data.raw["item"]["copper-ore"].subgroup = "angels-copper"
	data.raw["item"]["copper-ore"].order = "a"
	
   OV.patch_recipes({
		{ name = "iron-plate",
		energy_required = 10.5,
		normal = { ingredients = { { name = "iron-ore", type = "item", amount = "+3" } }, results = { { name = "iron-plate", type = "item", amount = "+2" } } },
		expensive = { ingredients = { {"!!"}, { name = "iron-ore", type = "item", amount = 5 * intermediatemulti } }, results = { { name = "iron-plate", type = "item", amount = "+2" } } },
		subgroup = "angels-iron-casting", order = "zz" 
		},
		{ name = "copper-plate",
		energy_required = 10.5,
		normal = { ingredients = { { name = "copper-ore", type = "item", amount = "+3" } }, results = { { name = "copper-plate", type = "item", amount = "+2" } } },
		expensive = { ingredients = { {"!!"}, { name = "copper-ore", type = "item", amount = 5 * intermediatemulti } }, results = { { name = "copper-plate", type = "item", amount = "+2" } } },
		subgroup = "angels-copper-casting", order = "zz" 
		},
		{ name = "steel-plate", subgroup = "angels-steel-casting", order = "zz" }
   })
	
	OV.global_replace_item("angels-plate-steel", "steel-plate")
	angelsmods.functions.add_flag("angels-plate-steel", "hidden")
	OV.global_replace_item("angels-plate-iron", "iron-plate")
	angelsmods.functions.add_flag("angels-plate-iron", "hidden")	
	OV.global_replace_item("angels-plate-copper", "copper-plate")
	angelsmods.functions.add_flag("angels-plate-copper", "hidden")
	OV.global_replace_item("angels-wire-copper", "copper-cable")
	angelsmods.functions.add_flag("angels-wire-copper", "hidden")

--OVERRIDE FOR ANGELS
	if angelsmods.refining then
      OV.patch_recipes({
         { name = "angelsore1-crushed-smelting", subgroup = "angels-iron-casting", order = "zy" },
         { name = "angelsore3-crushed-smelting", subgroup = "angels-copper-casting", order = "zy" },
         { name = "angelsore5-crushed-smelting", subgroup = "angels-lead-casting", order = "zy" },
         { name = "angelsore6-crushed-smelting", subgroup = "angels-tin-casting", order = "zy" }
      })
	end
	
	if angelsmods.smelting then
		OV.patch_recipes({
		{ name = "gas-sulfur-dioxide-calcium-sulfate", results = {
			{ "solid-lime", 1 }
		} },
		{ name = "filter-lime", ingredients = {
			{ name = "solid-lime", type = "item", amount = "stone-crushed" }
		} },
		})
	end

--DYNAMIC OVERRIDES
	require("prototypes.recipes.smelting-entity-angels")

	if angelsmods.industries or (bobmods and bobmods.plates) then
		if angelsmods.industries and angelsmods.industries.overhaul then
			--require("prototypes.refining-override-angels")
		else
			--OV.disable_recipe({ "angels-wire-platinum" })
			--OV.disable_recipe({ "angels-wire-silver", "angels-wire-coil-silver-casting", "angels-wire-coil-silver-casting-fast", "angels-wire-coil-silver-converting" })
			OV.disable_technology({ "angels-platinum-smelting-1", "angels-platinum-smelting-2", "angels-platinum-smelting-3" })
			OV.disable_recipe({ "rod-stack-iron-casting", "rod-stack-iron-casting-fast", "angels-rod-stack-iron-converting", "angels-rod-iron-plate" })
			OV.disable_recipe({ "rod-stack-steel-casting", "rod-stack-steel-casting-fast", "angels-rod-stack-steel-converting" })
			angelsmods.functions.add_flag("angels-wire-tin", "hidden")
			angelsmods.functions.add_flag("angels-wire-silver", "hidden")
			angelsmods.functions.add_flag("angels-wire-gold", "hidden")
			angelsmods.functions.add_flag("angels-wire-platinum", "hidden")
		end
	else
		require("prototypes.smelting-override-vanilla")
	end

--ADDED RECIPES
	if (bobmods and bobmods.plates) then
		require("prototypes.smelting-override-bob")
	end

--ENABLE PRODUCTIVITY
	--ALLOYS
	angelsmods.functions.allow_productivity("angels-plate-steel")
	angelsmods.functions.allow_productivity("angels-roll-steel-converting")
	angelsmods.functions.allow_productivity("angels-solder")
	angelsmods.functions.allow_productivity("angels-roll-solder-converting")

	angelsmods.functions.allow_productivity("angels-plate-aluminium")
	angelsmods.functions.allow_productivity("angels-roll-aluminium-converting")

	angelsmods.functions.allow_productivity("angels-plate-chrome")

	angelsmods.functions.allow_productivity("angels-plate-cobalt")

	angelsmods.functions.allow_productivity("angels-plate-copper")
	angelsmods.functions.allow_productivity("angels-wire-coil-copper-converting")
	angelsmods.functions.allow_productivity("angels-roll-copper-converting")
	
	angelsmods.functions.allow_productivity("angels-plate-gold")
	angelsmods.functions.allow_productivity("angels-wire-coil-gold-converting")

	angelsmods.functions.allow_productivity("angels-plate-iron")
	angelsmods.functions.allow_productivity("angels-roll-iron-converting")	

	angelsmods.functions.allow_productivity("angels-plate-lead")

	angelsmods.functions.allow_productivity("angels-plate-manganese")

	angelsmods.functions.allow_productivity("angels-plate-nickel")

	angelsmods.functions.allow_productivity("angels-plate-platinum")
	angelsmods.functions.allow_productivity("angels-wire-coil-platinum-converting")

	angelsmods.functions.allow_productivity("angels-mono-silicon-1")
	angelsmods.functions.allow_productivity("angels-mono-silicon-2")

	angelsmods.functions.allow_productivity("angels-plate-silver")
	angelsmods.functions.allow_productivity("angels-wire-coil-silver-converting")

	angelsmods.functions.allow_productivity("angels-plate-tin")
	angelsmods.functions.allow_productivity("angels-wire-coil-tin-converting")

	angelsmods.functions.allow_productivity("angels-plate-titanium")
	angelsmods.functions.allow_productivity("angels-roll-titanium-converting")

	angelsmods.functions.allow_productivity("angels-plate-tungsten")

	angelsmods.functions.allow_productivity("angels-plate-zinc")
	
	angelsmods.functions.allow_productivity("angels-clay-brick")
	angelsmods.functions.allow_productivity("angels-concrete")
	angelsmods.functions.allow_productivity("angels-concrete-brick")
	angelsmods.functions.allow_productivity("angels-reinforced-concrete-brick")