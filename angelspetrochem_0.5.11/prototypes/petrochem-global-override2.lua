--OVERRIDE FOR BASE
	data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"

	angelsmods.functions.OV.global_replace_item("heavy-oil", "liquid-naphtha")
	angelsmods.functions.OV.global_replace_item("light-oil", "liquid-fuel-oil")
	angelsmods.functions.OV.disable_recipe("lubricant")
	angelsmods.functions.OV.global_replace_item("petroleum-gas", "gas-methane")
	angelsmods.functions.OV.global_replace_item("sulfuric-acid", "liquid-sulfuric-acid")
	angelsmods.functions.OV.global_replace_icon("__base__/graphics/icons/fluid/sulfuric-acid.png", "__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png")

	data.raw["item"]["chemical-plant"].subgroup = "petrochem-vanilla"
	data.raw["item"]["chemical-plant"].order = "a"
	data.raw["item"]["oil-refinery"].subgroup = "petrochem-vanilla"
	data.raw["item"]["oil-refinery"].order = "e" 

	angelsmods.functions.OV.disable_recipe({ "plastic-bar" })

	--oil processing
	angelsmods.functions.OV.global_replace_technology("oil-processing", "angels-oil-processing")
	angelsmods.functions.OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")

	--sulfur processing
	angelsmods.functions.OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")

	
