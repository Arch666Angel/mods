game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  	if force.technologies["slag-processing-2"].researched then
		force.recipes["slag-processing-4"].enabled = true	
		force.recipes["slag-processing-5"].enabled = true		
		force.recipes["slag-processing-6"].enabled = true	
	end
end