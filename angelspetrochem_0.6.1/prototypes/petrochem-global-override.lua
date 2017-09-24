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

	
--CONFIG OPTIONS OVERRIDE FOR REFINING   
	--ACID OVERRIDE FOR REFINING AND ORES
	if data.raw.resource["uranium-ore"] then
		data.raw.resource["uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
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

		if angelsmods.ores and angelsmods.ores.enablefluidreq then
			if angelsmods.ores.enableinfiniteangelsore1 then
			data.raw.resource["infinite-angels-ore1"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if angelsmods.ores.enableinfiniteangelsore2 then
			data.raw.resource["infinite-angels-ore2"].minable.required_fluid = "liquid-hydrofluoric-acid"
			end
			if angelsmods.ores.enableinfiniteangelsore3 then
			data.raw.resource["infinite-angels-ore3"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if angelsmods.ores.enableinfiniteangelsore4 then
			data.raw.resource["infinite-angels-ore4"].minable.required_fluid = "liquid-hydrochloric-acid"
			end
			if angelsmods.ores.enableinfiniteuranium and data.raw.resource["infinite-uranium-ore"] then
			data.raw.resource["infinite-uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if bobmods and bobmods.plates then
				if angelsmods.ores.enableinfiniteangelsore5 then
				data.raw.resource["infinite-angels-ore5"].minable.required_fluid = "liquid-nitric-acid"
				end
				if angelsmods.ores.enableinfiniteangelsore6 then
				data.raw.resource["infinite-angels-ore6"].minable.required_fluid = "liquid-sulfuric-acid"
				end
			end
		end
	else if angelsmods.ores and angelsmods.ores.enablefluidreq then
			if angelsmods.ores.enableinfiniteangelsore1 then
			data.raw.resource["infinite-angels-ore1"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if angelsmods.ores.enableinfiniteangelsore2 then
			data.raw.resource["infinite-angels-ore2"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if angelsmods.ores.enableinfiniteangelsore3 then
			data.raw.resource["infinite-angels-ore3"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if angelsmods.ores.enableinfiniteangelsore4 then
			data.raw.resource["infinite-angels-ore4"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if angelsmods.ores.enableinfiniteuranium and data.raw.resource["infinite-uranium-ore"] then
			data.raw.resource["infinite-uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
			end
			if bobmods and bobmods.plates then
				if angelsmods.ores.enableinfiniteangelsore5 then
				data.raw.resource["infinite-angels-ore5"].minable.required_fluid = "liquid-sulfuric-acid"
				end
				if angelsmods.ores.enableinfiniteangelsore6 then
				data.raw.resource["infinite-angels-ore6"].minable.required_fluid = "liquid-sulfuric-acid"
				end
			end
		end
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
		OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
		table.insert(data.raw["item"]["sodium-hydroxide"].flags,"hidden")
		OV.global_replace_item("sulfur-dioxide", "gas-sulfur-dioxide")
		OV.global_replace_item("liquid-air", "gas-compressed-air")

		OV.global_replace_item({ "solid-resin-1", "solid-resin-2" }, "resin")
		table.insert(data.raw["item"]["solid-resin-1"].flags,"hidden")
		table.insert(data.raw["item"]["solid-resin-2"].flags,"hidden")
		OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
        OV.global_replace_item("solid-rubber", "rubber")
		table.insert(data.raw["item"]["solid-rubber"].flags,"hidden")

      OV.patch_recipes({
         { name = "solid-resin-2", results = {
            { "resin", 2 },
            { name = "gas-ammonia", type = "fluid", amount = 0 },
            { name = "gas-carbon-dioxide", type = "fluid", amount = 0 }
         } },
         { name = "solid-rubber", results = {
            { "rubber", 2 }
         } },
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
		
		data.raw["item"]["rocket-fuel"].icon = "__angelspetrochem__/graphics/icons/rocket-fuel.png"

		OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")
		OV.remove_prereq("rocket-silo", "angels-rocket-fuel")
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