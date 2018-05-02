--BASE GAME
if data.raw.resource["iron-ore"] then
	data.raw.resource["iron-ore"]["autoplace"].enabled = false
	data.raw.resource["iron-ore"]["autoplace"] = nil
	data.raw["autoplace-control"]["iron-ore"] = nil
end
if data.raw.resource["copper-ore"] then
	data.raw.resource["copper-ore"]["autoplace"] = nil
	data.raw["autoplace-control"]["copper-ore"] = nil
end
if data.raw.resource["stone"] then
	data.raw.resource["stone"]["autoplace"] = nil
	data.raw["autoplace-control"]["stone"] = nil
end

--ANGELS
if not angelsmods.industry and not (bobmods and bobmods.plates) then
	data.raw.resource["angels-ore5"] = nil
	data.raw["autoplace-control"]["angels-ore5"] = nil

	data.raw.resource["angels-ore6"] = nil
	data.raw["autoplace-control"]["angels-ore6"] = nil
	if data.raw.resource["infinite-angels-ore5"] then
		data.raw.resource["infinite-angels-ore5"] = nil
		data.raw["autoplace-control"]["infinite-angels-ore5"] = nil

		data.raw.resource["infinite-angels-ore6"] = nil
		data.raw["autoplace-control"]["infinite-angels-ore6"] = nil
	end
end

if data.raw.resource["uranium-ore"] and angelsmods.refining and ((bobmods and bobmods.plates) or angelsmods.industry) then
	data.raw.resource["uranium-ore"]["autoplace"] = nil
	data.raw["autoplace-control"]["uranium-ore"] = nil
end

--BOBMODS
if bobmods and bobmods.ores then
data.raw.resource["bauxite-ore"] = nil
data.raw["autoplace-control"]["bauxite-ore"] = nil

data.raw.resource["cobalt-ore"] = nil
data.raw["autoplace-control"]["cobalt-ore"] = nil

data.raw.resource["gem-ore"] = nil
data.raw["autoplace-control"]["gem-ore"] = nil

data.raw.resource["gold-ore"] = nil
data.raw["autoplace-control"]["gold-ore"] = nil

data.raw.resource["lead-ore"] = nil
data.raw["autoplace-control"]["lead-ore"] = nil

data.raw.resource["nickel-ore"] = nil
data.raw["autoplace-control"]["nickel-ore"] = nil

data.raw.resource["quartz"] = nil
data.raw["autoplace-control"]["quartz"] = nil

data.raw.resource["rutile-ore"] = nil
data.raw["autoplace-control"]["rutile-ore"] = nil

data.raw.resource["silver-ore"] = nil
data.raw["autoplace-control"]["silver-ore"] = nil

data.raw.resource["sulfur"] = nil
data.raw["autoplace-control"]["sulfur"] = nil

data.raw.resource["tin-ore"] = nil
data.raw["autoplace-control"]["tin-ore"] = nil

data.raw.resource["tungsten-ore"] = nil
data.raw["autoplace-control"]["tungsten-ore"] = nil

data.raw.resource["zinc-ore"] = nil
data.raw["autoplace-control"]["zinc-ore"] = nil

data.raw.resource["lithia-water"] = nil
data.raw["autoplace-control"]["lithia-water"] = nil

data.raw.resource["ground-water"] = nil
data.raw["autoplace-control"]["ground-water"] = nil
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


data.raw["map-gen-presets"]["default"]["rail-world"] =
    {
      order = "e",
      basic_settings =
      {
        autoplace_controls = {
		  ["angels-ore1"] = {
            frequency = "very-low",
            size = "high"
          },
		  ["angels-ore2"] = {
            frequency = "very-low",
            size = "high"
          },
		  ["angels-ore3"] = {
            frequency = "very-low",
            size = "high"
          },
		  ["angels-ore4"] = {
            frequency = "very-low",
            size = "high"
          },
          ["coal"] = {
            frequency = "very-low",
            size = "high"
          },
          ["crude-oil"] = {
            frequency = "low",
            size = "high"
          },
          ["angels-fissure"] = {
            frequency = "low",
            size = "high"
          },
          ["enemy-base"] = {
            frequency = "low",
          },
        },
        terrain_segmentation = "very-low",
        water = "high",
      },
      advanced_settings =
      {
        enemy_evolution =
        {
          time_factor = 0.000002
        },
        enemy_expansion =
        {
         enabled = false
        }
      }
    }

if angelsmods.industry or (bobmods and bobmods.plates) then
	data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls["angels-ore5"] = { richness = "very-good"}
	data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls["angels-ore6"] = { richness = "very-good"}
		
	data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls["angels-ore5"] = {frequency = "very-low", size = "high"}
	data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls["angels-ore6"] = {frequency = "very-low", size = "high"}
end