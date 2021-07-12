local description = {
  "",
  {"tips-and-tricks-description.vegetables-farming"},
}
local function get_items_from_name(item_name, item_type, before)
  before = before or "- "
  item_type = item_type or "item"
  return {"", before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ", {item_type .. "-name." .. item_name}," and the equivalent seed","[" .. "img=" .. item_type .. "/" .. item_name .. "-seed] ", {item_type .. "-name." .. item_name.."-seed"}, "\n"}
end
local function get_item_from_name(item_name, item_type, before)
  before = before or "- "
  local ending="\n"
  if before=="\n[font=default-bold]" then ending="[/font]:\n" end
  item_type = item_type or "item"
  return {"", before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ", {item_type .. "-name." .. item_name}, ending}
end

local items = {""}

table.insert(items, get_item_from_name("temperate-garden","item","\n[font=default-bold]"))
table.insert(items, get_items_from_name("temperate-1"))
table.insert(items, get_items_from_name("temperate-2"))
table.insert(items, get_items_from_name("temperate-3"))
table.insert(items, get_items_from_name("temperate-4"))
table.insert(items, get_items_from_name("temperate-5"))
table.insert(items, get_item_from_name("swamp-garden","item","\n[font=default-bold]"))
table.insert(items, get_items_from_name("swamp-1"))
table.insert(items, get_items_from_name("swamp-2"))
table.insert(items, get_items_from_name("swamp-3"))
table.insert(items, get_items_from_name("swamp-4"))
table.insert(items, get_items_from_name("swamp-5"))
table.insert(items, get_item_from_name("desert-garden","item","\n[font=default-bold]"))
table.insert(items, get_items_from_name("desert-1"))
table.insert(items, get_items_from_name("desert-2"))
table.insert(items, get_items_from_name("desert-3"))
table.insert(items, get_items_from_name("desert-4"))
table.insert(items, get_items_from_name("desert-5"))

table.insert(items,{"",{"tips-and-tricks-sub.farm-seeds-to-crops"},"\n"})

--[[
table.insert(items, get_item_from_name("solid-nuts"))
table.insert(items, get_item_from_name("solid-beans"))
table.insert(items, get_item_from_name("solid-corn"))
table.insert(items, get_item_from_name("solid-fruit"))
table.insert(items, get_item_from_name("solid-leafs"))
table.insert(items, get_item_from_name("cellulose-fiber"))
table.insert(items, get_item_from_name("solid-pips"))

table.insert(items,{"",{"tips-and-tricks-sub.farm-special-products"},"\n"})

table.insert(items, get_item_from_name("alien-bacteria"))
table.insert(items, get_item_from_name("crystal-dust"))

table.insert(items,{"",{"tips-and-tricks-description.vegetables-farming-notes"},"\n"})
]]
table.insert(description, items)

return description