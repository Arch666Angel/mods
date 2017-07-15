   angelsmods.functions.OV.disable_technology({ "angels-yellow-loader", "angels-red-loader", "angels-blue-loader" })
   --angelsmods.functions.OV.disable_technology("angels-construction-robots")

if data.raw["equipment-category"]["armoured-vehicle"] then
	table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories,"vehicle")
end

-- if data.raw["technology"]["loader"] then
    -- angelsmods.functions.OV.disable_technology({ "angels-yellow-loader", "angels-red-loader", "angels-blue-loader" })  	
-- end