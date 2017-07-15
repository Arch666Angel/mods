if angelsmods and angelsmods.refining then
   angelsmods.functions.OV.add_prereq("ore-silos", "ore-crushing")
   data.raw["item-subgroup"]["angels-silos"].group = "resource-refining"
end

if angelsmods.addons.silo_icon then
	data.raw["container"]["silo-ore1"].scale_info_icons = true
	data.raw["container"]["silo-ore2"].scale_info_icons = true
	data.raw["container"]["silo-ore3"].scale_info_icons = true
	data.raw["container"]["silo-ore4"].scale_info_icons = true
	data.raw["container"]["silo-ore5"].scale_info_icons = true
	data.raw["container"]["silo-ore6"].scale_info_icons = true
	data.raw["container"]["silo-coal"].scale_info_icons = true
end