local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

angelsmods.functions.add_flag("angels-plate-tin", "hidden")
angelsmods.functions.add_flag("angels-plate-silver", "hidden")
angelsmods.functions.add_flag("angels-plate-lead", "hidden")
angelsmods.functions.add_flag("angels-plate-glass", "hidden")
angelsmods.functions.add_flag("angels-plate-gold", "hidden")
angelsmods.functions.add_flag("angels-plate-nickel", "hidden")
angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
angelsmods.functions.add_flag("angels-plate-aluminium", "hidden")
angelsmods.functions.add_flag("angels-plate-cobalt", "hidden")
angelsmods.functions.add_flag("angels-plate-tungsten", "hidden")
angelsmods.functions.add_flag("angels-plate-titanium", "hidden")
angelsmods.functions.add_flag("solid-lead-oxide", "hidden")
angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")
angelsmods.functions.add_flag("solid-tungsten-oxide", "hidden")
angelsmods.functions.add_flag("solid-cobalt-oxide", "hidden")
angelsmods.functions.add_flag("solid-silver-nitrate", "hidden")
angelsmods.functions.add_flag("powder-tungsten", "hidden")

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
OV.disable_recipe({ "angels-mono-silicon-seed", "angels-mono-silicon-1", "angels-mono-silicon-2", "angels-quartz-crucible" })
OV.disable_recipe({"molten-steel-smelting-2", "molten-steel-smelting-3", "molten-steel-smelting-4", "molten-steel-smelting-5", "rod-stack-steel-casting", "angels-rod-stack-steel-converting", "rod-stack-steel-casting-fast"})

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