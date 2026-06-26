local description = { "", { "tips-and-tricks-description.angels-ore-sorting" } }

if mods["angelssmelting"] then
  table.insert(description, { "tips-and-tricks-description.angels-ore-sorting-overhaul" })
elseif mods["bobplates"] then
  table.insert(description, { "tips-and-tricks-description.angels-ore-sorting-bobs" })
else
  table.insert(description, { "tips-and-tricks-description.angels-ore-sorting-vanilla" })
end

return description
