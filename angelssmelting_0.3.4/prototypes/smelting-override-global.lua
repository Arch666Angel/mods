--OVERRIDE FOR BASE
	data.raw["item"]["iron-plate"].icon = "__angelssmelting__/graphics/icons/plate-iron.png"
	data.raw["item"]["steel-plate"].icon = "__angelssmelting__/graphics/icons/plate-steel.png"
	data.raw["item"]["copper-plate"].icon = "__angelssmelting__/graphics/icons/plate-copper.png"
	data.raw["item"]["copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-copper.png"
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/iron-plate.png", "__angelssmelting__/graphics/icons/plate-iron.png")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/steel-plate.png", "__angelssmelting__/graphics/icons/plate-steel.png")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/copper-plate.png", "__angelssmelting__/graphics/icons/plate-copper.png")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/plate/copper-cable.png", "__angelssmelting__/graphics/icons/wire-copper.png")
	
--OVERRIDE FOR BOBs
if bobmods and bobmods.plates then
	data.raw["item"]["tin-plate"].icon = "__angelssmelting__/graphics/icons/plate-tin.png"
	data.raw["item"]["silver-plate"].icon = "__angelssmelting__/graphics/icons/plate-silver.png"
	data.raw["item"]["lead-plate"].icon = "__angelssmelting__/graphics/icons/plate-lead.png"
	data.raw["item"]["glass"].icon = "__angelssmelting__/graphics/icons/plate-glass.png"
	data.raw["item"]["gold-plate"].icon = "__angelssmelting__/graphics/icons/plate-gold.png"
	data.raw["item"]["nickel-plate"].icon = "__angelssmelting__/graphics/icons/plate-nickel.png"
	data.raw["item"]["zinc-plate"].icon = "__angelssmelting__/graphics/icons/plate-zinc.png"
	data.raw["item"]["aluminium-plate"].icon = "__angelssmelting__/graphics/icons/plate-aluminium.png"
	data.raw["item"]["lead-oxide"].icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png"
	data.raw["item"]["alumina"].icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png"
	data.raw["item"]["tungsten-oxide"].icon = "__angelssmelting__/graphics/icons/solid-tungsten-oxide.png"
	data.raw["item"]["powdered-tungsten"].icon = "__angelssmelting__/graphics/icons/powder-tungsten.png"
	data.raw["item"]["cobalt-oxide"].icon = "__angelssmelting__/graphics/icons/solid-cobalt-oxide.png"
	data.raw["item"]["silver-nitrate"].icon = "__angelssmelting__/graphics/icons/solid-silver-nitrate.png"
	data.raw["item"]["titanium-plate"].icon = "__angelssmelting__/graphics/icons/plate-titanium.png"
	data.raw["item"]["tungsten-plate"].icon = "__angelssmelting__/graphics/icons/plate-tungsten.png"
	data.raw["item"]["silicon"].icon = "__angelssmelting__/graphics/icons/plate-silicon.png"
	data.raw["item"]["cobalt-plate"].icon = "__angelssmelting__/graphics/icons/plate-cobalt.png"
	data.raw["item"]["brass-alloy"].icon = "__angelssmelting__/graphics/icons/plate-brass.png"
	data.raw["item"]["bronze-alloy"].icon = "__angelssmelting__/graphics/icons/plate-bronze.png"
	data.raw["item"]["electrum-alloy"].icon = "__angelssmelting__/graphics/icons/plate-electrum.png"
	data.raw["item"]["gunmetal-alloy"].icon = "__angelssmelting__/graphics/icons/plate-gunmetal.png"
	data.raw["item"]["invar-alloy"].icon = "__angelssmelting__/graphics/icons/plate-invar.png"
	data.raw["item"]["nitinol-alloy"].icon = "__angelssmelting__/graphics/icons/plate-nitinol.png"
	data.raw["item"]["cobalt-steel-alloy"].icon = "__angelssmelting__/graphics/icons/plate-cobalt-steel.png"
	
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
