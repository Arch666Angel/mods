if mods["debugadapter"] then
	require("__debugadapter__/debugadapter.lua")
end
if angelsmods.bioprocessing then
	require("prototypes.bio-processing-override")
	require("prototypes.bio-processing-generate")
end
angelsmods.functions.OV.execute()
