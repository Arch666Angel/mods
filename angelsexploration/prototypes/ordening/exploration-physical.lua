local OV = angelsmods.functions.OV
local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- MAGAZINE GUNS --------------------------------------------------------------
-------------------------------------------------------------------------------
-- regular turrets
reorder("gun", "pistol", "angels-physical-aa", "a[gun]-a[pistol]")
reorder("gun", "submachine-gun", "angels-physical-aa", "a[gun]-b[submachine]")

reorder("item", "gun-turret", "angels-physical-aa", "b[turret]-a[gun]")

if mods["bobwarfare"] then
  reorder("item", "bob-gun-turret-2", "angels-physical-aa", "b[turret]-b[gun]")
  reorder("item", "bob-gun-turret-3", "angels-physical-aa", "b[turret]-c[gun]")
  reorder("item", "bob-gun-turret-4", "angels-physical-aa", "b[turret]-d[gun]")
  reorder("item", "bob-gun-turret-5", "angels-physical-aa", "b[turret]-e[gun]")
end

-- sniper turrets
if mods["bobwarfare"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-physical-ab",
      group = "combat",
      order = "a-a-b",
    },
  })

  reorder("gun", "bob-rifle", "angels-physical-ab", "a[gun]-a[rifle]")
  reorder("gun", "sniper-rifle", "angels-physical-ab", "a[gun]-b[sniper-rifle]")

  reorder("item", "bob-sniper-turret-1", "angels-physical-ab", "b[turret]-a[gun]")
  reorder("item", "bob-sniper-turret-2", "angels-physical-ab", "b[turret]-b[gun]")
  reorder("item", "bob-sniper-turret-3", "angels-physical-ab", "b[turret]-c[gun]")
end

-- ammo
reorder("ammo", "firearm-magazine", "angels-physical-aa", "c[ammo]-a[regular-rounds]")
reorder("ammo", "piercing-rounds-magazine", "angels-physical-aa", "c[ammo]-b[piercing-rounds]")
reorder("ammo", "uranium-rounds-magazine", "angels-physical-aa", "c[ammo]-c[uranium-rounds]")

if mods["bobwarfare"] then
  -- bullet projectiles
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-physical-ac",
      group = "combat",
      order = "a-a-c",
    },
  })

  reorder("item", "bullet-projectile", "angels-physical-ac", "a[regular]")
  reorder("item", "ap-bullet-projectile", "angels-physical-ac", "b[pierce]")
  reorder("item", "he-bullet-projectile", "angels-physical-ac", "c[explosion]")
  reorder("item", "flame-bullet-projectile", "angels-physical-ac", "d[fire]")
  reorder("item", "acid-bullet-projectile", "angels-physical-ac", "e[acid]")
  reorder("item", "poison-bullet-projectile", "angels-physical-ac", "f[poison]")
  reorder("item", "electric-bullet-projectile", "angels-physical-ac", "g[electric]")
  reorder("item", "plasma-bullet-projectile", "angels-physical-ac", "h[plasma]")
  reorder("item", "uranium-bullet-projectile", "angels-physical-ac", "i[nuclear]")
  reorder("item", "cordite", "angels-physical-ac", "j[intermediate]")

  OV.patch_recipes({
    { name = "bullet-projectile", subgroup = "angels-physical-ac", order = "a[regular]" },
    { name = "ap-bullet-projectile", subgroup = "angels-physical-ac", order = "b[pierce]" },
    { name = "he-bullet-projectile", subgroup = "angels-physical-ac", order = "c[explosion]" },
    { name = "flame-bullet-projectile", subgroup = "angels-physical-ac", order = "d[fire]" },
    { name = "acid-bullet-projectile", subgroup = "angels-physical-ac", order = "e[acid]" },
    { name = "poison-bullet-projectile", subgroup = "angels-physical-ac", order = "f[poison]" },
    { name = "electric-bullet-projectile", subgroup = "angels-physical-ac", order = "g[electric]" },
    { name = "plasma-bullet-projectile", subgroup = "angels-physical-ac", order = "h[plasma]" },
    { name = "uranium-bullet-projectile", subgroup = "angels-physical-ac", order = "i[nuclear]" },
    { name = "cordite", subgroup = "angels-physical-ac", order = "j[intermediate]" },
  })
