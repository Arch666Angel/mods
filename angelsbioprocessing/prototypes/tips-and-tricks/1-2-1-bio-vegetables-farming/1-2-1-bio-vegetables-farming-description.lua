local description = {
  "",
  { "tips-and-tricks-description.vegetables-farming" },
}
local tnt = angelsmods.functions.TNT

local items = { "" }
local mid_string = " and the equivalent seed "
table.insert(items, tnt.get_item_from_name("temperate-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "temperate-1", "temperate-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "temperate-2", "temperate-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "temperate-3", "temperate-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "temperate-4", "temperate-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "temperate-5", "temperate-5-seed" }, "item", mid_string))
table.insert(items, tnt.get_item_from_name("swamp-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "swamp-1", "swamp-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "swamp-2", "swamp-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "swamp-3", "swamp-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "swamp-4", "swamp-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "swamp-5", "swamp-5-seed" }, "item", mid_string))
table.insert(items, tnt.get_item_from_name("desert-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "desert-1", "desert-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "desert-2", "desert-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "desert-3", "desert-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "desert-4", "desert-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "desert-5", "desert-5-seed" }, "item", mid_string))

table.insert(items, { "", { "tips-and-tricks-sub.farm-seeds-to-crops" }, "\n" })

table.insert(description, items)

return description
