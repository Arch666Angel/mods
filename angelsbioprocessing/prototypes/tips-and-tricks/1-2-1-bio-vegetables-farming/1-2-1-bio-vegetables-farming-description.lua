local description = {
  "",
  { "tips-and-tricks-description.angels-vegetables-farming" },
}
local tnt = angelsmods.functions.TNT

local items = { "" }
local mid_string = " and the equivalent seed "
table.insert(items, tnt.get_item_from_name("angels-temperate-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-1", "angels-temperate-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-2", "angels-temperate-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-3", "angels-temperate-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-4", "angels-temperate-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-5", "angels-temperate-5-seed" }, "item", mid_string))
table.insert(items, tnt.get_item_from_name("angels-swamp-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-1", "angels-swamp-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-2", "angels-swamp-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-3", "angels-swamp-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-4", "angels-swamp-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-5", "angels-swamp-5-seed" }, "item", mid_string))
table.insert(items, tnt.get_item_from_name("angels-desert-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "angels-desert-1", "angels-desert-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-2", "angels-desert-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-3", "angels-desert-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-4", "angels-desert-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-5", "angels-desert-5-seed" }, "item", mid_string))

table.insert(items, { "", { "tips-and-tricks-sub.angels-farm-seeds-to-crops" }, "\n" })

table.insert(description, items)

return description
