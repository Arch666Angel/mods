local tnt = angelsmods.functions.TNT
local description = {
  "",
  { "tips-and-tricks-description.angels-nauvis-trees" },
}

local moisture_rate = { swamp = "87.5%", temperate = "62.5%", desert = "25%" }
local items = { "" }
table.insert(items, tnt.get_item_from_name("angels-desert-tree"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-trees-desert", moisture_rate["desert"] }, "\n" })
table.insert(items, tnt.get_item_from_name("angels-temperate-tree"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-trees-temperate", moisture_rate["temperate"] }, "\n" })
table.insert(items, tnt.get_item_from_name("angels-swamp-tree"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-trees-swamp", moisture_rate["swamp"] }, "\n" })
table.insert(items, { "tips-and-tricks-description.angels-nauvis-notes-trees" })
table.insert(description, items)

return description
