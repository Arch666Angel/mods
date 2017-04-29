game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
		if force.technologies["oil-processing"].researched then
			force.recipes["solid-fuel-naphtha"].enabled = true
			force.recipes["solid-fuel-fuel-oil"].enabled = true
		end
		if force.technologies["gas-processing"].researched then
			force.recipes["solid-fuel-methane"].enabled = true
		end
		if force.technologies["gas-synthesis"].researched then
			force.recipes["solid-fuel-synthesis"].enabled = true
			force.recipes["gas-synthesis-reforming"].enabled = true
		end
		if force.technologies["basic-chemistry"].researched then
			force.recipes["water-synthesis"].enabled = true
		end
end