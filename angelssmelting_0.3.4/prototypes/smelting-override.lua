--PREPARATIONS

--OVERRIDE FOR BASE
	data.raw["item"]["iron-ore"].subgroup = "angels-iron"
	data.raw["item"]["iron-ore"].order = "a"
	data.raw["item"]["copper-ore"].subgroup = "angels-copper"
	data.raw["item"]["copper-ore"].order = "a"
	
   angelsmods.functions.OV.patch_recipes({
      { name = "iron-plate", subgroup = "angels-iron-casting", order = "zz" },
      { name = "copper-plate", subgroup = "angels-copper-casting", order = "zz" },
      { name = "steel-plate", subgroup = "angels-steel-casting", order = "zz" }
   })
	
	angelsmods.functions.OV.global_replace_item("angels-plate-steel", "steel-plate")
	table.insert(data.raw["item"]["angels-plate-steel"].flags,"hidden")
	angelsmods.functions.OV.global_replace_item("angels-plate-iron", "iron-plate")
	table.insert(data.raw["item"]["angels-plate-iron"].flags,"hidden")
	angelsmods.functions.OV.global_replace_item("angels-plate-copper", "copper-plate")
	table.insert(data.raw["item"]["angels-plate-copper"].flags,"hidden")
	angelsmods.functions.OV.global_replace_item("angels-wire-copper", "copper-cable")
	table.insert(data.raw["item"]["angels-plate-copper"].flags,"hidden")

--OVERRIDE FOR ANGELS
	if angelsmods.refining then
      angelsmods.functions.OV.patch_recipes({
         { name = "angelsore1-crushed-smelting", subgroup = "angels-iron-casting", order = "zy" },
         { name = "angelsore3-crushed-smelting", subgroup = "angels-copper-casting", order = "zy" },
         { name = "angelsore5-crushed-smelting", subgroup = "angels-lead-casting", order = "zy" },
         { name = "angelsore6-crushed-smelting", subgroup = "angels-tin-casting", order = "zy" }
      })
	end
	
