game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  	if force.technologies["slag-processing-1"].researched then
		force.recipes["slag-processing-1"].enabled = true	
		force.recipes["slag-processing-2"].enabled = true		
		force.recipes["slag-processing-3"].enabled = true	
		force.recipes["catalysator-brown"].enabled = true	
	end
  	if force.technologies["geode-processing-2"].researched then
		force.recipes["catalysator-green"].enabled = true	
	end	
end