end

if mods["bobwarfare"] then
  -- bullets
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-physical-ad",
      group = "combat",
      order = "a-a-d",
    },
  })

  reorder("item", "bullet", "angels-physical-ad", "a[regular]")
  reorder("item", "ap-bullet", "angels-physical-ad", "b[pierce]")
  reorder("item", "he-bullet", "angels-physical-ad", "c[explosion]")
  reorder("item", "flame-bullet", "angels-physical-ad", "d[fire]")
  reorder("item", "acid-bullet", "angels-physical-ad", "e[acid]")
  reorder("item", "poison-bullet", "angels-physical-ad", "f[poison]")
  reorder("item", "electric-bullet", "angels-physical-ad", "g[electric]")
  reorder("item", "plasma-bullet", "angels-physical-ad", "h[plasma]")
  reorder("item", "uranium-bullet", "angels-physical-ad", "i[nuclear]")
  reorder("item", "bullet-casing", "angels-physical-ad", "j[intermediate]")

  OV.patch_recipes({
    { name = "bullet", subgroup = "angels-physical-ad", order = "a[regular]" },
    { name = "ap-bullet", subgroup = "angels-physical-ad", order = "b[pierce]" },
    { name = "he-bullet", subgroup = "angels-physical-ad", order = "c[explosion]" },
    { name = "flame-bullet", subgroup = "angels-physical-ad", order = "d[fire]" },
    { name = "acid-bullet", subgroup = "angels-physical-ad", order = "e[acid]" },
    { name = "poison-bullet", subgroup = "angels-physical-ad", order = "f[poison]" },
    { name = "electric-bullet", subgroup = "angels-physical-ad", order = "g[electric]" },
    { name = "plasma-bullet", subgroup = "angels-physical-ad", order = "h[plasma]" },
    { name = "uranium-bullet", subgroup = "angels-physical-ad", order = "i[nuclear]" },
    { name = "bullet-casing", subgroup = "angels-physical-ad", order = "j[intermediate]" },
  })
end

if mods["bobwarfare"] then
  -- bullet magazines
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-physical-ae",
      group = "combat",
      order = "a-a-e",
    },
  })

  reorder("ammo", "bullet-magazine", "angels-physical-ae", "a[regular]")
  reorder("ammo", "ap-bullet-magazine", "angels-physical-ae", "b[pierce]")
  reorder("ammo", "he-bullet-magazine", "angels-physical-ae", "c[explosion]")
  reorder("ammo", "flame-bullet-magazine", "angels-physical-ae", "d[fire]")
  reorder("ammo", "acid-bullet-magazine", "angels-physical-ae", "e[acid]")
  reorder("ammo", "poison-bullet-magazine", "angels-physical-ae", "f[poison]")
  reorder("ammo", "electric-bullet-magazine", "angels-physical-ae", "g[electric]")
  reorder("ammo", "plasma-bullet-magazine", "angels-physical-ae", "h[plasma]")
  reorder("ammo", "uranium-rounds-magazine", "angels-physical-ae", "i[uranium]")
  reorder("item", "magazine", "angels-physical-ae", "j[intermediate]")

  OV.patch_recipes({
    { name = "bullet-magazine", subgroup = "angels-physical-ae", order = "a[regular]" },
    { name = "ap-bullet-magazine", subgroup = "angels-physical-ae", order = "b[pierce]" },
    { name = "he-bullet-magazine", subgroup = "angels-physical-ae", order = "c[explosion]" },
    { name = "flame-bullet-magazine", subgroup = "angels-physical-ae", order = "d[fire]" },
    { name = "acid-bullet-magazine", subgroup = "angels-physical-ae", order = "e[acid]" },
    { name = "poison-bullet-magazine", subgroup = "angels-physical-ae", order = "f[poison]" },
    { name = "electric-bullet-magazine", subgroup = "angels-physical-ae", order = "g[electric]" },
    { name = "plasma-bullet-magazine", subgroup = "angels-physical-ae", order = "h[plasma]" },
    { name = "uranium-rounds-magazine", subgroup = "angels-physical-ae", order = "i[nuclear]" },
    { name = "magazine", subgroup = "angels-physical-ae", order = "j[intermediate]" },
  })
