local tnt = angelsmods.functions.TNT
local description = { "", { "tips-and-tricks-description.angels-water-processing" } }
if angelsmods.functions.is_special_vanilla() then
  table.insert(description, { "tips-and-tricks-description.angels-water-processing-vanilla" })
else -- overhaul mode
  table.insert(description, { "tips-and-tricks-description.angels-water-processing-overhaul" })
  if mods["angelspetrochem"] then
    local items = { "" }
    table.insert(items, tnt.get_item_from_name("water-yellow-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("sulfur", "item", "- gives: "))
    table.insert(items, tnt.get_item_from_name("water-red-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("solid-sodium-nitrate", "item", "- gives: "))
    table.insert(items, tnt.get_item_from_name("water-green-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("solid-salt", "item", "- gives: "))
    table.insert(items, tnt.get_item_from_name("water-greenyellow-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("fluorite-ore", "item", "- gives: "))
    table.insert(description, items)
  end
end
table.insert(description, { "tips-and-tricks-description.angels-water-processing-voiding" })
return description