--CONFIG OPTIONS OVERRIDE FOR REFINING   
	--ACID OVERRIDE FOR REFINING AND ORES
	if data.raw.resource["uranium-ore"] then
		data.raw.resource["uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
	end
	if angelsmods.trigger.enableacids then
		angelsmods.functions.OV.remove_input("angelsore2-crystal", "liquid-sulfuric-acid")     
		angelsmods.functions.OV.set_input("angelsore2-crystal", "liquid-hydrofluoric-acid", "fluid", 10)
		angelsmods.functions.OV.remove_input("angelsore4-crystal", "liquid-sulfuric-acid")     
		angelsmods.functions.OV.set_input("angelsore4-crystal", "liquid-hydrochloric-acid", "fluid", 10)
		angelsmods.functions.OV.remove_input("angelsore5-crystal", "liquid-sulfuric-acid")     
		angelsmods.functions.OV.set_input("angelsore5-crystal", "liquid-nitric-acid", "fluid", 10)
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
		angelsmods.functions.OV.global_replace_item("carbon", "solid-carbon")
		angelsmods.functions.OV.global_replace_item("chlorine", "gas-chlorine")
		angelsmods.functions.OV.global_replace_item("hydrogen", "gas-hydrogen")
		angelsmods.functions.OV.global_replace_item("hydrogen-chloride", "gas-hydrogen-chloride")
		angelsmods.functions.OV.global_replace_item("nitric-acid", "liquid-nitric-acid")
		angelsmods.functions.OV.global_replace_item("nitrogen", "gas-nitrogen")
		angelsmods.functions.OV.global_replace_item("nitrogen-dioxide", "gas-nitrogen-dioxide")
		angelsmods.functions.OV.global_replace_item("oxygen", "gas-oxygen")
		angelsmods.functions.OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
		angelsmods.functions.OV.global_replace_item("sulfur-dioxide", "gas-sulfur-dioxide")
		angelsmods.functions.OV.global_replace_item("liquid-air", "gas-compressed-air")

		angelsmods.functions.OV.global_replace_item({ "solid-resin-1", "solid-resin-2" }, "resin")
		angelsmods.functions.OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
		angelsmods.functions.OV.set_output("solid-resin-2", "resin", "item", 2)
		angelsmods.functions.OV.remove_output("solid-resin-2", { "gas-ammonia", "gas-carbon-dioxide" })
		angelsmods.functions.OV.global_replace_item("solid-rubber", "rubber")
		angelsmods.functions.OV.set_output("solid-rubber", "rubber", "item", 2)

		angelsmods.functions.OV.set_output("lithium-water-electrolysis", "gas-hydrogen", "fluid", 20)

		angelsmods.functions.OV.remove_input("petroleum-jelly", "liquid-naphtha")
		angelsmods.functions.OV.set_input("petroleum-jelly", "gas-residual", "fluid", 20)

		angelsmods.functions.OV.replace_item("polishing-compound", "liquid-fuel-oil", "liquid-mineral-oil")

		angelsmods.functions.OV.remove_unlock("chemical-processing-1", "carbon")

		--plastic
		--angelsmods.functions.OV.global_replace_item("solid-plastic-1", "plastic-bar")
		--angelsmods.functions.OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-1.png", "__base__/graphics/icons/plastic-bar.png")
		--angelsmods.functions.OV.global_replace_item("solid-plastic-2", "plastic-bar")
		--angelsmods.functions.OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-2.png", "__base__/graphics/icons/plastic-bar.png")
		--angelsmods.functions.OV.global_replace_item("solid-plastic-3", "plastic-bar")
		--angelsmods.functions.OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-3.png", "__base__/graphics/icons/plastic-bar.png")
		--angelsmods.functions.OV.set_output("solid-plastic-2", "plastic-bar", "item", 2)
		--angelsmods.functions.OV.set_output("solid-plastic-3", "plastic-bar", "item", 3)

		--remove techs
		--water electrolysis
		angelsmods.functions.OV.disable_recipe({ "water-electrolysis", "salt-water-electrolysis", "salt" })
		angelsmods.functions.OV.remove_unlock("chemical-processing-2", "hydrogen-chloride")
		angelsmods.functions.OV.remove_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")

		--air-compressor-1
		--angelsmods.functions.OV.remove_unlock("air-compressor-1", "bob-liquid-air")
		angelsmods.functions.OV.disable_technology({ "void-fluid", "air-compressor-1", "air-compressor-2", "air-compressor-3", "air-compressor-4" })

		--nitrogen processing
		angelsmods.functions.OV.global_replace_technology("nitrogen-processing", "angels-nitrogen-processing-2")
		angelsmods.functions.OV.remove_prereq("ceramics", "nitrogen-processing")
		angelsmods.functions.OV.add_prereq("ceramics", "angels-nitrogen-processing-1")

		--nitroglycerin-processing
		angelsmods.functions.OV.remove_unlock("nitroglycerin-processing", "glycerol")
		angelsmods.functions.OV.add_prereq("nitroglycerin-processing", "chlorine-processing-2")

		--plastics
		angelsmods.functions.OV.remove_unlock("plastics", "plastic-bar")

		--oil processing
		angelsmods.functions.OV.add_unlock("angels-oil-processing", "liquid-fuel")

		angelsmods.functions.OV.disable_technology({ "oil-processing-2", "oil-processing-3", "oil-processing-4" })
	end 
	
	if bobmods.greenhouse then
	   angelsmods.functions.OV.set_input("bob-fertiliser", "gas-urea", "fluid", 20)
	   angelsmods.functions.OV.remove_input("bob-fertiliser", { "gas-methane", "gas-nitrogen" })
	   angelsmods.functions.OV.remove_prereq("bob-fertiliser", "nitrogen-processing")
	   angelsmods.functions.OV.add_prereq("bob-fertiliser", "angels-nitrogen-processing-2")
	end
	
	if bobmods.warfare then
	   angelsmods.functions.OV.global_replace_item("glycerol", "gas-glycerol")

	   angelsmods.functions.OV.replace_item({ "gun-cotton", "gun-cotton-synthetic" }, "liquid-sulfuric-acid", "liquid-nitric-acid")
	end
	
	if data.raw["fluid"]["dinitrogen-tetroxide"] then --BOBS REVAMP
		angelsmods.functions.OV.global_replace_item("ammonia", "gas-ammonia")
		angelsmods.functions.OV.global_replace_item("nitric-oxide", "gas-nitrogen-monoxide")
		angelsmods.functions.OV.global_replace_item("nitric-dioxide", "gas-nitrogen-dioxide")
		angelsmods.functions.OV.global_replace_item("dinitrogen-tetroxide", "gas-dinitrogen-tetroxide")
		angelsmods.functions.OV.global_replace_item("hydrogen-peroxide", "gas-hydrogen-peroxide")
		angelsmods.functions.OV.global_replace_item("hydrazine", "gas-hydrazine")
		
		angelsmods.functions.OV.remove_input("rocket-fuel", "gas-hydrazine")
		angelsmods.functions.OV.remove_input("rocket-fuel", "gas-dinitrogen-tetroxide")	
		
		data.raw["item"]["rocket-fuel"].icon = "__angelspetrochem__/graphics/icons/rocket-fuel.png"

		
		angelsmods.functions.OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")
		angelsmods.functions.OV.remove_prereq("rocket-silo", "angels-rocket-fuel")
		angelsmods.functions.OV.global_replace_technology("rocket-fuel", "angels-rocket-fuel")
	end
end

if data.raw["technology"]["solid-fuel"] then
   angelsmods.functions.OV.disable_technology("solid-fuel")
end

--URANIUM POWER OVERRIDE
if data.raw["item"]["fluorite"] then
   angelsmods.functions.OV.global_replace_item("fluorite", "fluorite-ore")
end