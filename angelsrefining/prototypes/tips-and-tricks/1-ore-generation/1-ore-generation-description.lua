local description = {"tips-and-tricks-description.angels-ore-generation"}

local function get_ore_from_name(ore_name, item_type, before)
  before = before or "- "
  item_type = item_type or "item"
  return {"", before .. "[" .. "img=" .. item_type .. "/" .. ore_name .. "] ", {item_type .. "-name." .. ore_name}, "\n"}
end

local available_ores = {""}

table.insert(available_ores, get_ore_from_name("angels-ore1"))
table.insert(available_ores, get_ore_from_name("angels-ore3"))
table.insert(available_ores, get_ore_from_name("angels-ore4"))
table.insert(available_ores, get_ore_from_name("angels-ore2"))

if not angelsmods.functions.is_special_vanilla() then
  table.insert(available_ores, get_ore_from_name("angels-ore5"))
  table.insert(available_ores, get_ore_from_name("angels-ore6"))
end

table.insert(description, available_ores)

local available_wells = {""}

table.insert(available_wells, get_ore_from_name("angels-fissure", "entity", ""))

table.insert(description, available_wells)

return description