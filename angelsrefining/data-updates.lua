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

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
--Update resources autoplace
angelsmods.functions.update_autoplace()

--angelsmods.functions.index_check()
