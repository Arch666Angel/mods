--OVERRIDE FOR TECH

-- local greytech = 64			--BURNER
-- local redtech = 128			--AUTOMATION
-- local greentech = 256		--TRAINS
-- local orangetech = 512		--OIL
-- local bluetech = 1024		--ROBOTS
-- local yellowtech = 2048		--ENDGAME

--GLOBAL OVERRIDES
angelsmods.functions.OV.global_replace_science_packs("alien-science-pack", {"science-pack-1", "science-pack-2", "science-pack-3"}, "angels-science-pack-yellow")
angelsmods.functions.OV.global_replace_science_packs("science-pack-3", {"science-pack-1", "science-pack-2"}, "angels-science-pack-blue")
angelsmods.functions.OV.global_replace_science_packs("science-pack-2", {"science-pack-1"}, "angels-science-pack-green")
angelsmods.functions.OV.global_replace_science_packs("science-pack-1", {}, "angels-science-pack-red")

--BASE GAME
require("prototypes.overrides.angels-tech-base")
--ANGELS
if angelsmods then
	require("prototypes.overrides.angels-tech-angels")
end
--BOBS
--require("prototypes.angels-tech-category")