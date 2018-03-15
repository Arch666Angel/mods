--OVERRIDE FOR TECH

-- local greytech = 64			--BURNER
-- local redtech = 128			--AUTOMATION
-- local greentech = 256		--TRAINS
-- local orangetech = 512		--OIL
-- local bluetech = 1024		--ROBOTS
-- local yellowtech = 2048		--ENDGAME

--GLOBAL OVERRIDES
-- angelsmods.functions.OV.global_replace_science_packs("high-tech-science-pack", {"science-pack-1", "science-pack-2", "science-pack-3"}, "angels-science-pack-yellow")
-- angelsmods.functions.OV.global_replace_science_packs("science-pack-3", {"science-pack-1", "science-pack-2"}, "angels-science-pack-blue")
-- angelsmods.functions.OV.global_replace_science_packs("science-pack-2", {"science-pack-1"}, "angels-science-pack-green")
-- angelsmods.functions.OV.global_replace_science_packs("science-pack-1", {}, "angels-science-pack-red")
-- angelsmods.functions.OV.global_replace_science_packs("production-science-pack", {}, "datacore-processing-1")
-- angelsmods.functions.OV.global_replace_science_packs("military-science-pack", {}, "datacore-war-1")

--BASE GAME
--require("prototypes.overrides.angels-tech-base")
--ANGELS
-- if angelsmods then
	-- require("prototypes.overrides.angels-tech-angels")
-- end
--BOBS
--require("prototypes.angels-tech-category")

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