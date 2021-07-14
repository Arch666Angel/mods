local description = {
  "",
  {"tips-and-tricks-description.nauvis-trees"},
}

local function get_item_from_name(item_name, item_type, before)
  before = before or "- "
  item_type = item_type or "item"
  return {"", before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ", {item_type .. "-name." .. item_name}, "\n"}
end
local moisture_rate={swamp="87.5%",temperate="62.5%",desert="25%"}
local items = {""}
table.insert(items, get_item_from_name("desert-tree"))
table.insert(items,{"",{"tips-and-tricks-sub.trees-desert", moisture_rate["desert"]},"\n"})
table.insert(items, get_item_from_name("temperate-tree"))
table.insert(items,{"",{"tips-and-tricks-sub.trees-temperate", moisture_rate["temperate"]},"\n"})
table.insert(items, get_item_from_name("swamp-tree"))
table.insert(items,{"",{"tips-and-tricks-sub.trees-swamp", moisture_rate["swamp"]},"\n"})
table.insert(items,{"tips-and-tricks-description.nauvis-notes-trees"})
table.insert(description, items)

return description