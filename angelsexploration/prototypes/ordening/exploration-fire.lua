local move_item = angelsmods.functions.move_item
local reorder = function(type, item, subgroup, order)
  move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- FLAMETHROWER ---------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("gun", "flamethrower", "angels-fire", "a[gun]-a[flamethrower]")

reorder("item", "flamethrower-turret", "angels-fire", "b[turret]-a[flame]")

reorder("ammo", "flamethrower-ammo", "angels-fire", "c[ammo]-a[flame-rounds]")

-------------------------------------------------------------------------------
-- CAPSULES -------------------------------------------------------------------
-------------------------------------------------------------------------------
-- mines
move_item("land-mine", "angels-capsules-a", "a[mine]-a[basic]")
if mods["bobwarfare"] then
  reorder("item", "poison-mine", "angels-capsules-a", "a[mine]-b[poison]")
  reorder("item", "slowdown-mine", "angels-capsules-a", "a[mine]-c[slowdown]")
  reorder("item", "distractor-mine", "angels-capsules-a", "a[mine]-d[distractor]")
end

-- grenades
move_item("grenade", "angels-capsules-a", "b[grenade]-a[single]", "capsule")
move_item("cluster-grenade", "angels-capsules-a", "b[grenade]-b[cluster]", "capsule")

-- capsules
move_item("poison-capsule", "angels-capsules-a", "c[clouds]-a[poison]", "capsule")
move_item("slowdown-capsule", "angels-capsules-a", "c[clouds]-b[slowdown]", "capsule")
if mods["bobwarfare"] then
  reorder("capsule", "fire-capsule", "angels-capsules-a", "c[clouds]-c[fire]")
end
