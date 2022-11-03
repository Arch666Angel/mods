local description = { "", { "tips-and-tricks-description.angels-ore-sorting" } }

if angelsmods.functions.is_special_vanilla() then
  table.insert(description, { "tips-and-tricks-description.angels-ore-sorting-vanilla" })
else -- overhaul mode
  table.insert(description, { "tips-and-tricks-description.angels-ore-sorting-overhaul" })
end

return description
