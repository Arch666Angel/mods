	if bobmods and bobmods.plates then
	    data.raw["resource"]["angels-ore1"].localised_description={"entity-description.angels-ore1-bob", {}}
		data.raw["resource"]["angels-ore2"].localised_description={"entity-description.angels-ore2-bob", {}}
		data.raw["resource"]["angels-ore3"].localised_description={"entity-description.angels-ore3-bob", {}}
		data.raw["resource"]["angels-ore4"].localised_description={"entity-description.angels-ore4-bob", {}}
		data.raw["resource"]["angels-ore5"].localised_description={"entity-description.angels-ore5-bob"}
		data.raw["resource"]["angels-ore6"].localised_description={"entity-description.angels-ore6-bob"}
		
	    data.raw["item"]["angels-ore1"].localised_description={"entity-description.angels-ore1-bob", {}}
		data.raw["item"]["angels-ore2"].localised_description={"entity-description.angels-ore2-bob", {}}
		data.raw["item"]["angels-ore3"].localised_description={"entity-description.angels-ore3-bob", {}}
		data.raw["item"]["angels-ore4"].localised_description={"entity-description.angels-ore4-bob", {}}
		data.raw["item"]["angels-ore5"].localised_description={"entity-description.angels-ore5-bob"}
		data.raw["item"]["angels-ore6"].localised_description={"entity-description.angels-ore6-bob"}
		if data.raw.resource["y-res1"] then
			data.raw["resource"]["angels-ore1"].localised_description={"entity-description.angels-ore1-bob", {"item-name.y-res1"}}
			data.raw["resource"]["angels-ore3"].localised_description={"entity-description.angels-ore3-bob", {"item-name.y-res2"}}
		end
		if data.raw.resource["uraninite"] then
			data.raw["resource"]["angels-ore2"].localised_description={"entity-description.angels-ore2-bob", {"item-name.uraninite"}}
			data.raw["resource"]["angels-ore4"].localised_description={"entity-description.angels-ore4-bob", {"item-name.fluorite"}}
		end
		if angelsmods.ores.enableinfiniteores then
			data.raw["resource"]["infinite-angels-ore1"].localised_description={"entity-description.angels-ore1-bob"}
			data.raw["resource"]["infinite-angels-ore2"].localised_description={"entity-description.angels-ore2-bob"}
			data.raw["resource"]["infinite-angels-ore3"].localised_description={"entity-description.angels-ore3-bob"}
			data.raw["resource"]["infinite-angels-ore4"].localised_description={"entity-description.angels-ore4-bob"}
			data.raw["resource"]["infinite-angels-ore5"].localised_description={"entity-description.angels-ore5-bob"}
			data.raw["resource"]["infinite-angels-ore6"].localised_description={"entity-description.angels-ore6-bob"}
			if data.raw.resource["y-res1"] then
				data.raw["resource"]["infinite-angels-ore1"].localised_description={"entity-description.angels-ore1-bob", {"item-name.y-res1"}}
				data.raw["resource"]["infinite-angels-ore3"].localised_description={"entity-description.angels-ore3-bob", {"item-name.y-res2"}}
			end
			if data.raw.resource["uraninite"] then
				data.raw["resource"]["infinite-angels-ore2"].localised_description={"entity-description.angels-ore2-bob", {"item-name.uraninite"}}
				data.raw["resource"]["infinite-angels-ore4"].localised_description={"entity-description.angels-ore4-bob", {"item-name.fluorite"}}
			end
		end
		else if angelsmods.components then
			data.raw["resource"]["angels-ore1"].localised_description={"entity-description.angels-ore1-angel"}
	    else
			data.raw["resource"]["angels-ore1"].localised_description={"entity-description.angels-ore1-vanilla"}
			data.raw["resource"]["angels-ore2"].localised_description={"entity-description.angels-ore2-vanilla"}
			data.raw["resource"]["angels-ore3"].localised_description={"entity-description.angels-ore3-vanilla"}
			data.raw["resource"]["angels-ore4"].localised_description={"entity-description.angels-ore4-vanilla"}
			data.raw["resource"]["angels-ore5"].localised_description={"entity-description.angels-ore5-vanilla"}
			data.raw["resource"]["angels-ore6"].localised_description={"entity-description.angels-ore6-vanilla"}
		end
	end