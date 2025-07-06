local tnt = angelsmods.functions.TNT
local description = {
  "",
  { "tips-and-tricks-description.angels-vegetables-crops" },
}

local items = { "" }

table.insert(items, tnt.get_item_from_name("angels-solid-nuts"))
table.insert(items, tnt.get_item_from_name("angels-solid-beans"))
table.insert(items, tnt.get_item_from_name("angels-solid-corn"))
table.insert(items, tnt.get_item_from_name("angels-solid-fruit"))
table.insert(items, tnt.get_item_from_name("angels-solid-leafs"))
table.insert(items, tnt.get_item_from_name("angels-cellulose-fiber"))
table.insert(items, tnt.get_item_from_name("angels-solid-pips"))

table.insert(items, { "", { "tips-and-tricks-sub.angels-crops-special-products" }, "\n" })

table.insert(items, tnt.get_item_from_name("angels-alien-bacteria"))
table.insert(items, tnt.get_item_from_name("angels-crystal-dust"))

table.insert(items, { "", { "tips-and-tricks-description.angels-vegetables-notes-crops" }, "\n" })

table.insert(description, items)

return description
