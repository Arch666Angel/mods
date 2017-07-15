game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
	if game.item_prototypes["sodium-hydroxide"] then
		if force.technologies["advanced-ore-refining-3"].researched then
			force.recipes["angelsore-crystal-mix5-processing"].enabled = true
		end
	end
end