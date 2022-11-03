local tnt = angelsmods.functions.TNT
local description = {
  "",
  { "tips-and-tricks-description.nauvis-trees" },
}

local moisture_rate = { swamp = "87.5%", temperate = "62.5%", desert = "25%" }
local items = { "" }
table.insert(items, tnt.get_item_from_name("desert-tree"))
table.insert(items, { "", { "tips-and-tricks-sub.trees-desert", moisture_rate["desert"] }, "\n" })
table.insert(items, tnt.get_item_from_name("temperate-tree"))
table.insert(items, { "", { "tips-and-tricks-sub.trees-temperate", moisture_rate["temperate"] }, "\n" })
table.insert(items, tnt.get_item_from_name("swamp-tree"))
table.insert(items, { "", { "tips-and-tricks-sub.trees-swamp", moisture_rate["swamp"] }, "\n" })
table.insert(items, { "tips-and-tricks-description.nauvis-notes-trees" })
table.insert(description, items)

return description
