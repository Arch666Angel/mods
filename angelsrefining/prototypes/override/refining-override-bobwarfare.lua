local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-- when angels exploration is not present, the warfare stuff is a mess
-- so we try to organize it a bit to 'empty' some tabs
if mods["bobwarfare"] and not mods["angelsexploration"] then
  local intermediate_subgroup = "bob-ammo-parts"
  data.raw["item-subgroup"][intermediate_subgroup].group = "combat"
  data.raw["item-subgroup"][intermediate_subgroup].order = "z"

  move_item("bob-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-a[regular]")
  move_item("bob-ap-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-b[pierce]")
  move_item("bob-he-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-c[explosion]")
  move_item("bob-flame-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-d[fire]")
  move_item("bob-acid-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-e[acid]")
  move_item("bob-poison-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-f[poison]")
  move_item("bob-electric-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-g[electric]")
  move_item("bob-plasma-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-h[plasma]")
  move_item("bob-uranium-bullet-projectile", intermediate_subgroup, "a[bullet-projectile]-i[nuclear]")
  move_item("bob-cordite", intermediate_subgroup, "a[bullet-projectile]-z[cordite]")

  move_item("bob-bullet", intermediate_subgroup, "b[bullet]-a[regular]")
  move_item("bob-ap-bullet", intermediate_subgroup, "b[bullet]-b[pierce]")
  move_item("bob-he-bullet", intermediate_subgroup, "b[bullet]-c[explosion]")
  move_item("bob-flame-bullet", intermediate_subgroup, "b[bullet]-d[fire]")
  move_item("bob-acid-bullet", intermediate_subgroup, "b[bullet]-e[acid]")
  move_item("bob-poison-bullet", intermediate_subgroup, "b[bullet]-f[poison]")
  move_item("bob-electric-bullet", intermediate_subgroup, "b[bullet]-g[electric]")
  move_item("bob-plasma-bullet", intermediate_subgroup, "b[bullet]-h[plasma]")
  move_item("bob-uranium-bullet", intermediate_subgroup, "b[bullet]-i[nuclear]")
  move_item("bob-bullet-casing", intermediate_subgroup, "b[bullet]-z[casing]")

  move_item("bob-rocket-warhead", intermediate_subgroup, "c[warhead]-a[regular]")
  move_item("bob-piercing-rocket-warhead", intermediate_subgroup, "c[warhead]-b[pierce]")
  move_item("bob-explosive-rocket-warhead", intermediate_subgroup, "c[warhead]-c[explosion]")
  move_item("bob-flame-rocket-warhead", intermediate_subgroup, "c[warhead]-d[fire]")
  move_item("bob-acid-rocket-warhead", intermediate_subgroup, "c[warhead]-e[acid]")
  move_item("bob-poison-rocket-warhead", intermediate_subgroup, "c[warhead]-f[poison]")
  move_item("bob-electric-rocket-warhead", intermediate_subgroup, "c[warhead]-g[electric]")
  move_item("bob-plasma-rocket-warhead", intermediate_subgroup, "c[warhead]-h[plasma]")
  --move_item("bob-uranium-rocket-warhead", intermediate_subgroup, "c[warhead]-i[nuclear]")
  move_item("bob-rocket-engine", intermediate_subgroup, "c[warhead]-y[engine]")
  move_item("bob-rocket-body", intermediate_subgroup, "c[warhead]-z[body]")

  move_item("bob-magazine", intermediate_subgroup, "z[others]-a[magazine]")
  move_item("bob-shot", intermediate_subgroup, "z[others]-b[shot]")
  move_item("bob-shotgun-shell-casing", intermediate_subgroup, "z[others]-c[shothug-shell]")
  move_item("bob-laser-rifle-battery-case", intermediate_subgroup, "z[others]-d[laser-battery]")
  move_item("bob-gun-cotton", intermediate_subgroup, "z[others]-e[gun-cotton]")
  move_item("bob-gun-cotton", intermediate_subgroup, "z[others]-e[gun-cotton]", "recipe")
  move_item("bob-petroleum-jelly", intermediate_subgroup, "z[others]-e[petroleum-jelly]")
  move_item("bob-petroleum-jelly", intermediate_subgroup, "z[others]-e[petroleum-jelly]", "recipe")
  move_item("bob-robot-drone-frame", intermediate_subgroup, "z[others]-f[robot-drone-frame]")
  move_item("bob-robot-drone-frame-large", intermediate_subgroup, "z[others]-g[robot-drone-frame]")
end
