--pressure tanks
require("prototypes.pressure-tanks-override")
--warehouses
if angelsmods.addons.storage.icon_scaling then
  if angelsmods.addons.storage.oresilos then
    data.raw["container"]["silo"].scale_info_icons = true
    data.raw["container"]["silo-ore1"].scale_info_icons = true
    data.raw["container"]["silo-ore2"].scale_info_icons = true
    data.raw["container"]["silo-ore3"].scale_info_icons = true
    data.raw["container"]["silo-ore4"].scale_info_icons = true
    data.raw["container"]["silo-ore5"].scale_info_icons = true
    data.raw["container"]["silo-ore6"].scale_info_icons = true
    data.raw["container"]["silo-coal"].scale_info_icons = true
    data.raw["logistic-container"]["silo-active-provider"].scale_info_icons = true
    data.raw["logistic-container"]["silo-passive-provider"].scale_info_icons = true
    data.raw["logistic-container"]["silo-requester"].scale_info_icons = true
    data.raw["logistic-container"]["silo-storage"].scale_info_icons = true
    data.raw["logistic-container"]["silo-buffer"].scale_info_icons = true
  end
  if angelsmods.addons.storage.warehouses then
    data.raw["container"]["angels-warehouse"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-passive-provider"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-active-provider"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-storage"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-requester"].scale_info_icons = true
    data.raw["logistic-container"]["angels-warehouse-buffer"].scale_info_icons = true
  end
end
--ore-silo tech update
if angelsmods and angelsmods.refining then
  angelsmods.functions.OV.add_prereq("ore-silos", "ore-crushing")
end
--update subgroup locations
if angelsmods.industries then
  data.raw["item-subgroup"]["angels-silo"].group = "angels-logistics"
  data.raw["item-subgroup"]["angels-silo"].order = "ac[chests-silo]"
  data.raw["item-subgroup"]["angels-warehouse"].group = "angels-logistics"
  data.raw["item-subgroup"]["angels-warehouse"].order = "ad[chests-warehouse]"
  data.raw["item-subgroup"]["angels-ore-silo"].group = "angels-logistics"
  data.raw["item-subgroup"]["angels-ore-silo"].order = "ac[chests-silo]"
end