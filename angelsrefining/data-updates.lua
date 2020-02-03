if angelsmods.refining then
	--Fallbacks for the recipe builder
	require("prototypes.recipe-builder-fallbacks")
	--Overrides for refining/angels internal
	require("prototypes.refining-override")
	--Generic recipe generatio
	require("prototypes.refining-generate")
	--Overrides for resources
	require("prototypes.generation.angels-override")
end
if mods['bobplates'] and data.raw["item-subgroup"]["bob-gas-bottle"] then
	data.raw.technology["gas-canisters"].prerequisites={"fluid-handling"}
	data.raw.technology["gas-canisters"].enabled = true
	--local fluid_n=data.raw["fluid"]
	for _, fluid_n in pairs(data.raw.fluid) do
		if not fluid_n.auto_barrel==false then
			if string.sub(fluid_n.name,1,3)=="gas" then
				barrel_overrides(fluid_n.name,"gas")
			elseif not string.find(fluid_n.name,"acid")==nil or string.sub(fluid_n.name,-4)=="acid" then
				local acid=string.find(fluid_n.name,"acid")
				barrel_overrides(fluid_n.name,"acid")
			end
		end
	end
	--insert custom barrel replacements
	barrel_overrides("liquid-ferric-chloride-solution","acid")
	barrel_overrides("liquid-cupric-chloride-solution","acid")
end
-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
--Update resources autoplace
angelsmods.functions.update_autoplace()

--angelsmods.functions.index_check()
