local move_item = angelsmods.functions.move_item
local reorder = function(type, item, subgroup, order)
  move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- TROUPS ---------------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("defender-capsule", "angels-exploration-troups", "d[troups]-a[defender]", "capsule")
move_item("distractor-capsule", "angels-exploration-troups", "d[troups]-b[distractor]", "capsule")
move_item("destroyer-capsule", "angels-exploration-troups", "d[troups]-c[destroyer]", "capsule")
if mods["bobwarfare"] then
  reorder("capsule", "bob-laser-robot-capsule", "angels-exploration-troups", "d[troups]-d[laser]")

  move_item("bob-robot-gun-drone", "angels-exploration-troups", "e[drone]-a[gun]")
  move_item("bob-robot-laser-drone", "angels-exploration-troups", "e[drone]-b[laser]")
  move_item("bob-robot-flamethrower-drone", "angels-exploration-troups", "e[drone]-c[flamethrower]")
  move_item("bob-robot-plasma-drone", "angels-exploration-troups", "e[drone]-d[plasma]")

  reorder("item", "robot-drone-frame", "angels-exploration-troups", "f[drone-intermediate]-a[regular]")
  reorder("item", "robot-drone-frame-large", "angels-exploration-troups", "f[drone-intermediate]-b[large]")
end
