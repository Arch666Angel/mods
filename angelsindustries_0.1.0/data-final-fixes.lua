local OV = angelsmods.functions.OV

if angelsmods.industries.tech then
	--GLOBAL REPLACE ALL VANILLA PACKS
	OV.global_replace_science_packs("high-tech-science-pack", {"science-pack-1", "science-pack-2", "science-pack-3"}, "angels-science-pack-yellow")
	OV.global_replace_science_packs("science-pack-3", {"science-pack-1", "science-pack-2"}, "angels-science-pack-blue")
	OV.global_replace_science_packs("science-pack-2", {"science-pack-1"}, "angels-science-pack-green")
	OV.global_replace_science_packs("science-pack-1", {}, "angels-science-pack-red")
	OV.global_replace_science_packs("production-science-pack", {}, "datacore-processing-1", 2)
	OV.global_replace_science_packs("military-science-pack", {}, "datacore-war-1", 2)

	OV.execute()

	--ADD MANUAL OVERRIDES FOR DATACORES AND EXCEPTIONS TO TECH OVERRIDES
	require("prototypes.overrides.angels-tech-data")
	require("prototypes.overrides.angels-tech-base")
	require("prototypes.overrides.angels-tech-angels")

	OV.execute()

	--MODIFY ALL TECHS ACCORDING TO TIERS
	angelsmods.industries.techtiers = {
		grey = { amount = 32,  time = 10 },		--BURNER
		red = {  amount = 64, time = 20 },		--AUTOMATION
		green = { amount = 128, time = 30 },	--TRAINS
		orange = { amount = 256, time = 40 },	--OIL
		blue = { amount = 512, time = 50 },	--ROBOTS
		yellow = { amount = 1024, time = 60 }	--ENDGAME
	}

	angelsmods.marathon.tech_amount_multi = 1
	angelsmods.marathon.tech_time_multi = 1

	for techname, technology in pairs(data.raw.technology) do
		if angelsmods.functions.check_exception(techname, angelsmods.industries.tech_exceptions) then
			--UNTIE TECHS FROM EACH OTHER
			--technology.prerequisites = {}
			--SET AMOUNT AND TIME REQUIRED FOR TECH TO FINISH
			if technology.unit.ingredients and not technology.max_level then
				for i, ingredients in pairs(technology.unit.ingredients[1]) do
					if ingredients == "angels-science-pack-grey" then
						OV.set_research_difficulty(techname, angelsmods.industries.techtiers.grey.time * angelsmods.marathon.tech_time_multi, angelsmods.industries.techtiers.grey.amount * angelsmods.marathon.tech_amount_multi)
					end
					if  ingredients == "angels-science-pack-red" then
						OV.add_prereq(techname, "tech-red-labs")
						OV.set_research_difficulty(techname, angelsmods.industries.techtiers.red.time * angelsmods.marathon.tech_time_multi, angelsmods.industries.techtiers.red.amount * angelsmods.marathon.tech_amount_multi)
					end
					if  ingredients == "angels-science-pack-green" then
						OV.add_prereq(techname, "tech-green-labs")
						OV.set_research_difficulty(techname, angelsmods.industries.techtiers.green.time * angelsmods.marathon.tech_time_multi, angelsmods.industries.techtiers.green.amount * angelsmods.marathon.tech_amount_multi)
					end
					if  ingredients == "angels-science-pack-orange" then
						OV.add_prereq(techname, "tech-orange-labs")
						OV.set_research_difficulty(techname, angelsmods.industries.techtiers.orange.time * angelsmods.marathon.tech_time_multi, angelsmods.industries.techtiers.orange.amount * angelsmods.marathon.tech_amount_multi)
					end
					if  ingredients == "angels-science-pack-blue" then
						OV.add_prereq(techname, "tech-blue-labs")
						OV.set_research_difficulty(techname, angelsmods.industries.techtiers.blue.time * angelsmods.marathon.tech_time_multi, angelsmods.industries.techtiers.blue.amount * angelsmods.marathon.tech_amount_multi)
					end
					if  ingredients == "angels-science-pack-yellow" then
						OV.add_prereq(techname, "tech-yellow-labs")
						OV.set_research_difficulty(techname, angelsmods.industries.techtiers.yellow.time * angelsmods.marathon.tech_time_multi, angelsmods.industries.techtiers.yellow.amount * angelsmods.marathon.tech_amount_multi)
					end

				end
			end
			--ADD BASIC DATACORES TO TECHS MISSING MANUAL OVERRIDES
			if (technology.unit.ingredients[1][1] and string.sub(technology.unit.ingredients[1][1], 1, 19) == "angels-science-pack") and not technology.unit.ingredients[2] then
				OV.set_science_pack(techname, "datacore-basic", 2)
				log(serpent.block(techname))
			end
		end	

	end
	OV.execute()
