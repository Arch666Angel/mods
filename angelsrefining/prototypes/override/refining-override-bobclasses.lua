if mods["bobclasses"] then
  -- manual crafting category
  for _, character_name in pairs{
    "bob-character-miner", "bob-character-miner-2",
    "bob-character-fighter", "bob-character-fighter-2",
    "bob-character-builder", "bob-character-builder-2",
    "bob-character-balanced-2",
    "bob-character-engineer",
    "bob-character-prospector",
  } do
    if data.raw["character"][character_name] and data.raw["character"][character_name].crafting_categories then
      table.insert(data.raw["character"][character_name].crafting_categories, "angels-manual-crafting")
    end
  end
end