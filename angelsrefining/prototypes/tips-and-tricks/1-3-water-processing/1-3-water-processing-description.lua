local tnt = angelsmods.functions.TNT
local description = { "", { "tips-and-tricks-description.angels-water-processing" } }
if angelsmods.functions.is_special_vanilla() then
  table.insert(description, { "tips-and-tricks-description.angels-water-processing-vanilla" })
else -- overhaul mode
  table.insert(description, { "tips-and-tricks-description.angels-water-processing-overhaul" })
  if mods["angelspetrochem"] then
    local items = { "" }
    table.insert(items, { "tips-and-tricks-misc.a-gives-b", "[fluid=angels-water-yellow-waste]", "[item=sulfur]"})
    table.insert(items, { "tips-and-tricks-misc.a-gives-b", "[fluid=angels-water-red-waste]", "[item=angels-solid-sodium-nitrate]"})
    table.insert(items, { "tips-and-tricks-misc.a-gives-b", "[fluid=angels-water-green-waste]", "[item=angels-solid-salt]"})
    table.insert(items, { "tips-and-tricks-misc.a-gives-b", "[fluid=angels-water-greenyellow-waste]", "[item=angels-fluorite-ore]"})
    table.insert(description, items)
  end
end
table.insert(description, { "tips-and-tricks-description.angels-water-processing-voiding" })
return description
