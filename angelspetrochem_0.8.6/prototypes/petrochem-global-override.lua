local OV = angelsmods.functions.OV
--OVERRIDE FOR BASE
	data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"

	OV.global_replace_item("heavy-oil", "liquid-naphtha")
	OV.global_replace_item("light-oil", "liquid-fuel-oil")
	OV.disable_recipe("lubricant")
	OV.global_replace_item("petroleum-gas", "gas-methane")
	OV.global_replace_item("sulfuric-acid", "liquid-sulfuric-acid")
	OV.global_replace_icon("__base__/graphics/icons/fluid/sulfuric-acid.png", "__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png")

	data.raw["recipe"]["explosives"].subgroup = "petrochem-solids-2"
	data.raw["recipe"]["explosives"].order = "a"
	data.raw["recipe"]["explosives"].icon_size = 32
	data.raw["recipe"]["explosives"].icons = {
		{
			icon = "__base__/graphics/icons/explosives.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	}

	data.raw["item"]["chemical-plant"].subgroup = "petrochem-vanilla"
	data.raw["item"]["chemical-plant"].order = "a"
	if data.raw["item"]["chemical-plant"].icon then data.raw["item"]["chemical-plant"].icon = nil end
	data.raw["item"]["chemical-plant"].icon_size = 32
	data.raw["item"]["chemical-plant"].icons = {
		{
			icon = "__base__/graphics/icons/chemical-plant.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	}
	data.raw["item"]["oil-refinery"].subgroup = "petrochem-vanilla"
	data.raw["item"]["oil-refinery"].order = "e"
	if data.raw["item"]["oil-refinery"].icon then data.raw["item"]["oil-refinery"].icon = nil end
	data.raw["item"]["oil-refinery"].icon_size = 32
	data.raw["item"]["oil-refinery"].icons = {
		{
			icon = "__base__/graphics/icons/oil-refinery.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	}

	OV.disable_recipe({ "plastic-bar" })

	--oil processing
	OV.global_replace_technology("oil-processing", "angels-oil-processing")
	OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")

	--sulfur processing
	OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")

	--RECIPE TINTS
	for _, recipe in pairs(data.raw.recipe) do
		if recipe.category == "liquifying" or recipe.category == "chemistry" or recipe.category == "advanced-chemistry" and (not recipe.crafting_machine_tint) then
			recipe.crafting_machine_tint =
			{
			  primary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
			  secondary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
			  tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
			}
		end
	end


--CONFIG OPTIONS OVERRIDE FOR REFINING
	--ACID OVERRIDE FOR REFINING AND ORES
	if data.raw.resource["uranium-ore"] then
		data.raw.resource["uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
		if data.raw.resource["infinite-uranium-ore"] then
    	data.raw.resource["infinite-uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
		end
	end
	if data.raw.resource["thorium-ore"] then
		data.raw.resource["thorium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
	end
	if angelsmods.trigger.enableacids then
      OV.patch_recipes({
         { name = "angelsore2-crystal", ingredients = {
            { name = "liquid-hydrofluoric-acid", type = "fluid", amount = "liquid-sulfuric-acid" }
         } },
         { name = "angelsore4-crystal", ingredients = {
            { name = "liquid-hydrochloric-acid", type = "fluid", amount = "liquid-sulfuric-acid" }
         } },
         { name = "angelsore5-crystal", ingredients = {
            { name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid" }
         } }
      })
	end

--OVERRIDE FOR BOBs
if bobmods then
	if bobmods.plates then
		OV.global_replace_item("carbon", "solid-carbon")
		OV.global_replace_item("chlorine", "gas-chlorine")
		OV.global_replace_item("hydrogen", "gas-hydrogen")
		OV.global_replace_item("hydrogen-chloride", "gas-hydrogen-chloride")
		OV.global_replace_item("nitric-acid", "liquid-nitric-acid")
		OV.global_replace_item("nitrogen", "gas-nitrogen")
		OV.global_replace_item("nitrogen-dioxide", "gas-nitrogen-dioxide")
		OV.global_replace_item("oxygen", "gas-oxygen")
		OV.global_replace_item("ferric-chloride-solution", "liquid-ferric-chloride-solution")
		OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
		angelsmods.functions.add_flag("sodium-hydroxide", "hidden")
		OV.global_replace_item("sulfur-dioxide", "gas-sulfur-dioxide")
		OV.global_replace_item("liquid-air", "gas-compressed-air")
		OV.global_replace_item("hydrogen-sulfide", "gas-hydrogen-sulfide")

		OV.global_replace_item({ "solid-resin"}, "resin")
		angelsmods.functions.add_flag("solid-resin", "hidden")
		OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
        OV.global_replace_item("solid-rubber", "rubber")
		angelsmods.functions.add_flag("solid-rubber", "hidden")

      OV.patch_recipes({
         { name = "lithium-water-electrolysis", results = {
            { name = "gas-hydrogen", type = "fluid", amount = 20 }
         } },
         { name = "petroleum-jelly", ingredients = {
            { name = "gas-residual", type = "fluid", amount = "liquid-naphtha" }
         } },
         { name = "polishing-compound", ingredients = {
            { name = "liquid-mineral-oil", type = "fluid", amount = "liquid-fuel-oil" }
         } }
      })

		OV.remove_unlock("chemical-processing-1", "carbon")

		--ferric chloride solution
		OV.disable_recipe({ "ferric-chloride-solution" })

		--remove techs
		--water electrolysis
		OV.disable_recipe({ "water-electrolysis", "salt-water-electrolysis", "salt" })
		OV.remove_unlock("chemical-processing-2", "hydrogen-chloride")
		OV.remove_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")

		--air-compressor-1
		--OV.remove_unlock("air-compressor-1", "bob-liquid-air")
		OV.disable_technology({ "void-fluid", "air-compressor-1", "air-compressor-2", "air-compressor-3", "air-compressor-4" })

		--nitrogen processing
		OV.global_replace_technology("nitrogen-processing", "angels-nitrogen-processing-2")
		OV.remove_prereq("ceramics", "nitrogen-processing")
		OV.add_prereq("ceramics", "angels-nitrogen-processing-1")

		--nitroglycerin-processing
		OV.remove_unlock("nitroglycerin-processing", "glycerol")
		OV.add_prereq("nitroglycerin-processing", "chlorine-processing-2")

		--plastics
		OV.remove_unlock("plastics", "plastic-bar")

		--oil processing
		OV.add_unlock("angels-oil-processing", "liquid-fuel")

		OV.disable_technology({ "oil-processing-2", "oil-processing-3", "oil-processing-4" })
	end

	if bobmods.greenhouse then
      OV.patch_recipes({
         { name = "bob-fertiliser", ingredients = {
            { name = "gas-urea", type = "fluid", amount = 20 },
            { name = "gas-methane", type = "fluid", amount = 0 },
            { name = "gas-nitrogen", type = "fluid", amount = 0 }
         } }
      })
	   OV.remove_prereq("bob-fertiliser", "nitrogen-processing")
	   OV.add_prereq("bob-fertiliser", "angels-nitrogen-processing-2")
	end

	if bobmods.warfare then
	   OV.global_replace_item("glycerol", "gas-glycerol")

	   OV.patch_recipes({
         { name = "gun-cotton", ingredients = {
            { name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid" }
         } },
         { name = "gun-cotton-synthetic", ingredients = {
            { name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid" }
         } }
      })
	end

	if data.raw["fluid"]["dinitrogen-tetroxide"] then --BOBS REVAMP
		OV.global_replace_item("ammonia", "gas-ammonia")
		OV.global_replace_item("nitric-oxide", "gas-nitrogen-monoxide")
		OV.global_replace_item("nitric-dioxide", "gas-nitrogen-dioxide")
		OV.global_replace_item("dinitrogen-tetroxide", "gas-dinitrogen-tetroxide")
		OV.global_replace_item("hydrogen-peroxide", "gas-hydrogen-peroxide")
		OV.global_replace_item("hydrazine", "gas-hydrazine")

		OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")
		OV.global_replace_technology("rocket-fuel", "angels-rocket-fuel")
	end
end

if data.raw["technology"]["solid-fuel"] then
   OV.disable_technology("solid-fuel")
end

--URANIUM POWER OVERRIDE
if data.raw["item"]["fluorite"] then
   OV.global_replace_item("fluorite", "fluorite-ore")
end
