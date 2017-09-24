--OVERRIDE FOR BASE
	data.raw["item"]["iron-plate"].icon = "__angelssmelting__/graphics/icons/plate-iron.png"
	data.raw["item"]["iron-plate"].subgroup = "angels-iron-casting"
	data.raw["item"]["iron-plate"].order = "a"
	data.raw["item"]["steel-plate"].icon = "__angelssmelting__/graphics/icons/plate-steel.png"
	data.raw["item"]["steel-plate"].subgroup = "angels-steel-casting"
	data.raw["item"]["steel-plate"].order = "a"
	data.raw["item"]["copper-plate"].icon = "__angelssmelting__/graphics/icons/plate-copper.png"
	data.raw["item"]["copper-plate"].subgroup = "angels-copper-casting"
	data.raw["item"]["copper-plate"].order = "a"
	data.raw["item"]["copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-copper.png"
	data.raw["item"]["copper-cable"].subgroup = "angels-copper-casting"
	data.raw["item"]["copper-cable"].order = "e"
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/iron-plate.png", "__angelssmelting__/graphics/icons/plate-iron.png")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/steel-plate.png", "__angelssmelting__/graphics/icons/plate-steel.png")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/copper-plate.png", "__angelssmelting__/graphics/icons/plate-copper.png")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/copper-cable.png", "__angelssmelting__/graphics/icons/wire-copper.png")
	
