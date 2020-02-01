-- if angelsmods.refining then
	-- require("prototypes.generation.angels-override")
-- end

if (angelsmods.industries and angelsmods.industries.overhaul) or mods['bobplates'] then
    angelsmods.functions.create_barreling_fluid_subgroup()
end