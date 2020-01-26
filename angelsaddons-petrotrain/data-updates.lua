if angelsmods.industry then
	if angelsmods.industry.components then
		require("prototypes.recipes.petrotrain-updates")
	end
	data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-logistics"
end

if data.raw["equipment-category"]["armoured-vehicle"] then
	table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-petro-tank-wagon"].equipment_categories,"vehicle")
end

