if angelsmods.industry then
	if angelsmods.industry.components then
		require("prototypes.recipes.smeltingtrain-updates")
	end
	data.raw["item-subgroup"]["angels-smeltingtrain"].group = "angels-logistics"
end

