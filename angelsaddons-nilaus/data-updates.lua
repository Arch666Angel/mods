require("prototypes/TP-update")

if aai_industry and data.raw.item["electric-motor"] then
  table.insert(data.raw.recipe["nilaus-truck"].normal.ingredients, { "electric-motor", 5 })
  table.insert(data.raw.recipe["nilaus-truck"].expensive.ingredients, { "electric-motor", 10 })
  table.insert(data.raw.technology["nilaus-truck"].prerequisites, "electricity")
end

local function has_vehicle_equipment()
  local checks = { "car", "vehicle", "angels-movement" }
  for _, check in pairs(checks) do
    if data.raw["equipment-category"][check] then
      return true
    end
  end
  return false
end

local function add_equip_category_if_exists(grid, entry)
  if data.raw["equipment-category"][entry] then
    table.insert(data.raw["equipment-grid"][grid].equipment_categories, entry)
  end
end

if has_vehicle_equipment() then
  data.raw["car"]["nilaus-truck"].equipment_grid = "deco-nilaustruck"
  data.raw["car"]["nilaus-truck-2"].equipment_grid = "deco-nilaustruck"
  add_equip_category_if_exists("deco-nilaustruck", "car")
  add_equip_category_if_exists("deco-nilaustruck", "vehicle")
  add_equip_category_if_exists("deco-nilaustruck", "angels-energy")
  add_equip_category_if_exists("deco-nilaustruck", "angels-repair")
  add_equip_category_if_exists("deco-nilaustruck", "angels-heavy-defense")
  add_equip_category_if_exists("deco-nilaustruck", "angels-construction")
  add_equip_category_if_exists("deco-nilaustruck", "angels-movement")

  if angelsmods and angelsmods.industries then
    data.raw["item-with-entity-data"]["nilaus-truck"].subgroup = "angels-vehicle-car"
    data.raw["item-with-entity-data"]["nilaus-truck"].order = "a[car]-b[nilaus-truck]"
    data.raw["item-with-entity-data"]["nilaus-truck-2"].subgroup = "angels-vehicle-car"
    data.raw["item-with-entity-data"]["nilaus-truck-2"].order = "a[car]-b[nilaus-truck-mk2]"
  end
end
