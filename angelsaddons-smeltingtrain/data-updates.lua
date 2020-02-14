if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.smeltingtrain-updates")
  end
  data.raw["item-subgroup"]["angels-smeltingtrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-smeltingtrain"].order = "bc[smelting-train]"
end

if mods['bobvehicleequipment'] then
  -- smelting locomotive
  table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories,"train")
  table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories,"vehicle")
  table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories,"locomotive")
  -- smelting wagon
  table.insert(data.raw["equipment-grid"]["angels-smelting-wagon"].equipment_categories,"train")
  table.insert(data.raw["equipment-grid"]["angels-smelting-wagon"].equipment_categories,"vehicle")
end