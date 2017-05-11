if not angelsmods then angelsmods = {} end
if not angelsmods.smelting then angelsmods.smelting = {} end


if angelsmods.smelting then
	require("prototypes.angels-smelting-category")

	require("prototypes.buildings.induction-furnace")
	require("prototypes.buildings.blast-furnace")
	require("prototypes.buildings.chemical-furnace")
	require("prototypes.buildings.casting-machine")
	require("prototypes.buildings.powder-mixer")
	require("prototypes.buildings.ore-processing-machine")
	require("prototypes.buildings.pellet-press")
	require("prototypes.buildings.sintering-oven")
	require("prototypes.buildings.strand-casting-machine")

	require("prototypes.items.angels-alloys")	
	require("prototypes.items.angels-aluminium")
	require("prototypes.items.angels-chrome")
	require("prototypes.items.angels-cobalt")
	require("prototypes.items.angels-copper")
	require("prototypes.items.angels-gold")
	require("prototypes.items.angels-iron")
	require("prototypes.items.angels-lead")
	require("prototypes.items.angels-manganese")
	require("prototypes.items.angels-nickel")
	require("prototypes.items.angels-platinum")
	require("prototypes.items.angels-silicon")
	require("prototypes.items.angels-silver")
	--require("prototypes.items.angels-stone")
	require("prototypes.items.angels-tin")
	require("prototypes.items.angels-titanium")
	require("prototypes.items.angels-tungsten")
	require("prototypes.items.angels-zinc")

	require("prototypes.recipes.smelting-alloys")
	require("prototypes.recipes.smelting-aluminium")
	require("prototypes.recipes.smelting-chrome")
	require("prototypes.recipes.smelting-cobalt")
	require("prototypes.recipes.smelting-copper")
	require("prototypes.recipes.smelting-gold")
	require("prototypes.recipes.smelting-iron")
	require("prototypes.recipes.smelting-lead")
	require("prototypes.recipes.smelting-manganese")
	require("prototypes.recipes.smelting-nickel")
	require("prototypes.recipes.smelting-platinum")
	require("prototypes.recipes.smelting-silicon")
	require("prototypes.recipes.smelting-silver")
	require("prototypes.recipes.smelting-tin")
	require("prototypes.recipes.smelting-titanium")
	require("prototypes.recipes.smelting-tungsten")
	require("prototypes.recipes.smelting-zinc")
	
	require("prototypes.recipes.smelting-entity")
	
	require("prototypes.technology.smelting-technology")
end