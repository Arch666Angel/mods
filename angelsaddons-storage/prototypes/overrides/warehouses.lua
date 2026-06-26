local OV = angelsmods.functions.OV

if angelsmods.addons.storage.warehouses then
  if angelsmods.addons.storage.icon_scaling then
    data.raw["container"]["angels-warehouse"].icon_draw_specification = { scale = 3.5, scale_for_many = 3.5 }
    data.raw["logistic-container"]["angels-warehouse-passive-provider"].icon_draw_specification =
      { scale = 3.5, scale_for_many = 3.5 }
    data.raw["logistic-container"]["angels-warehouse-active-provider"].icon_draw_specification =
      { scale = 3.5, scale_for_many = 3.5 }
    data.raw["logistic-container"]["angels-warehouse-storage"].icon_draw_specification =
      { scale = 3.5, scale_for_many = 3.5 }
    data.raw["logistic-container"]["angels-warehouse-requester"].icon_draw_specification =
      { scale = 3.5, scale_for_many = 3.5 }
    data.raw["logistic-container"]["angels-warehouse-buffer"].icon_draw_specification =
      { scale = 3.5, scale_for_many = 3.5 }
  end

  --OVERRIDE FOR BOBS
  --LOGISTICS
  if mods["boblogistics"] then
  else
    table.insert(data.raw.technology["angels-logistic-warehouses"].unit.ingredients, { "utility-science-pack", 1 })
    OV.add_prereq("angels-logistic-warehouses", "utility-science-pack")
  end

  --TECHNOLOGY
  if mods["bobtech"] and bobmods.tech.advanced_logistic_science then
    table.insert(
      data.raw.technology["angels-logistic-warehouses"].unit.ingredients,
      { "bob-advanced-logistic-science-pack", 1 }
    )
  end
end
