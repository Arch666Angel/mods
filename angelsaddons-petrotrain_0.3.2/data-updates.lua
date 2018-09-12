if angelsmods.industry then
	if angelsmods.industry.components then
		require("prototypes.recipes.petrotrain-updates")
	end
	data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-logistics"
end