end

-------------------------------------------------------------------------------
-- SHOTGUNS -------------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("gun", "shotgun", "angels-physical-ba", "a[gun]-a[basic]")
reorder("gun", "combat-shotgun", "angels-physical-ba", "a[gun]-b[combat]")

reorder("ammo", "shotgun-shell", "angels-physical-ba", "c[ammo]-a[regular-shells]")
reorder("ammo", "piercing-shotgun-shell", "angels-physical-ba", "c[ammo]-b[piercing-shells]")

if mods["bobwarfare"] then
  reorder("item", "shot", "angels-physical-ba", "z[other]-a[pellets]")
  reorder("item", "gun-cotton", "angels-physical-ba", "z[other]-b[cordite]-a")
  reorder("item", "petroleum-jelly", "angels-physical-ba", "z[other]-b[cordite]-c")

  OV.patch_recipes({
    { name = "shot", subgroup = "angels-physical-ba", order = "z[other]-a[pellets]" },
    { name = "gun-cotton", subgroup = "angels-physical-ba", order = "z[other]-b[cordite]-a" },
    { name = "petroleum-jelly", subgroup = "angels-physical-ba", order = "z[other]-b[cordite]-b" },
  })
end

if mods["bobwarfare"] then
  -- shotgun shells
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-physical-bb",
      group = "combat",
      order = "a-b-b",
    },
  })

  reorder("ammo", "better-shotgun-shell", "angels-physical-bb", "a[regular]")
  reorder("ammo", "shotgun-ap-shell", "angels-physical-bb", "b[pierce]")
  reorder("ammo", "shotgun-explosive-shell", "angels-physical-bb", "c[explosion]")
  reorder("ammo", "shotgun-flame-shell", "angels-physical-bb", "d[fire]")
  reorder("ammo", "shotgun-acid-shell", "angels-physical-bb", "e[acid]")
  reorder("ammo", "shotgun-poison-shell", "angels-physical-bb", "f[poison]")
  reorder("ammo", "shotgun-electric-shell", "angels-physical-bb", "g[electric]")
  reorder("ammo", "shotgun-plasma-shell", "angels-physical-bb", "h[plasma]")
  reorder("ammo", "shotgun-uranium-shell", "angels-physical-bb", "i[nuclear]")
  reorder("item", "shotgun-shell-casing", "angels-physical-bb", "j[intermediate]")

  OV.patch_recipes({
    { name = "better-shotgun-shell", subgroup = "angels-physical-bb", order = "a[regular]" },
    { name = "shotgun-ap-shell", subgroup = "angels-physical-bb", order = "b[pierce]" },
    { name = "shotgun-explosive-shell", subgroup = "angels-physical-bb", order = "c[explosion]" },
    { name = "shotgun-flame-shell", subgroup = "angels-physical-bb", order = "d[fire]" },
    { name = "shotgun-acid-shell", subgroup = "angels-physical-bb", order = "e[acid]" },
    { name = "shotgun-poison-shell", subgroup = "angels-physical-bb", order = "f[poison]" },
    { name = "shotgun-electric-shell", subgroup = "angels-physical-bb", order = "g[electric]" },
    { name = "shotgun-plasma-shell", subgroup = "angels-physical-bb", order = "h[plasma]" },
    { name = "shotgun-uranium-shell", subgroup = "angels-physical-bb", order = "i[nuclear]" },
    { name = "shotgun-shell-casing", subgroup = "angels-physical-bb", order = "j[intermediate]" },
  })
end

if mods["bobwarfare"] then
  -- cannon turret shells
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-physical-bc",
      group = "combat",
      order = "a-b-c",
    },
  })

  reorder("ammo", "angels-cannon-turret-shell-1", "angels-physical-bc", "a[regular]")
  reorder("ammo", "angels-cannon-turret-shell-2", "angels-physical-bc", "b[piercing]")
  reorder("ammo", "angels-cannon-turret-shell-3", "angels-physical-bc", "c[uranium]")
end
