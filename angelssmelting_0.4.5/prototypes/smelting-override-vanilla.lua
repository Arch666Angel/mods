local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

table.insert(data.raw["item"]["angels-plate-tin"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-silver"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-lead"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-glass"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-gold"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-nickel"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-zinc"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-aluminium"].flags,"hidden")
table.insert(data.raw["item"]["solid-lead-oxide"].flags,"hidden")
table.insert(data.raw["item"]["solid-aluminium-oxide"].flags,"hidden")
table.insert(data.raw["item"]["solid-tungsten-oxide"].flags,"hidden")
table.insert(data.raw["item"]["powder-tungsten"].flags,"hidden")
table.insert(data.raw["item"]["solid-cobalt-oxide"].flags,"hidden")
table.insert(data.raw["item"]["solid-silver-nitrate"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-titanium"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-tungsten"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-silicon"].flags,"hidden")
table.insert(data.raw["item"]["angels-plate-cobalt"].flags,"hidden")

--REPLACE TECHS
OV.disable_technology({"angels-aluminium-smelting-1", "angels-aluminium-smelting-2", "angels-aluminium-smelting-3"})
OV.disable_technology({"angels-chrome-smelting-1", "angels-chrome-smelting-2", "angels-chrome-smelting-3"})
OV.disable_technology({"angels-cobalt-smelting-1", "angels-cobalt-smelting-2", "angels-cobalt-smelting-3"})
OV.disable_technology({"angels-glass-smelting-1", "angels-glass-smelting-2", "angels-glass-smelting-3"})
OV.disable_technology({"angels-gold-smelting-1", "angels-gold-smelting-2", "angels-gold-smelting-3"})
OV.disable_technology({"angels-lead-smelting-1", "angels-lead-smelting-2", "angels-lead-smelting-3"})
OV.disable_technology({"angels-manganese-smelting-1", "angels-manganese-smelting-2", "angels-manganese-smelting-3"})
OV.disable_technology({"angels-nickel-smelting-1", "angels-nickel-smelting-2", "angels-nickel-smelting-3"})
OV.disable_technology({"angels-platinum-smelting-1", "angels-platinum-smelting-2", "angels-platinum-smelting-3"})
OV.disable_technology({"angels-silicon-smelting-1", "angels-silicon-smelting-2", "angels-silicon-smelting-3"})
OV.disable_technology({"angels-silver-smelting-1", "angels-silver-smelting-2", "angels-silver-smelting-3"})
OV.disable_technology({"angels-solder-smelting-1", "angels-solder-smelting-2", "angels-solder-smelting-3"})
OV.disable_technology({"angels-tin-smelting-1", "angels-tin-smelting-2", "angels-tin-smelting-3"})
OV.disable_technology({"angels-titanium-smelting-1", "angels-titanium-smelting-2", "angels-titanium-smelting-3"})
OV.disable_technology({"angels-tungsten-smelting-1", "angels-tungsten-smelting-2", "angels-tungsten-smelting-3"})
OV.disable_technology({"angels-zinc-smelting-1", "angels-zinc-smelting-2", "angels-zinc-smelting-3"})

OV.disable_recipe({"molten-iron-smelting-2", "molten-iron-smelting-3", "molten-iron-smelting-4", "molten-iron-smelting-5"})
OV.disable_recipe({"molten-steel-smelting-2", "molten-steel-smelting-3", "molten-steel-smelting-4", "molten-steel-smelting-5"})

OV.patch_recipes({
	{ 
	name = "cement-mixture-1",
	ingredients = {
		{ name = "stone-crushed", type = "item", amount = "quartz" },
	},
	},
	{ 
	name = "cement-mixture-2",
	ingredients = {
		{ name = "stone-crushed", type = "item", amount = "quartz" },
		{ name = "stone-crushed", type = "item", amount = "solid-aluminium-oxide" },
	},
	}
})