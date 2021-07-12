local description = {
  "",
  {"tips-and-tricks-description.nauvis-algae"},
}

local function get_item_from_name(item_name, item_type, before)
  before = before or "- "
  item_type = item_type or "item"
  return {"", before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ", {item_type .. "-name." .. item_name}, "\n"}
end

local items = {""}
table.insert(items, get_item_from_name("algae-green"))
table.insert(items,{"",{"tips-and-tricks-sub.algae-green"},"\n"})
table.insert(items,{"tips-and-tricks-description.nauvis-notes-algae-green"})
table.insert(items, get_item_from_name("algae-brown"))
table.insert(items,{"",{"tips-and-tricks-sub.algae-brown"},"\n"})
if not angelsmods.functions.is_special_vanilla() then
  table.insert(items,{"tips-and-tricks-description.nauvis-notes-algae-brown-bobs"})
end
table.insert(items,{"tips-and-tricks-description.nauvis-notes-algae-brown"})

table.insert(items, get_item_from_name("algae-red"))
table.insert(items,{"",{"tips-and-tricks-sub.algae-red"},"\n"})
table.insert(items, get_item_from_name("algae-blue"))
table.insert(items,{"",{"tips-and-tricks-sub.algae-blue"},"\n"})


table.insert(description, items)
table.insert(description,{"tips-and-tricks-description.nauvis-notes-algae"})

return description