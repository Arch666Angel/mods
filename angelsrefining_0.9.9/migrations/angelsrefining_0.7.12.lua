game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
	if game.item_prototypes["pellet-aluminium"] then
		if force.technologies["water-washing-1"].researched then
			force.recipes["seafloor-pump"].enabled = true
			force.recipes["washing-plant"].enabled = true
			force.recipes["washing-1"].enabled = true
			force.recipes["washing-2"].enabled = true
			force.recipes["washing-3"].enabled = true
			force.recipes["washing-4"].enabled = true
			force.recipes["washing-5"].enabled = true
			force.recipes["solid-mud-landfill"].enabled = true
			force.recipes["water-viscous-mud"].enabled = true
			force.recipes["solid-clay"].enabled = true
			force.recipes["solid-sand"].enabled = true
		end
		if force.technologies["water-washing-2"].researched then
			force.recipes["washing-plant-2"].enabled = true
			force.recipes["solid-limestone"].enabled = true
		end
	end
end