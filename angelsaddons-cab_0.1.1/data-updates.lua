if angelsmods.industry then
	if angelsmods.industry.components then
		require("prototypes.recipes.cab-updates")
	end
	data.raw["item-subgroup"]["angels-cab"].group = "angels-logistics"
end

