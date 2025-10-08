local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- ARTILLERY ------------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("item", "artillery-turret", "angels-artillery-a", "b[turret]-a[artillery]")
if mods["bobwarfare"] then
  reorder("item", "bob-artillery-turret-2", "angels-artillery-a", "b[turret]-b[artillery]")
  reorder("item", "bob-artillery-turret-3", "angels-artillery-a", "b[turret]-c[artillery]")
end

reorder("ammo", "artillery-shell", "angels-artillery-a", "c[ammo]-a[basic-shell]")
if mods["bobwarfare"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-artillery-b",
      group = "combat",
      order = "f-b",
    },
  })
  reorder("ammo", "artillery-shell", "angels-artillery-b", "c[ammo]-a[basic-shell]")

  reorder("ammo", "distractor-artillery-shell", "angels-artillery-b", "c[ammo]-b[distractor-shell]")
  reorder("ammo", "poison-artillery-shell", "angels-artillery-b", "c[ammo]-c[poison-shell]")
  reorder("ammo", "fire-artillery-shell", "angels-artillery-b", "c[ammo]-d[fire-shell]")
  reorder("ammo", "explosive-artillery-shell", "angels-artillery-b", "c[ammo]-e[explosive-shell]")
  reorder("ammo", "atomic-artillery-shell", "angels-artillery-b", "c[ammo]-f[distractor-shell]")
end

reorder("item", "radar", "angels-artillery-a", "d[radar]-a[vanilla]")
if mods["bobwarfare"] then
  reorder("item", "radar-2", "angels-artillery-a", "d[radar]-b[bob-2]")
  reorder("item", "radar-3", "angels-artillery-a", "d[radar]-c[bob-3]")
  reorder("item", "radar-4", "angels-artillery-a", "d[radar]-d[bob-4]")
  reorder("item", "radar-5", "angels-artillery-a", "d[radar]-e[bob-5]")
end
