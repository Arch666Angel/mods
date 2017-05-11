--PREPARATIONS

--OVERRIDE FOR BASE
	data.raw["item"]["iron-ore"].subgroup = "angels-iron"
	data.raw["item"]["iron-ore"].order = "a"
	data.raw["item"]["copper-ore"].subgroup = "angels-copper"
	data.raw["item"]["copper-ore"].order = "a"
	
	data.raw["recipe"]["iron-plate"].subgroup = "angels-iron-casting"
	data.raw["recipe"]["iron-plate"].order = "x"
	data.raw["recipe"]["copper-plate"].subgroup = "angels-copper-casting"
	data.raw["recipe"]["copper-plate"].order = "x"
	data.raw["recipe"]["steel-plate"].subgroup = "angels-steel-casting"
	data.raw["recipe"]["steel-plate"].order = "x"
	
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
	data.raw["recipe"]["angelsore1-crushed-smelting"].subgroup = "angels-iron-casting"
	data.raw["recipe"]["angelsore1-crushed-smelting"].order = "y"
	data.raw["recipe"]["angelsore3-crushed-smelting"].subgroup = "angels-copper-casting"
	data.raw["recipe"]["angelsore3-crushed-smelting"].order = "y"
	data.raw["recipe"]["angelsore5-crushed-smelting"].subgroup = "angels-lead-casting"
	data.raw["recipe"]["angelsore5-crushed-smelting"].order = "y"
	data.raw["recipe"]["angelsore6-crushed-smelting"].subgroup = "angels-tin-casting"
	data.raw["recipe"]["angelsore6-crushed-smelting"].order = "y"
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
		
		angelsmods.functions.OV.disable_recipe({ "angels-wire-platinum", "angels-wire-silver" })
	
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