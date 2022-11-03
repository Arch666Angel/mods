local OV = angelsmods.functions.OV
local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- LASERS ---------------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("item", "laser-turret", "angels-electric-a", "b[turret]-a[laser]")

if mods["bobwarfare"] then
  -- laser
  reorder("gun", "laser-rifle", "angels-electric-a", "a[gun]-a[rifle]")

  reorder("item", "laser-turret", "angels-electric-a", "b[turret]-a[laser]")
  reorder("item", "bob-laser-turret-2", "angels-electric-a", "b[turret]-b[laser]")
  reorder("item", "bob-laser-turret-3", "angels-electric-a", "b[turret]-c[laser]")
  reorder("item", "bob-laser-turret-4", "angels-electric-a", "b[turret]-d[laser]")
  reorder("item", "bob-laser-turret-5", "angels-electric-a", "b[turret]-e[laser]")
end

if mods["bobwarfare"] then
  -- plasma turrets
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-electric-b",
      group = "combat",
      order = "e-b",
    },
  })

  reorder("item", "bob-plasma-turret-1", "angels-electric-b", "b[turret]-a[plasma]")
  reorder("item", "bob-plasma-turret-2", "angels-electric-b", "b[turret]-b[plasma]")
  reorder("item", "bob-plasma-turret-3", "angels-electric-b", "b[turret]-c[plasma]")
  reorder("item", "bob-plasma-turret-4", "angels-electric-b", "b[turret]-d[plasma]")
  reorder("item", "bob-plasma-turret-5", "angels-electric-b", "b[turret]-e[plasma]")
end

if mods["bobwarfare"] then
  -- laser ammo
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-electric-c",
      group = "combat",
      order = "e-c",
    },
  })

  reorder("ammo", "laser-rifle-battery", "angels-electric-c", "a[regular]")
  reorder("ammo", "laser-rifle-battery-ruby", "angels-electric-c", "b[ruby]")
  reorder("ammo", "laser-rifle-battery-sapphire", "angels-electric-c", "c[sapphire]")
  reorder("ammo", "laser-rifle-battery-emerald", "angels-electric-c", "d[emerald]")
  reorder("ammo", "laser-rifle-battery-amethyst", "angels-electric-c", "e[amethyst]")
  reorder("ammo", "laser-rifle-battery-topaz", "angels-electric-c", "f[topaz]")
  reorder("ammo", "laser-rifle-battery-diamond", "angels-electric-c", "g[diamond]")
  reorder("item", "laser-rifle-battery-case", "angels-electric-c", "j[intermediate]")

  OV.patch_recipes({
    { name = "laser-rifle-battery", subgroup = "angels-electric-c", order = "a[regular]" },
    { name = "laser-rifle-battery-ruby", subgroup = "angels-electric-c", order = "b[ruby]" },
    { name = "laser-rifle-battery-sapphire", subgroup = "angels-electric-c", order = "c[sapphire]" },
    { name = "laser-rifle-battery-emerald", subgroup = "angels-electric-c", order = "d[emerald]" },
    { name = "laser-rifle-battery-amethyst", subgroup = "angels-electric-c", order = "e[amethyst]" },
    { name = "laser-rifle-battery-topaz", subgroup = "angels-electric-c", order = "f[topaz]" },
    { name = "laser-rifle-battery-diamond", subgroup = "angels-electric-c", order = "g[diamond]" },
    { name = "laser-rifle-battery-case", subgroup = "angels-electric-c", order = "j[intermediate]" },
  })
end
