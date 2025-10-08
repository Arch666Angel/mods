if angelsmods.addons.storage.warehouses then
  if angelsmods.addons.storage.icon_scaling then
    data.raw["container"]["angels-warehouse"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-passive-provider"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-active-provider"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-storage"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-requester"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-buffer"].scale_info_icons = true
  end

  if angelsmods.smelting then
    angelsmods.functions.OV.remove_prereq("angels-warehouses", "steel-processing")
    angelsmods.functions.OV.add_prereq("angels-warehouses", "angels-steel-smelting-1")
  end

  --OVERRIDE FOR BOBS
  --LOGISTICS
  if mods["boblogistics"] then
  else
    table.insert(data.raw.technology["angels-logistic-warehouses"].unit.ingredients, { "utility-science-pack", 1 })
  end

  --TECHNOLOGY
  if mods["bobtech"] and bobmods.tech.advanced_logistic_science then
    table.insert(
      data.raw.technology["angels-logistic-warehouses"].unit.ingredients,
      { "bob-advanced-logistic-science-pack", 1 }
    )
  end
end
