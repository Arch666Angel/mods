if angelsmods and angelsmods.refining then
   angelsmods.functions.OV.add_prereq("ore-silos", "ore-crushing")
   data.raw["item-subgroup"]["angels-silos"].group = "resource-refining"
end