end

if angelsmods.industries.components then 
	--MODIFY MINABLE RESULTS TO DROP BLOCKS
	for _, recipes in pairs(data.raw.recipe) do
		if recipes.normal and recipes.normal.ingredients then
			for _, subtab in pairs(recipes.normal.ingredients) do
				for _, ingredient in pairs(subtab) do
					if type(ingredient) == string and string.sub(ingredient, 1, 6) == "block-" then
						if data.raw["assembling-machine"][recipes.normal.result] then
							data.raw["assembling-machine"][recipes.normal.result].minable.results = recipes.normal.ingredients
						end
						if data.raw["furnace"][recipes.normal.result] then
							data.raw["furnace"][recipes.normal.result].minable.results = recipes.normal.ingredients
						end
					end
				end
			end
		end
	end
end

if not loaders_graphics then
	data.raw["item"]["loader"].icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png"
	data.raw["loader"]["loader"].icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png"
	data.raw["loader"]["loader"].structure =
		{
		  direction_in =
		  {
			sheet =
			{
			  filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			},
		  },
		  direction_out =
		  {
			sheet =
			{
			  filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  y = 128
			}
		  },
		}
		
	data.raw["item"]["fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-red-ico.png"
	data.raw["loader"]["fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-red-ico.png"
	data.raw["loader"]["fast-loader"].structure =
		{
		  direction_in =
		  {
			sheet =
			{
			  filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			},
		  },
		  direction_out =
		  {
			sheet =
			{
			  filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  y = 128
			}
		  },
		}

	data.raw["item"]["express-loader"].icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png"
	data.raw["loader"]["express-loader"].icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png"
	data.raw["loader"]["express-loader"].structure =
		{
		  direction_in =
		  {
			sheet =
			{
			  filename = "__angelsindustries__/graphics/entity/loader/loader-blue.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			},
		  },
		  direction_out =
		  {
			sheet =
			{
			  filename = "__angelsindustries__/graphics/entity/loader/loader-blue.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  y = 128
			}
		  },
		}
		
	if data.raw["item"]["faster-loader"] then
		data.raw["item"]["faster-loader"].icon = "__angelsindustries__/graphics/icons/loader-green-ico.png"
		data.raw["loader"]["faster-loader"].icon = "__angelsindustries__/graphics/icons/loader-green-ico.png"
		data.raw["loader"]["faster-loader"].structure =
			{
			  direction_in =
			  {
				sheet =
				{
				  filename = "__angelsindustries__/graphics/entity/loader/loader-green.png",
				  priority = "extra-high",
				  width = 128,
				  height = 128,
				},
			  },
			  direction_out =
			  {
				sheet =
				{
				  filename = "__angelsindustries__/graphics/entity/loader/loader-green.png",
				  priority = "extra-high",
				  width = 128,
				  height = 128,
				  y = 128
				}
			  },
			}
	end
	if data.raw["item"]["extremely-fast-loader"] then
		data.raw["item"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-purple-ico.png"
		data.raw["loader"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-purple-ico.png"
		data.raw["loader"]["extremely-fast-loader"].structure =
			{
			  direction_in =
			  {
				sheet =
				{
				  filename = "__angelsindustries__/graphics/entity/loader/loader-purple.png",
				  priority = "extra-high",
				  width = 128,
				  height = 128,
				},
			  },
			  direction_out =
			  {
				sheet =
				{
				  filename = "__angelsindustries__/graphics/entity/loader/loader-purple.png",
				  priority = "extra-high",
				  width = 128,
				  height = 128,
				  y = 128
				}
			  },
			}
	end
	if data.raw["technology"]["loader"] then
		data.raw["technology"]["loader"].icon = "__angelsindustries__/graphics/technology/yellow-loader-tech.png"
		data.raw["technology"]["loader"].icon_size = 128
	end
	if data.raw["technology"]["fast-loader"] then
		data.raw["technology"]["fast-loader"].icon = "__angelsindustries__/graphics/technology/red-loader-tech.png"
		data.raw["technology"]["fast-loader"].icon_size = 128
	end
	if data.raw["technology"]["express-loader"] then
		data.raw["technology"]["express-loader"].icon = "__angelsindustries__/graphics/technology/blue-loader-tech.png"
		data.raw["technology"]["express-loader"].icon_size = 128
	end
	if data.raw["technology"]["faster-loader"] then
		data.raw["technology"]["faster-loader"].icon = "__angelsindustries__/graphics/technology/green-loader-tech.png"
		data.raw["technology"]["faster-loader"].icon_size = 128
	end
	if data.raw["technology"]["extremely-fast-loader"] then
		data.raw["technology"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/technology/purple-loader-tech.png"
		data.raw["technology"]["extremely-fast-loader"].icon_size = 128
	end
end