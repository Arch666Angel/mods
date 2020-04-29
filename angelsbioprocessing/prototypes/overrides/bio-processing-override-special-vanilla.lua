if is_special_vanilla(angelsmods.triggers.ores) then
  local OV = angelsmods.functions.OV

  -- Require powderizer for milling drum
  data.raw.technology["ore-powderizer"].enabled = true
  data.raw.technology["ore-advanced-floatation"].enabled = true
  data.raw.technology["ore-electro-whinning-cell"].enabled = true
  OV.disable_recipe(
    {
      "angelsore-crystal-mix6-processing",
      "electro-whinning-cell",
      "electro-whinning-cell-2",
      "electro-whinning-cell-3"
    }
  )
  OV.execute()
end
