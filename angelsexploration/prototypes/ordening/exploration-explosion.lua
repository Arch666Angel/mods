local OV = angelsmods.functions.OV
local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- ROCKET LAUNCHER ------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("gun", "rocket-launcher", "angels-explosion-a", "a[gun]-a[launcher]")

reorder("ammo", "rocket", "angels-explosion-a", "c[ammo]-a[regular-rocket]")
reorder("ammo", "explosive-rocket", "angels-explosion-a", "c[ammo]-b[explosive-rocket]")
reorder("ammo", "atomic-bomb", "angels-explosion-a", "c[ammo]-c[atomic-rocket]")

if mods["bobwarfare"] then
  -- rocket warhead
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-explosion-ba",
      group = "combat",
      order = "d-b-a",
    },
  })

  reorder("item", "rocket-warhead", "angels-explosion-ba", "a[regular]")
  reorder("item", "piercing-rocket-warhead", "angels-explosion-ba", "b[pierce]")
  reorder("item", "explosive-rocket-warhead", "angels-explosion-ba", "c[explosion]")
  reorder("item", "flame-rocket-warhead", "angels-explosion-ba", "d[fire]")
  reorder("item", "acid-rocket-warhead", "angels-explosion-ba", "e[acid]")
  reorder("item", "poison-rocket-warhead", "angels-explosion-ba", "f[poison]")
  reorder("item", "electric-rocket-warhead", "angels-explosion-ba", "g[electric]")
  reorder("item", "plasma-rocket-warhead", "angels-explosion-ba", "h[plasma]")
  -- reorder("item", "uranium-rocket-warhead", "angels-explosion-ba", "i[nuclear]")
  reorder("item", "rocket-engine", "angels-explosion-ba", "j[intermediate]")

  OV.patch_recipes({
    { name = "rocket-warhead", subgroup = "angels-explosion-ba", order = "a[regular]" },
    { name = "piercing-rocket-warhead", subgroup = "angels-explosion-ba", order = "b[pierce]" },
    { name = "explosive-rocket-warhead", subgroup = "angels-explosion-ba", order = "c[explosion]" },
    { name = "flame-rocket-warhead", subgroup = "angels-explosion-ba", order = "d[fire]" },
    { name = "acid-rocket-warhead", subgroup = "angels-explosion-ba", order = "e[acid]" },
    { name = "poison-rocket-warhead", subgroup = "angels-explosion-ba", order = "f[poison]" },
    { name = "electric-rocket-warhead", subgroup = "angels-explosion-ba", order = "g[electric]" },
    { name = "plasma-rocket-warhead", subgroup = "angels-explosion-ba", order = "h[plasma]" },
    --{ name = "uranium-rocket-warhead", subgroup = "angels-explosion-ba", order = "i[nuclear]" },
    { name = "rocket-engine", subgroup = "angels-explosion-ba", order = "j[intermediate]" },
  })
end

if mods["bobwarfare"] then
  -- rockets
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-explosion-bb",
      group = "combat",
      order = "d-b-b",
    },
  })

  reorder("ammo", "bob-rocket", "angels-explosion-bb", "a[regular]")
  reorder("ammo", "bob-piercing-rocket", "angels-explosion-bb", "b[pierce]")
  reorder("ammo", "bob-explosive-rocket", "angels-explosion-bb", "c[explosion]")
  reorder("ammo", "bob-flame-rocket", "angels-explosion-bb", "d[fire]")
  reorder("ammo", "bob-acid-rocket", "angels-explosion-bb", "e[acid]")
  reorder("ammo", "bob-poison-rocket", "angels-explosion-bb", "f[poison]")
  reorder("ammo", "bob-electric-rocket", "angels-explosion-bb", "g[electric]")
  reorder("ammo", "bob-plasma-rocket", "angels-explosion-bb", "h[plasma]")
  -- reorder("ammo", "bob-uranium-rocket", "angels-explosion-bb", "i[nuclear]")
  reorder("item", "rocket-body", "angels-explosion-bb", "j[intermediate]")

  OV.patch_recipes({
    { name = "bob-rocket", subgroup = "angels-explosion-bb", order = "a[regular]" },
    { name = "bob-piercing-rocket", subgroup = "angels-explosion-bb", order = "b[pierce]" },
    { name = "bob-explosive-rocket", subgroup = "angels-explosion-bb", order = "c[explosion]" },
    { name = "bob-flame-rocket", subgroup = "angels-explosion-bb", order = "d[fire]" },
    { name = "bob-acid-rocket", subgroup = "angels-explosion-bb", order = "e[acid]" },
    { name = "bob-poison-rocket", subgroup = "angels-explosion-bb", order = "f[poison]" },
    { name = "bob-electric-rocket", subgroup = "angels-explosion-bb", order = "g[electric]" },
    { name = "bob-plasma-rocket", subgroup = "angels-explosion-bb", order = "h[plasma]" },
    --{ name = "bob-uranium-rocket", subgroup = "angels-explosion-bb", order = "i[nuclear]" },
    { name = "rocket-body", subgroup = "angels-explosion-bb", order = "j[intermediate]" },
  })
end

-------------------------------------------------------------------------------
-- CANNON TANK ----------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("item-with-entity-data", "tank", "angels-exploration-tank-a", "a[tank]-a[vanilla]")
if mods["bobwarfare"] then
  reorder("item-with-entity-data", "bob-tank-2", "angels-exploration-tank-a", "a[tank]-b[bob-tank-2]")
  reorder("item-with-entity-data", "bob-tank-3", "angels-exploration-tank-a", "a[tank]-c[bob-tank-3]")
end

reorder("ammo", "cannon-shell", "angels-exploration-tank-a", "c[ammo]-a[basic-shell]")
reorder("ammo", "explosive-cannon-shell", "angels-exploration-tank-a", "c[ammo]-b[explosive-shell]")
reorder("ammo", "uranium-cannon-shell", "angels-exploration-tank-a", "c[ammo]-c[uranium-shell]")
reorder("ammo", "explosive-uranium-cannon-shell", "angels-exploration-tank-a", "c[ammo]-d[explosive-uranium-shell]")
if mods["bobwarfare"] then
  reorder("ammo", "scatter-cannon-shell", "angels-exploration-tank-a", "c[ammo]-e[scatter-shell]")
end
