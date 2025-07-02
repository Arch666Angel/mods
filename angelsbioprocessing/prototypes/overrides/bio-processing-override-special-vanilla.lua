if angelsmods.refining and angelsmods.functions.is_special_vanilla() then
  local OV = angelsmods.functions.OV

  -- Require powderizer for milling drum
  data.raw.technology["angels-ore-powderizer"].enabled = true
  data.raw.technology["angels-ore-powderizer"].hidden = false
  data.raw.technology["angels-ore-advanced-floatation"].enabled = true
  data.raw.technology["angels-ore-advanced-floatation"].hidden = false
  OV.add_prereq("angels-advanced-ore-refining-3", "angels-ore-advanced-floatation")

  OV.disable_recipe({
    "angels-electro-whinning-cell",
    "angels-electro-whinning-cell-2",
  })

  OV.remove_prereq("angels-ore-powderizer", "angels-ore-advanced-crushing")
  OV.remove_prereq("angels-ore-powderizer", "angels-advanced-ore-refining-1")

  OV.remove_prereq("angels-ore-advanced-floatation", "angels-chlorine-processing-1")
  OV.remove_prereq("angels-ore-advanced-floatation", "angels-thermal-water-extraction-2")
  OV.add_prereq("angels-ore-advanced-floatation", "chemical-science-pack")

  OV.execute()
end
