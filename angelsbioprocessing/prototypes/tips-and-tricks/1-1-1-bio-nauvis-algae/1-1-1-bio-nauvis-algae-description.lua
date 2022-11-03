local tnt = angelsmods.functions.TNT
local description = {
  "",
  { "tips-and-tricks-description.nauvis-algae" },
}

local items = { "" }
table.insert(items, tnt.get_item_from_name("algae-green"))
table.insert(items, { "", { "tips-and-tricks-sub.algae-green" }, "\n" })
table.insert(items, { "tips-and-tricks-description.nauvis-notes-algae-green" })
table.insert(items, tnt.get_item_from_name("algae-brown"))
table.insert(items, { "", { "tips-and-tricks-sub.algae-brown" }, "\n" })
if not angelsmods.functions.is_special_vanilla() then
  table.insert(items, { "tips-and-tricks-description.nauvis-notes-algae-brown-bobs" })
end
table.insert(items, { "tips-and-tricks-description.nauvis-notes-algae-brown" })

table.insert(items, tnt.get_item_from_name("algae-red"))
table.insert(items, { "", { "tips-and-tricks-sub.algae-red" }, "\n" })
table.insert(items, tnt.get_item_from_name("algae-blue"))
table.insert(items, { "", { "tips-and-tricks-sub.algae-blue" }, "\n" })

table.insert(description, items)
table.insert(description, { "tips-and-tricks-description.nauvis-notes-algae" })

return description
