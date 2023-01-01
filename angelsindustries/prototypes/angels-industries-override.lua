local OV = angelsmods.functions.OV

OV.disable_technology({ "angels-yellow-loader", "angels-red-loader", "angels-blue-loader" })
OV.add_unlock("optics", "angels-lamp")

if mods["boblogistics"] then
  OV.remove_science_pack("angels-ghosting-construction-robots", "chemical-science-pack")
end

if mods["bobvehicleequipment"] then
  -- crawler
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories, "car")
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories, "vehicle")
end

OV.execute()

--UPDATE RECIPES FOR ENTITIES
require("prototypes.overrides.components-entity-update")

--UPDATE NON-BLOCK COMPONENTS
require("prototypes.overrides.components-recipe-update")
require("prototypes.overrides.components-productivity-update")
require("prototypes.overrides.components-block-update")
OV.execute()

--UPDATE NUCLEAR OVERHAUL
require("prototypes.overrides.overhaul-nuclear-power")

--UPDATE TECHNOLOGY
require("prototypes.overrides.tech-mod-update")
OV.execute()

require("prototypes.overrides.tech-productivity-update")
OV.execute()
