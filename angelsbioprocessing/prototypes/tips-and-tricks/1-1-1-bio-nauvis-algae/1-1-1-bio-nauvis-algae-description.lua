local tnt = angelsmods.functions.TNT
local description = {
  "",
  { "tips-and-tricks-description.angels-nauvis-algae" },
}

local items = { "" }
table.insert(items, tnt.get_item_from_name("angels-algae-green"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-algae-green" }, "\n" })
table.insert(items, { "tips-and-tricks-description.angels-nauvis-notes-algae-green" })
table.insert(items, tnt.get_item_from_name("angels-algae-brown"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-algae-brown" }, "\n" })
if angelsmods.trigger.smelting_products["lithium"].plate then
  table.insert(items, { "tips-and-tricks-description.angels-nauvis-notes-algae-brown-lithia" })
end
table.insert(items, { "tips-and-tricks-description.angels-nauvis-notes-algae-brown" })

table.insert(items, tnt.get_item_from_name("angels-algae-red"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-algae-red" }, "\n" })
table.insert(items, tnt.get_item_from_name("angels-algae-blue"))
table.insert(items, { "", { "tips-and-tricks-sub.angels-algae-blue" }, "\n" })

table.insert(description, items)
table.insert(description, { "tips-and-tricks-description.angels-nauvis-notes-algae" })

return description