--OVERRIDE FOR BOBs
if bobmods and bobmods.plates then
	data.raw["item"]["tin-plate"].icon = "__angelssmelting__/graphics/icons/plate-tin.png"
	data.raw["item"]["tin-plate"].subgroup = "angels-tin-casting"
	data.raw["item"]["tin-plate"].order = "a"
	data.raw["item"]["silver-plate"].icon = "__angelssmelting__/graphics/icons/plate-silver.png"
	data.raw["item"]["silver-plate"].subgroup = "angels-silver-casting"
	data.raw["item"]["silver-plate"].order = "a"
	data.raw["item"]["lead-plate"].icon = "__angelssmelting__/graphics/icons/plate-lead.png"
	data.raw["item"]["lead-plate"].subgroup = "angels-lead-casting"
	data.raw["item"]["lead-plate"].order = "a"
	data.raw["item"]["glass"].icon = "__angelssmelting__/graphics/icons/plate-glass.png"
	data.raw["item"]["glass"].subgroup = "angels-glass-casting"
	data.raw["item"]["glass"].order = "a"
	data.raw["item"]["gold-plate"].icon = "__angelssmelting__/graphics/icons/plate-gold.png"
	data.raw["item"]["gold-plate"].subgroup = "angels-gold-casting"
	data.raw["item"]["gold-plate"].order = "a"
	data.raw["item"]["nickel-plate"].icon = "__angelssmelting__/graphics/icons/plate-nickel.png"
	data.raw["item"]["nickel-plate"].subgroup = "angels-nickel-casting"
	data.raw["item"]["nickel-plate"].order = "a"
	data.raw["item"]["zinc-plate"].icon = "__angelssmelting__/graphics/icons/plate-zinc.png"
	data.raw["item"]["zinc-plate"].subgroup = "angels-zinc-casting"
	data.raw["item"]["zinc-plate"].order = "a"
	data.raw["item"]["aluminium-plate"].icon = "__angelssmelting__/graphics/icons/plate-aluminium.png"
	data.raw["item"]["aluminium-plate"].subgroup = "angels-aluminium-casting"
	data.raw["item"]["aluminium-plate"].order = "a"
	data.raw["item"]["lead-oxide"].icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png"
	data.raw["item"]["lead-oxide"].subgroup = "angels-lead"
	data.raw["item"]["lead-oxide"].order = "d"
	data.raw["item"]["alumina"].icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png"
	data.raw["item"]["alumina"].subgroup = "angels-aluminium"
	data.raw["item"]["alumina"].order = "f"
	data.raw["item"]["tungsten-oxide"].icon = "__angelssmelting__/graphics/icons/solid-tungsten-oxide.png"
	data.raw["item"]["tungsten-oxide"].subgroup = "angels-tungsten"
	data.raw["item"]["tungsten-oxide"].order = "e"
	data.raw["item"]["powdered-tungsten"].icon = "__angelssmelting__/graphics/icons/powder-tungsten.png"
	data.raw["item"]["powdered-tungsten"].subgroup = "angels-tungsten"
	data.raw["item"]["powdered-tungsten"].order = "f"
	data.raw["item"]["cobalt-oxide"].icon = "__angelssmelting__/graphics/icons/solid-cobalt-oxide.png"
	data.raw["item"]["cobalt-oxide"].subgroup = "angels-cobalt"
	data.raw["item"]["cobalt-oxide"].order = "e"
	data.raw["item"]["silver-nitrate"].icon = "__angelssmelting__/graphics/icons/solid-silver-nitrate.png"
	data.raw["item"]["silver-nitrate"].subgroup = "angels-silver"
	data.raw["item"]["silver-nitrate"].order = "d"
	data.raw["item"]["titanium-plate"].icon = "__angelssmelting__/graphics/icons/plate-titanium.png"
	data.raw["item"]["titanium-plate"].subgroup = "angels-titanium-casting"
	data.raw["item"]["titanium-plate"].order = "a"
	data.raw["item"]["tungsten-plate"].icon = "__angelssmelting__/graphics/icons/plate-tungsten.png"
	data.raw["item"]["tungsten-plate"].subgroup = "angels-tungsten-casting"
	data.raw["item"]["tungsten-plate"].order = "a"
	data.raw["item"]["silicon"].icon = "__angelssmelting__/graphics/icons/plate-silicon.png"
	data.raw["item"]["silicon"].subgroup = "angels-silicon-casting"
	data.raw["item"]["silicon"].order = "a"
	data.raw["item"]["cobalt-plate"].icon = "__angelssmelting__/graphics/icons/plate-cobalt.png"
	data.raw["item"]["cobalt-plate"].subgroup = "angels-cobalt-casting"
	data.raw["item"]["cobalt-plate"].order = "a"
	data.raw["item"]["brass-alloy"].icon = "__angelssmelting__/graphics/icons/plate-brass.png"
	data.raw["item"]["brass-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["brass-alloy"].order = "a"
	data.raw["item"]["bronze-alloy"].icon = "__angelssmelting__/graphics/icons/plate-bronze.png"
	data.raw["item"]["bronze-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["bronze-alloy"].order = "b"
	data.raw["item"]["electrum-alloy"].icon = "__angelssmelting__/graphics/icons/plate-electrum.png"
	data.raw["item"]["electrum-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["electrum-alloy"].order = "c"
	data.raw["item"]["gunmetal-alloy"].icon = "__angelssmelting__/graphics/icons/plate-gunmetal.png"
	data.raw["item"]["gunmetal-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["gunmetal-alloy"].order = "d"
	data.raw["item"]["invar-alloy"].icon = "__angelssmelting__/graphics/icons/plate-invar.png"
	data.raw["item"]["invar-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["invar-alloy"].order = "e"
	data.raw["item"]["nitinol-alloy"].icon = "__angelssmelting__/graphics/icons/plate-nitinol.png"
	data.raw["item"]["nitinol-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["nitinol-alloy"].order = "f"
	data.raw["item"]["cobalt-steel-alloy"].icon = "__angelssmelting__/graphics/icons/plate-cobalt-steel.png"
	data.raw["item"]["cobalt-steel-alloy"].subgroup = "angels-alloys-casting"
	data.raw["item"]["cobalt-steel-alloy"].order = "g"
	
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/tin-plate.png", "__angelssmelting__/graphics/icons/plate-tin.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/silver-plate.png", "__angelssmelting__/graphics/icons/plate-silver.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/lead-plate.png", "__angelssmelting__/graphics/icons/plate-lead.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/glass.png", "__angelssmelting__/graphics/icons/plate-glass.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/gold-plate.png", "__angelssmelting__/graphics/icons/plate-gold.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/nickel-plate.png", "__angelssmelting__/graphics/icons/plate-nickel.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/zinc-plate.png", "__angelssmelting__/graphics/icons/plate-zinc.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/aluminium-plate.png", "__angelssmelting__/graphics/icons/plate-aluminium.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/lead-oxide.png", "__angelssmelting__/graphics/icons/solid-lead-oxide.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/corundum.png", "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/tungsten-oxide.png", "__angelssmelting__/graphics/icons/solid-tungsten-oxide.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/powdered-tungsten.png", "__angelssmelting__/graphics/icons/powder-tungsten.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/cobalt-oxide.png", "__angelssmelting__/graphics/icons/solid-cobalt-oxide.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/silver-nitrate.png", "__angelssmelting__/graphics/icons/solid-silver-nitrate.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/titanium-plate.png", "__angelssmelting__/graphics/icons/plate-titanium.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/tungsten-plate.png", "__angelssmelting__/graphics/icons/plate-tungsten.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/silicon-plate.png", "__angelssmelting__/graphics/icons/plate-silicon.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/cobalt-plate.png", "__angelssmelting__/graphics/icons/plate-cobalt.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/cobalt-plate.png", "__angelssmelting__/graphics/icons/plate-cobalt.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/brass-plate.png", "__angelssmelting__/graphics/icons/plate-brass.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/bronze-plate.png", "__angelssmelting__/graphics/icons/plate-bronze.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/electrum-plate.png", "__angelssmelting__/graphics/icons/plate-electrum.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/gunmetal-plate.png", "__angelssmelting__/graphics/icons/plate-gunmetal.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/invar-plate.png", "__angelssmelting__/graphics/icons/plate-invar.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/nitinol-plate.png", "__angelssmelting__/graphics/icons/plate-nitinol.png")
	angelsmods.functions.OV.global_replace_icon("__bobplates__/graphics/icons/plate/cobalt-steel-plate.png", "__angelssmelting__/graphics/icons/plate-cobalt-steel.png")
	if data.raw.item["tinned-copper-cable"] then
		data.raw["item"]["tinned-copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-tin.png"
		data.raw["item"]["gilded-copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-gold.png"
		data.raw["item"]["solder"].icon = "__angelssmelting__/graphics/icons/solder.png"
		
		angelsmods.functions.OV.global_replace_icon("__bobelectronics__/graphics/icons/tinned-copper-cable.png", "__angelssmelting__/graphics/icons/wire-tin.png")
		angelsmods.functions.OV.global_replace_icon("__bobelectronics__/graphics/icons/gilded-copper-cable.png", "__angelssmelting__/graphics/icons/wire-gold.png")
		angelsmods.functions.OV.global_replace_icon("__bobelectronics__/graphics/icons/solder.png", "__angelssmelting__/graphics/icons/solder.png")
	end
	if settings.startup["bobmods-plates-cheapersteel"].value then
		data.raw.recipe["ingot-iron-smelting"].results={{type="item", name="ingot-steel", amount=8}}
	end
    angelsmods.functions.OV.disable_technology({ "angels-platinum-smelting-1", "angels-platinum-smelting-2", "angels-platinum-smelting-3" })  
end