if angelsmods.components then
		require("prototypes.recipes.smelting-entity-angels")
	else
	if bobmods and bobmods.plates then
		require("prototypes.recipes.smelting-entity-bob")
		
		angelsmods.functions.OV.global_replace_item("angels-plate-tin", "tin-plate")
		table.insert(data.raw["item"]["angels-plate-tin"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-silver", "silver-plate")
		table.insert(data.raw["item"]["angels-plate-silver"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-lead", "lead-plate")
		table.insert(data.raw["item"]["angels-plate-lead"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-glass", "glass")
		table.insert(data.raw["item"]["angels-plate-glass"].flags,"hidden")		
		angelsmods.functions.OV.global_replace_item("angels-plate-gold", "gold-plate")
		table.insert(data.raw["item"]["angels-plate-gold"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-nickel", "nickel-plate")
		table.insert(data.raw["item"]["angels-plate-nickel"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-zinc", "zinc-plate")
		table.insert(data.raw["item"]["angels-plate-zinc"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-aluminium", "aluminium-plate")
		table.insert(data.raw["item"]["angels-plate-aluminium"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("solid-lead-oxide", "lead-oxide")
		table.insert(data.raw["item"]["solid-lead-oxide"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("solid-aluminium-oxide", "alumina")
		table.insert(data.raw["item"]["solid-aluminium-oxide"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("solid-tungsten-oxide", "tungsten-oxide")
		table.insert(data.raw["item"]["solid-tungsten-oxide"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("powder-tungsten", "powdered-tungsten")
		table.insert(data.raw["item"]["powder-tungsten"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("solid-cobalt-oxide", "cobalt-oxide")
		table.insert(data.raw["item"]["solid-cobalt-oxide"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("solid-silver-nitrate", "silver-nitrate")
		table.insert(data.raw["item"]["solid-silver-nitrate"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-titanium", "titanium-plate")
		table.insert(data.raw["item"]["angels-plate-titanium"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-tungsten", "tungsten-plate")
		table.insert(data.raw["item"]["angels-plate-tungsten"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-silicon", "silicon")
		table.insert(data.raw["item"]["angels-plate-silicon"].flags,"hidden")
		angelsmods.functions.OV.global_replace_item("angels-plate-cobalt", "cobalt-plate")
		table.insert(data.raw["item"]["angels-plate-cobalt"].flags,"hidden")
		
		--REPLACE TECHS
		angelsmods.functions.OV.add_prereq( "alloy-processing-1", "angels-bronze-smelting-1" )
		angelsmods.functions.OV.global_replace_technology("aluminium-processing", "angels-aluminium-smelting-1")
		angelsmods.functions.OV.disable_recipe({ "bronze-alloy" })
		angelsmods.functions.OV.add_prereq( "cobalt-processing", "angels-cobalt-steel-smelting-1" )
		angelsmods.functions.OV.disable_recipe({ "cobalt-oxide", "cobalt-oxide-from-copper", "cobalt-plate", "cobalt-steel-alloy" })
		angelsmods.functions.OV.global_replace_technology("electrum-processing", "angels-electrum-smelting-1")
		angelsmods.functions.OV.global_replace_technology("gold-processing", "angels-gold-smelting-1")
		angelsmods.functions.OV.global_replace_technology("invar-processing", "angels-invar-smelting-1")
		angelsmods.functions.OV.global_replace_technology("lead-processing", "angels-lead-smelting-1")
		angelsmods.functions.OV.global_replace_technology("nickel-processing", "angels-nickel-smelting-1")
		angelsmods.functions.OV.add_prereq( "nitinol-processing", "angels-nitinol-smelting-1" )
		angelsmods.functions.OV.disable_recipe({ "nitinol-alloy" })
		angelsmods.functions.OV.add_prereq( "silicon-processing", "angels-silicon-smelting-1" )
		angelsmods.functions.OV.disable_recipe({ "bob-silicon-plate" })
		angelsmods.functions.OV.add_prereq( "titanium-processing", "angels-titanium-smelting-1" )
		angelsmods.functions.OV.disable_recipe({ "bob-titanium-plate" })
		angelsmods.functions.OV.add_prereq( "tungsten-processing", "angels-tungsten-smelting-1" )
		angelsmods.functions.OV.disable_recipe({ "tungstic-acid", "tungsten-oxide", "powdered-tungsten", "bob-tungsten-plate" })
		angelsmods.functions.OV.add_prereq( "zinc-processing", "angels-brass-smelting-1" )
		angelsmods.functions.OV.disable_recipe({ "bob-zinc-plate", "brass-alloy", "gunmetal-alloy" })
		
		--DISABLE RECIPES
		angelsmods.functions.OV.disable_recipe({ "angels-wire-platinum" })
		angelsmods.functions.OV.disable_recipe({ "angels-wire-silver" })
		
		if data.raw.item["tinned-copper-cable"] then
			angelsmods.functions.OV.global_replace_item("angels-wire-tin", "tinned-copper-cable")
			angelsmods.functions.OV.global_replace_item("angels-wire-gold", "gilded-copper-cable")
			angelsmods.functions.OV.global_replace_item("angels-solder", "solder")
		end
	end
end

--ENABLE PRODUCTIVITY
	angelsmods.functions.allow_productivity("angels-plate-aluminium")
	angelsmods.functions.allow_productivity("roll-aluminium-casting")

	angelsmods.functions.allow_productivity("angels-plate-chrome")

	angelsmods.functions.allow_productivity("angels-plate-cobalt")

	angelsmods.functions.allow_productivity("angels-plate-copper")
	angelsmods.functions.allow_productivity("angels-wire-coil-copper-casting")

	angelsmods.functions.allow_productivity("angels-plate-gold")
	angelsmods.functions.allow_productivity("angels-wire-coil-gold-casting")

	angelsmods.functions.allow_productivity("angels-plate-iron")

	angelsmods.functions.allow_productivity("angels-plate-lead")

	angelsmods.functions.allow_productivity("angels-plate-manganese")

	angelsmods.functions.allow_productivity("angels-plate-nickel")

	angelsmods.functions.allow_productivity("angels-plate-platinum")
	angelsmods.functions.allow_productivity("angels-wire-coil-platinum-casting")

	angelsmods.functions.allow_productivity("angels-plate-silicon")

	angelsmods.functions.allow_productivity("angels-plate-silver")
	angelsmods.functions.allow_productivity("angels-wire-coil-silver-casting")

	angelsmods.functions.allow_productivity("angels-plate-tin")
	angelsmods.functions.allow_productivity("angels-wire-coil-tin-casting")

	angelsmods.functions.allow_productivity("angels-plate-titanium")
	angelsmods.functions.allow_productivity("roll-titanium-casting")

	angelsmods.functions.allow_productivity("angels-plate-tungsten")

	angelsmods.functions.allow_productivity("angels-plate-zinc")

	angelsmods.functions.allow_productivity("angels-plate-steel")
	angelsmods.functions.allow_productivity("angels-roll-steel-casting")

	angelsmods.functions.allow_productivity("angels-solder")