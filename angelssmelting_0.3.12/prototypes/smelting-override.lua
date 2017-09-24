local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

--PREPARATIONS

--OVERRIDE FOR BASE
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
	table.insert(data.raw["item"]["angels-plate-steel"].flags,"hidden")
	OV.global_replace_item("angels-plate-iron", "iron-plate")
	table.insert(data.raw["item"]["angels-plate-iron"].flags,"hidden")
	OV.global_replace_item("angels-plate-copper", "copper-plate")
	table.insert(data.raw["item"]["angels-plate-copper"].flags,"hidden")
	OV.global_replace_item("angels-wire-copper", "copper-cable")
	table.insert(data.raw["item"]["angels-wire-copper"].flags,"hidden")

--OVERRIDE FOR ANGELS
	if angelsmods.refining then
      OV.patch_recipes({
         { name = "angelsore1-crushed-smelting", subgroup = "angels-iron-casting", order = "zy" },
         { name = "angelsore3-crushed-smelting", subgroup = "angels-copper-casting", order = "zy" },
         { name = "angelsore5-crushed-smelting", subgroup = "angels-lead-casting", order = "zy" },
         { name = "angelsore6-crushed-smelting", subgroup = "angels-tin-casting", order = "zy" }
      })
	end

require("prototypes.recipes.smelting-entity-angels")

if angelsmods.components then
		-- require("prototypes.recipes.smelting-entity-angels")
	else
	if bobmods and bobmods.plates then
		-- require("prototypes.recipes.smelting-entity-bob")
		
		require("prototypes.smelting-override-bob")
	end
end

--ENABLE PRODUCTIVITY
	angelsmods.functions.allow_productivity("angels-plate-aluminium")
	angelsmods.functions.allow_productivity("roll-aluminium-converting")

	angelsmods.functions.allow_productivity("angels-plate-chrome")

	angelsmods.functions.allow_productivity("angels-plate-cobalt")

	angelsmods.functions.allow_productivity("angels-plate-copper")
	angelsmods.functions.allow_productivity("angels-wire-coil-copper-converting")
	angelsmods.functions.allow_productivity("roll-copper-converting")
	
	angelsmods.functions.allow_productivity("angels-plate-gold")
	angelsmods.functions.allow_productivity("angels-wire-coil-gold-converting")

	angelsmods.functions.allow_productivity("angels-plate-iron")
	angelsmods.functions.allow_productivity("roll-iron-casting")	
	angelsmods.functions.allow_productivity("roll-iron-casting-fast")

	angelsmods.functions.allow_productivity("angels-plate-lead")

	angelsmods.functions.allow_productivity("angels-plate-manganese")

	angelsmods.functions.allow_productivity("angels-plate-nickel")

	angelsmods.functions.allow_productivity("angels-plate-platinum")
	angelsmods.functions.allow_productivity("angels-wire-coil-platinum-converting")

	angelsmods.functions.allow_productivity("angels-plate-silicon")

	angelsmods.functions.allow_productivity("angels-plate-silver")
	angelsmods.functions.allow_productivity("angels-wire-coil-silver-converting")

	angelsmods.functions.allow_productivity("angels-plate-tin")
	angelsmods.functions.allow_productivity("angels-wire-coil-tin-converting")

	angelsmods.functions.allow_productivity("angels-plate-titanium")
	angelsmods.functions.allow_productivity("angels-roll-titanium-converting")

	angelsmods.functions.allow_productivity("angels-plate-tungsten")

	angelsmods.functions.allow_productivity("angels-plate-zinc")

	angelsmods.functions.allow_productivity("angels-plate-steel")
	angelsmods.functions.allow_productivity("angels-roll-steel-converting")

	angelsmods.functions.allow_productivity("angels-solder")
	angelsmods.functions.allow_productivity("angels-solder-converting")
	
	angelsmods.functions.allow_productivity("angels-clay-brick")
	angelsmods.functions.allow_productivity("angels-concrete")
	angelsmods.functions.allow_productivity("angels-concrete-brick")
	angelsmods.functions.allow_productivity("angels-reinforced-concrete-brick")