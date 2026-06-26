local OV = angelsmods.functions.OV
local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- WALLS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("item", "angels-wall-0", "angels-exploration-walls", "a[primitive]-a[wall]")
reorder("item", "stone-wall", "angels-exploration-walls", "b[regular]-a[wall]")
reorder("item", "gate", "angels-exploration-walls", "b[regular]-b[gate]")
if mods["bobwarfare"] then
  reorder("item", "reinforced-wall", "angels-exploration-walls", "c[reinforced]-a[wall]")
  reorder("item", "reinforced-gate", "angels-exploration-walls", "c[reinforced]-b[gate]")
end
