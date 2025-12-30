-- remove non-existing angels stuff
for _, entity in pairs({"angels-cab", "angels-crawler"}) do
  local entityEquipmentCategories = data.raw["equipment-grid"][entity].equipment_categories
  local equipmentCategories = util.table.deepcopy(entityEquipmentCategories)
  for _, equipmentCategory in pairs(equipmentCategories) do
    if not data.raw["equipment-category"][equipmentCategory] then
      for index, category in pairs(entityEquipmentCategories) do
        if category == equipmentCategory then
          table.remove(entityEquipmentCategories, index)
        end
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

if mods["bobvehicleequipment"] then
  -- crawler
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories, "car")
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories, "vehicle")
  -- cab
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "tank")
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "vehicle")
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "armoured-vehicle")
end
