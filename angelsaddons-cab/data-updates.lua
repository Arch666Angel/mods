require("prototypes.recipes.cab-updates")
require("prototypes.entities.cab-updates")
require("prototypes.tips-and-tricks.tips-and-tricks")

if mods["bobvehicleequipment"] then
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "tank")
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "vehicle")
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "armoured-vehicle")
end

require("prototypes.angelsaddons-cab-override")