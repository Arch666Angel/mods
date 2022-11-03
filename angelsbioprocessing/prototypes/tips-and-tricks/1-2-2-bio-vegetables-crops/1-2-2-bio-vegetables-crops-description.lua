local tnt = angelsmods.functions.TNT
local description = {
  "",
  { "tips-and-tricks-description.vegetables-crops" },
}

local items = { "" }

table.insert(items, tnt.get_item_from_name("solid-nuts"))
table.insert(items, tnt.get_item_from_name("solid-beans"))
table.insert(items, tnt.get_item_from_name("solid-corn"))
table.insert(items, tnt.get_item_from_name("solid-fruit"))
table.insert(items, tnt.get_item_from_name("solid-leafs"))
table.insert(items, tnt.get_item_from_name("cellulose-fiber"))
table.insert(items, tnt.get_item_from_name("solid-pips"))

table.insert(items, { "", { "tips-and-tricks-sub.crops-special-products" }, "\n" })

table.insert(items, tnt.get_item_from_name("alien-bacteria"))
table.insert(items, tnt.get_item_from_name("crystal-dust"))

table.insert(items, { "", { "tips-and-tricks-description.vegetables-notes-crops" }, "\n" })

table.insert(description, items)

return description
