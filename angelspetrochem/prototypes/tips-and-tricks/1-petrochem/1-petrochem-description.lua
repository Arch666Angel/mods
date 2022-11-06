local description = { "tips-and-tricks-description.angels-petrochem" }

local function get_item_from_name(item_name, item_type, before)
  before = before or "- "
  item_type = item_type or "item"
  return {
    "",
    before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ",
    { item_type .. "-name." .. item_name },
    "\n",
  }
end
local one = { "" }
table.insert(one, get_item_from_name("plastic-bar"))
table.insert(one, get_item_from_name("explosives"))
if not angelsmods.functions.is_special_vanilla() then
  table.insert(one, get_item_from_name(data.raw.item["resin"] and "resin" or "solid-resin"))
  table.insert(one, get_item_from_name(data.raw.item["rubber"] and "rubber" or "solid-rubber"))
end
table.insert(one, get_item_from_name("liquid-sulfuric-acid", "fluid"))
table.insert(one, { "", "- [img=item/solid-fuel]", " and various fuels", "\n" })
table.insert(description, one)

local two = { "" }
table.insert(two, get_item_from_name("angels-natural-gas", "entity", ""))

table.insert(description, two)

return description
