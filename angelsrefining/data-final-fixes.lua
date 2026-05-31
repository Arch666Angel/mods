for _, fluid_n in pairs(data.raw.fluid) do
  if fluid_n.auto_barrel == false then
    angelsmods.functions.disable_barreling_recipes(fluid_n.name)
  end
end

--MODIFY BARRELING RECIPES
angelsmods.functions.modify_barreling_recipes()
angelsmods.functions.create_barreling_fluid_subgroup()

require("prototypes.tips-and-tricks.tips-and-tricks")

-- SeaBlock owns the broad Factorio 2.0 prototype normalizer.  Angel's Refining
-- still creates/edits barreling recipes in final fixes, so rerun the shared
-- pass when SeaBlock is loaded to catch any late legacy fields.
if seablock and seablock.factorio_2_0_compat then
  seablock.factorio_2_0_compat()
end
