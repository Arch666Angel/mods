if not angelsmods.refining.disable_ore_override then
	--BASE GAME
	angelsmods.functions.remove_resource("iron-ore")
	angelsmods.functions.remove_resource("copper-ore")
	angelsmods.functions.remove_resource("stone")

		--ANGELS
	if not angelsmods.industries and not (bobmods and bobmods.plates) then
		angelsmods.functions.remove_resource("angels-ore5")
		angelsmods.functions.remove_resource("angels-ore6")
	end

	if data.raw.resource["uranium-ore"] and angelsmods.refining and ((bobmods and bobmods.plates) or angelsmods.industries) then
		angelsmods.functions.remove_resource("uranium-ore")
	end

	--BOBMODS
	if bobmods and bobmods.ores then
		angelsmods.functions.remove_resource("bauxite-ore")
		angelsmods.functions.remove_resource("cobalt-ore")
		angelsmods.functions.remove_resource("gem-ore")
		angelsmods.functions.remove_resource("gold-ore")
		angelsmods.functions.remove_resource("lead-ore")
		angelsmods.functions.remove_resource("nickel-ore")
		angelsmods.functions.remove_resource("quartz")
		angelsmods.functions.remove_resource("rutile-ore")
		angelsmods.functions.remove_resource("silver-ore")
		angelsmods.functions.remove_resource("sulfur")
		angelsmods.functions.remove_resource("tin-ore")
		angelsmods.functions.remove_resource("tungsten-ore")
		angelsmods.functions.remove_resource("zinc-ore")
		angelsmods.functions.remove_resource("lithia-water")
		angelsmods.functions.remove_resource("ground-water")
	end

	--YUOKI
	if data.raw.resource["y-res1"] then
		data.raw.resource["y-res1"] = nil
		data.raw["autoplace-control"]["y-res1"] = nil

		data.raw.resource["y-res2"] = nil
		data.raw["autoplace-control"]["y-res2"] = nil
	end

	--URANIUM POWER
	if data.raw.resource["uraninite"] then
		data.raw.resource["fluorite"] = nil
		data.raw["autoplace-control"]["fluorite"] = nil
		data.raw["item"]["fluorite"].icon="__angelsinfiniteores__/graphics/icons/up-fluorite.png"

		data.raw.resource["uraninite"] = nil
		data.raw["autoplace-control"]["uraninite"] = nil
		data.raw["item"]["uraninite"].icon="__angelsinfiniteores__/graphics/icons/up-uraninite.png"
	end
end

--MODIFY MAP GEN PRESETS
data.raw["map-gen-presets"]["default"]["rich-resources"] =
{
	order = "b",
	basic_settings =
	{
		autoplace_controls =
		{
			["angels-ore1"] = { richness = "very-good"},
			["angels-ore2"] = { richness = "very-good"},
			["angels-ore3"] = { richness = "very-good"},
			["angels-ore4"] = { richness = "very-good"},
			["coal"] = { richness = "very-good"},
			["crude-oil"] = { richness = "very-good"},
			["angels-fissure"] = { richness = "very-good"},
		}
	}
}

data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings =
{
    property_expression_names = {},
	autoplace_controls = {
		["angels-ore1"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["angels-ore2"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["angels-ore3"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["angels-ore4"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["coal"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["crude-oil"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["angels-fissure"] = {
			frequency = 0.33333333333,
			size = 3
		},
		["enemy-base"] = {
			size = 0.5
		},
	},
	terrain_segmentation = "very-low",
	water = "high",
}

data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings =
{
	autoplace_controls = {
		["angels-ore1"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		},
		["angels-ore2"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		},
		["angels-ore3"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		},
		["angels-ore4"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		},
		["coal"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		},
		["crude-oil"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		},
		["angels-fissure"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
		}
	},
	terrain_segmentation = 4,
	water = 0.25,
	starting_area = 3,
	height = 128
}

if angelsmods.industries or (bobmods and bobmods.plates) then
	data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls["angels-ore5"] = { richness = "very-good"}
	data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls["angels-ore6"] = { richness = "very-good"}

	data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings.autoplace_controls["angels-ore5"] = {frequency = 0.33333333333,	size = 3}
	data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings.autoplace_controls["angels-ore6"] = {frequency = 0.33333333333,	size = 3}
	
	data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings.autoplace_controls["angels-ore5"] = {frequency = 3,	size = 0.5, richness = 2}
	data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings.autoplace_controls["angels-ore6"] = {frequency = 3,	size = 0.5, richness = 2}
end
