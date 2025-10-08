local tnt = angelsmods.functions.TNT
local description = { "", { "tips-and-tricks-description.angels-water-processing" } }
if angelsmods.functions.is_special_vanilla() then
  table.insert(description, { "tips-and-tricks-description.angels-water-processing-vanilla" })
else -- overhaul mode
  table.insert(description, { "tips-and-tricks-description.angels-water-processing-overhaul" })
  if mods["angelspetrochem"] then
    local items = { "" }
    table.insert(items, tnt.get_item_from_name("angels-water-yellow-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("sulfur", "item", "- gives: "))
    table.insert(items, tnt.get_item_from_name("angels-water-red-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("angels-solid-sodium-nitrate", "item", "- gives: "))
    table.insert(items, tnt.get_item_from_name("angels-water-green-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("angels-solid-salt", "item", "- gives: "))
    table.insert(items, tnt.get_item_from_name("angels-water-greenyellow-waste", "fluid", "\n[font=default-bold]"))
    table.insert(items, tnt.get_item_from_name("angels-fluorite-ore", "item", "- gives: "))
    table.insert(description, items)
  end
end
table.insert(description, { "tips-and-tricks-description.angels-water-processing-voiding" })
return description
