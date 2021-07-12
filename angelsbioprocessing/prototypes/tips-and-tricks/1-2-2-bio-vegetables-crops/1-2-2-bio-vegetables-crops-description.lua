local description = {
  "",
  {"tips-and-tricks-description.vegetables-crops"},
}

local function get_item_from_name(item_name, item_type, before)
  before = before or "- "
  local ending="\n"
  if before=="\n[font=default-bold]" then ending="[/font]:\n" end
  item_type = item_type or "item"
  return {"", before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ", {item_type .. "-name." .. item_name}, ending}
end

local items = {""}

table.insert(items, get_item_from_name("solid-nuts"))
table.insert(items, get_item_from_name("solid-beans"))
table.insert(items, get_item_from_name("solid-corn"))
table.insert(items, get_item_from_name("solid-fruit"))
table.insert(items, get_item_from_name("solid-leafs"))
table.insert(items, get_item_from_name("cellulose-fiber"))
table.insert(items, get_item_from_name("solid-pips"))

table.insert(items,{"",{"tips-and-tricks-sub.crops-special-products"},"\n"})

table.insert(items, get_item_from_name("alien-bacteria"))
table.insert(items, get_item_from_name("crystal-dust"))

table.insert(items,{"",{"tips-and-tricks-description.vegetables-notes-crops"},"\n"})

table.insert(description, items)

return description