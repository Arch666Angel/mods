if angelsmods.industry then
	if angelsmods.industry.components then
		require("prototypes.recipes.smeltingtrain-updates")
	end
	data.raw["item-subgroup"]["angels-smeltingtrain"].group = "angels-logistics"
end

if data.raw["equipment-category"]["armoured-vehicle"] then
	table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-smelting-wagon"].equipment_categories,"vehicle")
end