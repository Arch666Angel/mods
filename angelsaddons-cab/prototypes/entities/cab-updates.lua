if not mods["angelsindustries"] then
  -- remove none existing angels stuff
  local cabEquipmentCategories = data.raw["equipment-grid"]["angels-cab"].equipment_categories
  local equipmentCategories = util.table.deepcopy(cabEquipmentCategories)
  for _, equipmentCategory in pairs(equipmentCategories) do
    if not data.raw["equipment-category"][equipmentCategory] then
      for index, category in pairs(cabEquipmentCategories) do
        if category == equipmentCategory then
          table.remove(cabEquipmentCategories, index)
        end
      end
    end
  end

  -- replace with vanilla stuff
  for _, equipmentType in pairs({
    --"night-vision-equipment",
    --"energy-shield-equipment",
    "battery-equipment",
    "solar-panel-equipment",
    "generator-equipment",
    --"active-defense-equipment",
    --"active-defense-equipment",
    --"movement-bonus-equipment",
    "roboport-equipment",
    --"belt-immunity-equipment",
  }) do
    for _, equipment in pairs(data.raw[equipmentType]) do
      table.insert(equipment.categories, "angels-void")
    end
  end
end
