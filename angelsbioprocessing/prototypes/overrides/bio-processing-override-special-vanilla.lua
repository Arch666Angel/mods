if angelsmods.refining and angelsmods.functions.is_special_vanilla() then
  local OV = angelsmods.functions.OV

  -- Require powderizer for milling drum
  data.raw.technology["ore-powderizer"].enabled = true
  data.raw.technology["ore-powderizer"].hidden = false
  data.raw.technology["ore-advanced-floatation"].enabled = true
  data.raw.technology["ore-advanced-floatation"].hidden = false
  OV.add_prereq("advanced-ore-refining-3", "ore-advanced-floatation")

  OV.disable_recipe({
    "electro-whinning-cell",
    "electro-whinning-cell-2",
  })

  OV.remove_prereq("ore-powderizer", "ore-advanced-crushing")

  OV.execute()
end
