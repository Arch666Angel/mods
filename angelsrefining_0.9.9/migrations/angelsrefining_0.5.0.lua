game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if game.item_prototypes["sodium-hydroxide"] then
		if force.technologies["water-treatment-2"].researched then
			force.recipes["salination-plant"].enabled = true
			force.recipes["water-saline"].enabled = true
		end
	end
end