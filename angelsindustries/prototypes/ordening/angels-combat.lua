local move_item = angelsmods.functions.move_item

data.raw["item-group"]["combat"].order = "la[angels]-f[warfare]-a"

-------------------------------------------------------------------------------
-- REPAIR PACKS ---------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("repair-pack", "angels-tool", "a[repair-pack]-a", "repair-tool")

if mods["boblogistics"] then
  -- repair packs
  move_item("bob-repair-pack-2", "angels-tool", "a[repair-pack]-b", "repair-tool")
  move_item("bob-repair-pack-3", "angels-tool", "a[repair-pack]-c", "repair-tool")
  move_item("bob-repair-pack-4", "angels-tool", "a[repair-pack]-d", "repair-tool")
  move_item("bob-repair-pack-5", "angels-tool", "a[repair-pack]-e", "repair-tool")
end
