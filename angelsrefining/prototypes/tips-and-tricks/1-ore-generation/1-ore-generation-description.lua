local tnt = angelsmods.functions.TNT
local description = { "tips-and-tricks-description.angels-ore-generation" }

local available_ores = { "" }

table.insert(available_ores, tnt.get_item_from_name("angels-ore1"))
table.insert(available_ores, tnt.get_item_from_name("angels-ore3"))
table.insert(available_ores, tnt.get_item_from_name("angels-ore4"))
table.insert(available_ores, tnt.get_item_from_name("angels-ore2"))

if not angelsmods.functions.is_special_vanilla() then
  table.insert(available_ores, tnt.get_item_from_name("angels-ore5"))
  table.insert(available_ores, tnt.get_item_from_name("angels-ore6"))
end

table.insert(description, available_ores)

local available_wells = { "" }

table.insert(available_wells, tnt.get_item_from_name("angels-fissure", "entity", ""))

table.insert(description, available_wells)

return description
