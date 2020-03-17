local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")

if mods['bobplates'] then
end
if mods['bobassembly'] then
end
if mods['bobgreenhouse'] then
end
if mods['bobclasses'] then
end
if mods['bobmining'] then
end
if mods['bobmodules'] then
	OV.remove_science_pack("effect-transmission-2", "datacore-processing-1")
	OV.remove_science_pack("effect-transmission-3", "datacore-processing-1")
end
if mods['boblogistics'] then
end
if mods['bobwarfare'] then
end
if mods['bobvehicleequipment'] then
end
if mods['bobequipment'] then
end
if mods['bobpower'] then
end
if mods['bobrevamp'] then
end
if mods['bobtech'] then
end
-- now upgrade the cores to tier 2 and let them depend on the correct technology
core_tier_upgrade()
OV.execute()
-- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
tech_unlock_reset()
OV.execute()
