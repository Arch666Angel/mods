if angelsmods.industries and angelsmods.industries.overhaul then
  local OV = angelsmods.functions.OV

  -- ORDENING OF RADARS
  data.raw["item"]["radar"].subgroup = "angels-exploration-vehicles"
  data.raw["item"]["radar"].order = "d[radar]-a[vanilla]"
  if bobmods and bobmods.warfare then
    data.raw["item"]["radar-2"].subgroup = "angels-exploration-vehicles"
    data.raw["item"]["radar-2"].order = "d[radar]-b[bob-2]"
    data.raw["item"]["radar-3"].subgroup = "angels-exploration-vehicles"
    data.raw["item"]["radar-3"].order = "d[radar]-a[bob-3]"
    data.raw["item"]["radar-4"].subgroup = "angels-exploration-vehicles"
    data.raw["item"]["radar-4"].order = "d[radar]-a[bob-4]"
    data.raw["item"]["radar-5"].subgroup = "angels-exploration-vehicles"
    data.raw["item"]["radar-5"].order = "d[radar]-a[bob-5]"
  end

  -- ORDENING OF WEAPONS/TURRETS/AMMO
  data.raw.item["angels-cannon-turret"].subgroup = "angels-warfare-bullet-guns"
  data.raw.item["angels-cannon-turret"].order = "b[turret]-b[cannon-gun]"
  data.raw.ammo["cannon-turret-shell-1"].subgroup = "angels-warfare-bullet-guns"
  data.raw.ammo["cannon-turret-shell-1"].order = "d[cannon-ammo]-a[basic-shells]"
  data.raw.ammo["cannon-turret-shell-2"].subgroup = "angels-warfare-bullet-guns"
  data.raw.ammo["cannon-turret-shell-2"].order = "d[cannon-ammo]-b[piercing-shells]"
  data.raw.ammo["cannon-turret-shell-3"].subgroup = "angels-warfare-bullet-guns"
  data.raw.ammo["cannon-turret-shell-3"].order = "d[cannon-ammo]-c[uranium-shells]"
  
  data.raw.item["angels-rocket-turret"].subgroup = "angels-warfare-rocket-guns"
  data.raw.item["angels-rocket-turret"].order = "b[turret]-a[rocket]"

  data.raw.gun["bio-gun"].subgroup = "angels-warfare-flamethrower-guns"
  data.raw.gun["bio-gun"].order = "a[gun]-b[bio-gun]"
  data.raw.item["angels-bio-turret"].subgroup = "angels-warfare-flamethrower-guns"
  data.raw.item["angels-bio-turret"].order = "b[turret]-b[bio]"
  data.raw.ammo["bio-ammo"].subgroup = "angels-warfare-flamethrower-guns"
  data.raw.ammo["bio-ammo"].order = "c[basic-ammo]-b[bio-rounds]"
  OV.patch_recipes({
    { name = "bio-gun", subgroup = "angels-warfare-flamethrower-guns", order = "a[gun]-b[bio-gun]" },
    { name = "bio-ammo", subgroup = "angels-warfare-flamethrower-guns", order = "c[basic-ammo]-b[bio-rounds]" },
  })

  data.raw.ammo["cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["cannon-shell"].order = "c[basic-ammo]-a[light]-a[basic-rounds]"
  data.raw.ammo["explosive-cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["explosive-cannon-shell"].order = "c[basic-ammo]-a[light]-b[explosive-rounds]"
  data.raw.ammo["uranium-cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["uranium-cannon-shell"].order = "c[basic-ammo]-a[light]-c[uranium-rounds]"
  data.raw.ammo["explosive-uranium-cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["explosive-uranium-cannon-shell"].order = "c[basic-ammo]-a[light]-d[explosive-uranium-rounds]"

  if bobmods and bobmods.warfare then
    data.raw["item-with-entity-data"]["bob-tank-2"].subgroup = "angels-exploration-vehicles"
    data.raw["item-with-entity-data"]["bob-tank-2"].order = "c[personal-transport]-b[bob-tank-2]"
    data.raw["item-with-entity-data"]["bob-tank-3"].subgroup = "angels-exploration-vehicles"
    data.raw["item-with-entity-data"]["bob-tank-3"].order = "c[personal-transport]-b[bob-tank-3]"

    data.raw["item-group"]["angels-warfare"].icon = nil
    data.raw["item-group"]["angels-warfare"].icon_size = nil
    data.raw["item-group"]["angels-warfare"].icons = {
      {
        icon = "__base__/graphics/item-group/military.png",
        icon_size = 64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/bobs-logo.png",
        icon_size = 1080,
        scale = 64/1080 * 0.35,
        shift = {20, -20}
      },
    }
    data.raw["item-group"]["angels-warfare"].order = "lb[bobs]-e[warfare]"
    data.raw["item-group"]["angels-warfare"].inventory_order = "lb[bobs]-e[warfare]"
    data.raw["item-group"]["angels-warfare"].localised_name = {"item-group-name.angels-warfare-bob"}

    data.raw.ammo["scatter-cannon-shell"].subgroup = "angels-explosion-b"
    data.raw.ammo["scatter-cannon-shell"].order = "c[basic-ammo]-a[light]-a[basic-rounds]"

    -- bullet guns
    data.raw.gun["rifle"].subgroup = "angels-warfare-bullet-guns"
    data.raw.gun["rifle"].order = "a[gun]-c[rifle]"
    data.raw.gun["sniper-rifle"].subgroup = "angels-warfare-bullet-guns"
    data.raw.gun["sniper-rifle"].order = "a[gun]-d[sniper-rifle]"
    data.raw.item["gun-turret"].order = "b[turret]-a[gun]-a"
    data.raw.item["bob-gun-turret-2"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-gun-turret-2"].order = "b[turret]-a[gun]-b"
    data.raw.item["bob-gun-turret-3"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-gun-turret-3"].order = "b[turret]-a[gun]-c"
    data.raw.item["bob-gun-turret-4"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-gun-turret-4"].order = "b[turret]-a[gun]-d"
    data.raw.item["bob-gun-turret-5"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-gun-turret-5"].order = "b[turret]-a[gun]-e"
    data.raw.item["bob-sniper-turret-1"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-sniper-turret-1"].order = "b[turret]-c[sniper]-a"
    data.raw.item["bob-sniper-turret-2"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-sniper-turret-2"].order = "b[turret]-c[sniper]-b"
    data.raw.item["bob-sniper-turret-3"].subgroup = "angels-warfare-bullet-guns"
    data.raw.item["bob-sniper-turret-3"].order = "b[turret]-c[sniper]-c"

    -- bullet projectile
    data:extend({ { type = "item-subgroup", name = "angels-warfare-bullet-projectiles", group = "angels-warfare", order = "b[bullets]-b[projectile]" } })
    data.raw.item["bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["bullet-projectile"].order = "a[regular]"
    data.raw.item["ap-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["ap-bullet-projectile"].order = "b[pierce]"
    data.raw.item["he-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["he-bullet-projectile"].order = "c[explosion]"
    data.raw.item["flame-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["flame-bullet-projectile"].order = "d[fire]"
    data.raw.item["acid-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["acid-bullet-projectile"].order = "e[acid]"
    data.raw.item["poison-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["poison-bullet-projectile"].order = "f[poison]"
    data.raw.item["electric-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["electric-bullet-projectile"].order = "g[electric]"
    data.raw.item["plasma-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["plasma-bullet-projectile"].order = "h[plasma]"
    data.raw.item["uranium-bullet-projectile"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["uranium-bullet-projectile"].order = "i[nuclear]"
    data.raw.item["cordite"].subgroup = "angels-warfare-bullet-projectiles"
    data.raw.item["cordite"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "a[regular]" },
      { name = "ap-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "b[pierce]" },
      { name = "he-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "c[explosion]" },
      { name = "flame-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "d[fire]" },
      { name = "acid-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "e[acid]" },
      { name = "poison-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "f[poison]" },
      { name = "electric-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "g[electric]" },
      { name = "plasma-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "h[plasma]" },
      { name = "uranium-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "i[nuclear]" },
      { name = "cordite", subgroup = "angels-warfare-bullet-projectiles", order = "j[intermediate]" },
    })

    -- bullet
    data:extend({ { type = "item-subgroup", name = "angels-warfare-bullet", group = "angels-warfare", order = "b[bullets]-c[bullet]" } })
    data.raw.item["bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["bullet"].order = "a[regular]"
    data.raw.item["ap-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["ap-bullet"].order = "b[pierce]"
    data.raw.item["he-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["he-bullet"].order = "c[explosion]"
    data.raw.item["flame-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["flame-bullet"].order = "d[fire]"
    data.raw.item["acid-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["acid-bullet"].order = "e[acid]"
    data.raw.item["poison-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["poison-bullet"].order = "f[poison]"
    data.raw.item["electric-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["electric-bullet"].order = "g[electric]"
    data.raw.item["plasma-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["plasma-bullet"].order = "h[plasma]"
    data.raw.item["uranium-bullet"].subgroup = "angels-warfare-bullet"
    data.raw.item["uranium-bullet"].order = "i[nuclear]"
    data.raw.item["bullet-casing"].subgroup = "angels-warfare-bullet"
    data.raw.item["bullet-casing"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bullet", subgroup = "angels-warfare-bullet", order = "a[regular]" },
      { name = "ap-bullet", subgroup = "angels-warfare-bullet", order = "b[pierce]" },
      { name = "he-bullet", subgroup = "angels-warfare-bullet", order = "c[explosion]" },
      { name = "flame-bullet", subgroup = "angels-warfare-bullet", order = "d[fire]" },
      { name = "acid-bullet", subgroup = "angels-warfare-bullet", order = "e[acid]" },
      { name = "poison-bullet", subgroup = "angels-warfare-bullet", order = "f[poison]" },
      { name = "electric-bullet", subgroup = "angels-warfare-bullet", order = "g[electric]" },
      { name = "plasma-bullet", subgroup = "angels-warfare-bullet", order = "h[plasma]" },
      { name = "uranium-bullet", subgroup = "angels-warfare-bullet", order = "i[nuclear]" },
      { name = "bullet-casing", subgroup = "angels-warfare-bullet", order = "j[intermediate]" },
    })

    -- bullet magazine
    data:extend({ { type = "item-subgroup", name = "angels-warfare-bullet-magazine", group = "angels-warfare", order = "b[bullets]-d[magazine]" } })
    data.raw.ammo["bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["bullet-magazine"].order = "a[regular]"
    data.raw.ammo["ap-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["ap-bullet-magazine"].order = "b[pierce]"
    data.raw.ammo["he-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["he-bullet-magazine"].order = "c[explosion]"
    data.raw.ammo["flame-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["flame-bullet-magazine"].order = "d[fire]"
    data.raw.ammo["acid-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["acid-bullet-magazine"].order = "e[acid]"
    data.raw.ammo["poison-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["poison-bullet-magazine"].order = "f[poison]"
    data.raw.ammo["electric-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["electric-bullet-magazine"].order = "g[electric]"
    data.raw.ammo["plasma-bullet-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["plasma-bullet-magazine"].order = "h[plasma]"
    data.raw.ammo["uranium-rounds-magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.ammo["uranium-rounds-magazine"].order = "i[nuclear]"
    data.raw.item["magazine"].subgroup = "angels-warfare-bullet-magazine"
    data.raw.item["magazine"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "a[regular]" },
      { name = "ap-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "b[pierce]" },
      { name = "he-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "c[explosion]" },
      { name = "flame-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "d[fire]" },
      { name = "acid-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "e[acid]" },
      { name = "poison-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "f[poison]" },
      { name = "electric-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "g[electric]" },
      { name = "plasma-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "h[plasma]" },
      { name = "uranium-rounds-magazine", subgroup = "angels-warfare-bullet-magazine", order = "i[nuclear]" },
      { name = "magazine", subgroup = "angels-warfare-bullet-magazine", order = "j[intermediate]" },
    })

    -- shotgun guns (done by industries already, no bob variants)
    data.raw.item["shot"].subgroup = "angels-warfare-shotgun-guns"
    data.raw.item["shot"].order = "z[other]-a[pellets]"
    data.raw.item["gun-cotton"].subgroup = "angels-warfare-shotgun-guns"
    data.raw.item["gun-cotton"].order = "z[other]-b[cordite]-a"
    data.raw.item["petroleum-jelly"].subgroup = "angels-warfare-shotgun-guns"
    data.raw.item["petroleum-jelly"].order = "z[other]-b[cordite]-c"
    OV.patch_recipes({
      { name = "shot", subgroup = "angels-warfare-shotgun-guns", order = "z[other]-a[pellets]" },
      { name = "gun-cotton", subgroup = "angels-warfare-shotgun-guns", order = "z[other]-b[cordite]-a" },
      { name = "petroleum-jelly", subgroup = "angels-warfare-shotgun-guns", order = "z[other]-b[cordite]-b" },
    })

    -- shotgun shells
    data:extend({ { type = "item-subgroup", name = "angels-warfare-shotgun-shells", group = "angels-warfare", order = "c[shotgun]-b[shells]" } })
    data.raw.ammo["better-shotgun-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["better-shotgun-shell"].order = "a[regular]"
    data.raw.ammo["shotgun-ap-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-ap-shell"].order = "b[pierce]"
    data.raw.ammo["shotgun-explosive-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-explosive-shell"].order = "c[explosion]"
    data.raw.ammo["shotgun-flame-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-flame-shell"].order = "d[fire]"
    data.raw.ammo["shotgun-acid-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-acid-shell"].order = "e[acid]"
    data.raw.ammo["shotgun-poison-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-poison-shell"].order = "f[poison]"
    data.raw.ammo["shotgun-electric-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-electric-shell"].order = "g[electric]"
    data.raw.ammo["shotgun-plasma-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-plasma-shell"].order = "h[plasma]"
    data.raw.ammo["shotgun-uranium-shell"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.ammo["shotgun-uranium-shell"].order = "i[nuclear]"
    data.raw.item["shotgun-shell-casing"].subgroup = "angels-warfare-shotgun-shells"
    data.raw.item["shotgun-shell-casing"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "better-shotgun-shell", subgroup = "angels-warfare-shotgun-shells", order = "a[regular]" },
      { name = "shotgun-ap-shell", subgroup = "angels-warfare-shotgun-shells", order = "b[pierce]" },
      { name = "shotgun-explosive-shell", subgroup = "angels-warfare-shotgun-shells", order = "c[explosion]" },
      { name = "shotgun-flame-shell", subgroup = "angels-warfare-shotgun-shells", order = "d[fire]" },
      { name = "shotgun-acid-shell", subgroup = "angels-warfare-shotgun-shells", order = "e[acid]" },
      { name = "shotgun-poison-shell", subgroup = "angels-warfare-shotgun-shells", order = "f[poison]" },
      { name = "shotgun-electric-shell", subgroup = "angels-warfare-shotgun-shells", order = "g[electric]" },
      { name = "shotgun-plasma-shell", subgroup = "angels-warfare-shotgun-shells", order = "h[plasma]" },
      { name = "shotgun-uranium-shell", subgroup = "angels-warfare-shotgun-shells", order = "i[nuclear]" },
      { name = "shotgun-shell-casing", subgroup = "angels-warfare-shotgun-shells", order = "j[intermediate]" },
    })

    -- rocket warhead
    data:extend({ { type = "item-subgroup", name = "angels-warfare-rocket-warhead", group = "angels-warfare", order = "d[rocket]-b[warhead]" } })
    data.raw.item["rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["rocket-warhead"].order = "a[regular]"
    data.raw.item["piercing-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["piercing-rocket-warhead"].order = "b[pierce]"
    data.raw.item["explosive-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["explosive-rocket-warhead"].order = "c[explosion]"
    data.raw.item["flame-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["flame-rocket-warhead"].order = "d[fire]"
    data.raw.item["acid-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["acid-rocket-warhead"].order = "e[acid]"
    data.raw.item["poison-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["poison-rocket-warhead"].order = "f[poison]"
    data.raw.item["electric-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["electric-rocket-warhead"].order = "g[electric]"
    data.raw.item["plasma-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["plasma-rocket-warhead"].order = "h[plasma]"
    --data.raw.item["uranium-rocket-warhead"].subgroup = "angels-warfare-rocket-warhead"
    --data.raw.item["uranium-rocket-warhead"].order = "i[nuclear]"
    data.raw.item["rocket-engine"].subgroup = "angels-warfare-rocket-warhead"
    data.raw.item["rocket-engine"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "a[regular]" },
      { name = "piercing-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "b[pierce]" },
      { name = "explosive-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "c[explosion]" },
      { name = "flame-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "d[fire]" },
      { name = "acid-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "e[acid]" },
      { name = "poison-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "f[poison]" },
      { name = "electric-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "g[electric]" },
      { name = "plasma-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "h[plasma]" },
      --{ name = "uranium-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "i[nuclear]" },
      { name = "rocket-engine", subgroup = "angels-warfare-rocket-warhead", order = "j[intermediate]" },
    })

    -- rocket
    data:extend({ { type = "item-subgroup", name = "angels-warfare-bob-rocket", group = "angels-warfare", order = "d[rocket]-c[bob-rocket]" } })
    data.raw.ammo["bob-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-rocket"].order = "a[regular]"
    data.raw.ammo["bob-piercing-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-piercing-rocket"].order = "b[pierce]"
    data.raw.ammo["bob-explosive-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-explosive-rocket"].order = "c[explosion]"
    data.raw.ammo["bob-flame-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-flame-rocket"].order = "d[fire]"
    data.raw.ammo["bob-acid-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-acid-rocket"].order = "e[acid]"
    data.raw.ammo["bob-poison-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-poison-rocket"].order = "f[poison]"
    data.raw.ammo["bob-electric-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-electric-rocket"].order = "g[electric]"
    data.raw.ammo["bob-plasma-rocket"].subgroup = "angels-warfare-bob-rocket"
    data.raw.ammo["bob-plasma-rocket"].order = "h[plasma]"
    --data.raw.ammo["bob-uranium-rocket"].subgroup = "angels-warfare-bob-rocket"
    --data.raw.ammo["bob-uranium-rocket"].order = "i[nuclear]"
    data.raw.item["rocket-body"].subgroup = "angels-warfare-bob-rocket"
    data.raw.item["rocket-body"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bob-rocket", subgroup = "angels-warfare-bob-rocket", order = "a[regular]" },
      { name = "bob-piercing-rocket", subgroup = "angels-warfare-bob-rocket", order = "b[pierce]" },
      { name = "bob-explosive-rocket", subgroup = "angels-warfare-bob-rocket", order = "c[explosion]" },
      { name = "bob-flame-rocket", subgroup = "angels-warfare-bob-rocket", order = "d[fire]" },
      { name = "bob-acid-rocket", subgroup = "angels-warfare-bob-rocket", order = "e[acid]" },
      { name = "bob-poison-rocket", subgroup = "angels-warfare-bob-rocket", order = "f[poison]" },
      { name = "bob-electric-rocket", subgroup = "angels-warfare-bob-rocket", order = "g[electric]" },
      { name = "bob-plasma-rocket", subgroup = "angels-warfare-bob-rocket", order = "h[plasma]" },
      --{ name = "bob-uranium-rocket", subgroup = "angels-warfare-bob-rocket", order = "i[nuclear]" },
      { name = "rocket-body", subgroup = "angels-warfare-bob-rocket", order = "j[intermediate]" },
    })

    -- laser gun
    data.raw.gun["laser-rifle"].subgroup  = "angels-warfare-laser-guns"
    data.raw.gun["laser-rifle"].order  = "a[gun]-a[rifle]"
    data.raw.item["laser-turret"].order = "b[turret]-a[laser]-a"
    data.raw.item["bob-laser-turret-2"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-laser-turret-2"].order = "b[turret]-a[laser]-b"
    data.raw.item["bob-laser-turret-3"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-laser-turret-3"].order = "b[turret]-a[laser]-c"
    data.raw.item["bob-laser-turret-4"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-laser-turret-4"].order = "b[turret]-a[laser]-d"
    data.raw.item["bob-laser-turret-5"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-laser-turret-5"].order = "b[turret]-a[laser]-e"

    data.raw.item["bob-plasma-turret-1"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-plasma-turret-1"].order = "b[turret]-b[plasma]-a"
    data.raw.item["bob-plasma-turret-2"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-plasma-turret-2"].order = "b[turret]-b[plasma]-b"
    data.raw.item["bob-plasma-turret-3"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-plasma-turret-3"].order = "b[turret]-b[plasma]-c"
    data.raw.item["bob-plasma-turret-4"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-plasma-turret-4"].order = "b[turret]-b[plasma]-d"
    data.raw.item["bob-plasma-turret-5"].subgroup = "angels-warfare-laser-guns"
    data.raw.item["bob-plasma-turret-5"].order = "b[turret]-b[plasma]-e"

    -- laser rifle
    data:extend({ { type = "item-subgroup", name = "angels-warfare-laser-battery", group = "angels-warfare", order = "f[laser-rifle]-b[battery]" } })
    data.raw.ammo["laser-rifle-battery"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery"].order = "a[regular]"
    data.raw.ammo["laser-rifle-battery-ruby"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery-ruby"].order = "b[ruby]"
    data.raw.ammo["laser-rifle-battery-sapphire"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery-sapphire"].order = "c[sapphire]"
    data.raw.ammo["laser-rifle-battery-emerald"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery-emerald"].order = "d[emerald]"
    data.raw.ammo["laser-rifle-battery-amethyst"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery-amethyst"].order = "e[amethyst]"
    data.raw.ammo["laser-rifle-battery-topaz"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery-topaz"].order = "f[topaz]"
    data.raw.ammo["laser-rifle-battery-diamond"].subgroup = "angels-warfare-laser-battery"
    data.raw.ammo["laser-rifle-battery-diamond"].order = "g[diamond]"
    data.raw.item["laser-rifle-battery-case"].subgroup = "angels-warfare-laser-battery"
    data.raw.item["laser-rifle-battery-case"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "laser-rifle-battery", subgroup = "angels-warfare-laser-battery", order = "a[regular]" },
      { name = "laser-rifle-battery-ruby", subgroup = "angels-warfare-laser-battery", order = "b[ruby]" },
      { name = "laser-rifle-battery-sapphire", subgroup = "angels-warfare-laser-battery", order = "c[sapphire]" },
      { name = "laser-rifle-battery-emerald", subgroup = "angels-warfare-laser-battery", order = "d[emerald]" },
      { name = "laser-rifle-battery-amethyst", subgroup = "angels-warfare-laser-battery", order = "e[amethyst]" },
      { name = "laser-rifle-battery-topaz", subgroup = "angels-warfare-laser-battery", order = "f[topaz]" },
      { name = "laser-rifle-battery-diamond", subgroup = "angels-warfare-laser-battery", order = "g[diamond]" },
      { name = "laser-rifle-battery-case", subgroup = "angels-warfare-laser-battery", order = "j[intermediate]" },
    })

    -- artillery turret
    data.raw.item["artillery-turret"].order = "b[turret]-a[artillery]-a"
    data.raw.item["bob-artillery-turret-2"].subgroup = "angels-warfare-artillery-guns"
    data.raw.item["bob-artillery-turret-2"].order = "b[turret]-a[artillery]-b"
    data.raw.item["bob-artillery-turret-3"].subgroup = "angels-warfare-artillery-guns"
    data.raw.item["bob-artillery-turret-3"].order = "b[turret]-a[artillery]-b"
    data.raw.ammo["poison-artillery-shell"].subgroup = "angels-warfare-artillery-guns"
    data.raw.ammo["poison-artillery-shell"].order = "c[basic-ammo]-b[poison-rounds]"
    data.raw.ammo["fire-artillery-shell"].subgroup = "angels-warfare-artillery-guns"
    data.raw.ammo["fire-artillery-shell"].order = "c[basic-ammo]-c[fire-rounds]"
    data.raw.ammo["explosive-artillery-shell"].subgroup = "angels-warfare-artillery-guns"
    data.raw.ammo["explosive-artillery-shell"].order = "c[basic-ammo]-d[explosive-rounds]"
    data.raw.ammo["distractor-artillery-shell"].subgroup = "angels-warfare-artillery-guns"
    data.raw.ammo["distractor-artillery-shell"].order = "c[basic-ammo]-e[distractor-rounds]"

    -- capsules
    data.raw.item["poison-mine"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["poison-mine"].order = "a[mine]-b[poison]"
    data.raw.item["slowdown-mine"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["slowdown-mine"].order = "a[mine]-c[slowdown]"
    data.raw.item["distractor-mine"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["distractor-mine"].order = "a[mine]-d[distractor]"
    data.raw.capsule["fire-capsule"].subgroup = "angels-warfare-capsules-manual"
    data.raw.capsule["fire-capsule"].order = "c[clouds]-c[fire]"
    data.raw.capsule["bob-laser-robot-capsule"].subgroup = "angels-warfare-capsules-manual"
    data.raw.capsule["bob-laser-robot-capsule"].order = "d[troups]-d[laser]"

    -- attack drones, due to lack of a better place to put them
    data.raw.item["robot-drone-frame"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["robot-drone-frame"].order = "e[drone]-a[intermediate]-a[regular]"
    data.raw.item["robot-drone-frame-large"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["robot-drone-frame-large"].order = "e[drone]-a[intermediate]-b[large]"
    data.raw.item["bob-robot-gun-drone"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["bob-robot-gun-drone"].order = "e[drone]-b[robot]-a[gun]"
    data.raw.item["bob-robot-laser-drone"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["bob-robot-laser-drone"].order = "e[drone]-b[robot]-b[laser]"
    data.raw.item["bob-robot-flamethrower-drone"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["bob-robot-flamethrower-drone"].order = "e[drone]-b[robot]-c[flamethrower]"
    data.raw.item["bob-robot-plasma-drone"].subgroup = "angels-warfare-capsules-manual"
    data.raw.item["bob-robot-plasma-drone"].order = "e[drone]-b[robot]-d[plasma]"

    -- wall
    data.raw.item["reinforced-wall"].subgroup = "angels-warfare-wall"
    data.raw.item["reinforced-wall"].order = "a[wall]-b[reinforced]-a[wall]"
    data.raw.item["reinforced-gate"].subgroup = "angels-warfare-wall"
    data.raw.item["reinforced-gate"].order = "a[wall]-b[reinforced]-b[gate]"
  end

  -- ORDENING OF EQUIPMENT
  if bobmods and bobmods.equipment then
    if mods['bobvehicleequipment'] then -- vehicle equipment
      -- power equipment
      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobpower-a", group = "angels-vehicles", order = "dc-a[power]-a[solar]" } })
      data.raw.item["vehicle-solar-panel-1"].subgroup = "angels-vehicle-equipment-bobpower-a"
      data.raw.item["vehicle-solar-panel-1"].order = "a"
      data.raw.item["vehicle-solar-panel-2"].subgroup = "angels-vehicle-equipment-bobpower-a"
      data.raw.item["vehicle-solar-panel-2"].order = "b"
      data.raw.item["vehicle-solar-panel-3"].subgroup = "angels-vehicle-equipment-bobpower-a"
      data.raw.item["vehicle-solar-panel-3"].order = "c"
      data.raw.item["vehicle-solar-panel-4"].subgroup = "angels-vehicle-equipment-bobpower-a"
      data.raw.item["vehicle-solar-panel-4"].order = "d"
      data.raw.item["vehicle-solar-panel-5"].subgroup = "angels-vehicle-equipment-bobpower-a"
      data.raw.item["vehicle-solar-panel-5"].order = "e"
      data.raw.item["vehicle-solar-panel-6"].subgroup = "angels-vehicle-equipment-bobpower-a"
      data.raw.item["vehicle-solar-panel-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobpower-b", group = "angels-vehicles", order = "dc-a[power]-b[fusion-cell]" } })
      data.raw.item["vehicle-fusion-cell-1"].subgroup = "angels-vehicle-equipment-bobpower-b"
      data.raw.item["vehicle-fusion-cell-1"].order = "a"
      data.raw.item["vehicle-fusion-cell-2"].subgroup = "angels-vehicle-equipment-bobpower-b"
      data.raw.item["vehicle-fusion-cell-2"].order = "b"
      data.raw.item["vehicle-fusion-cell-3"].subgroup = "angels-vehicle-equipment-bobpower-b"
      data.raw.item["vehicle-fusion-cell-3"].order = "c"
      data.raw.item["vehicle-fusion-cell-4"].subgroup = "angels-vehicle-equipment-bobpower-b"
      data.raw.item["vehicle-fusion-cell-4"].order = "d"
      data.raw.item["vehicle-fusion-cell-5"].subgroup = "angels-vehicle-equipment-bobpower-b"
      data.raw.item["vehicle-fusion-cell-5"].order = "e"
      data.raw.item["vehicle-fusion-cell-6"].subgroup = "angels-vehicle-equipment-bobpower-b"
      data.raw.item["vehicle-fusion-cell-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobpower-c", group = "angels-vehicles", order = "dc-a[power]-c[fusion-reactor]" } })
      data.raw.item["vehicle-fusion-reactor-1"].subgroup = "angels-vehicle-equipment-bobpower-c"
      data.raw.item["vehicle-fusion-reactor-1"].order = "a"
      data.raw.item["vehicle-fusion-reactor-2"].subgroup = "angels-vehicle-equipment-bobpower-c"
      data.raw.item["vehicle-fusion-reactor-2"].order = "b"
      data.raw.item["vehicle-fusion-reactor-3"].subgroup = "angels-vehicle-equipment-bobpower-c"
      data.raw.item["vehicle-fusion-reactor-3"].order = "c"
      data.raw.item["vehicle-fusion-reactor-4"].subgroup = "angels-vehicle-equipment-bobpower-c"
      data.raw.item["vehicle-fusion-reactor-4"].order = "d"
      data.raw.item["vehicle-fusion-reactor-5"].subgroup = "angels-vehicle-equipment-bobpower-c"
      data.raw.item["vehicle-fusion-reactor-5"].order = "e"
      data.raw.item["vehicle-fusion-reactor-6"].subgroup = "angels-vehicle-equipment-bobpower-c"
      data.raw.item["vehicle-fusion-reactor-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobpower-d", group = "angels-vehicles", order = "dc-a[power]-d[battery]" } })
      data.raw.item["vehicle-battery-1"].subgroup = "angels-vehicle-equipment-bobpower-d"
      data.raw.item["vehicle-battery-1"].order = "a"
      data.raw.item["vehicle-battery-2"].subgroup = "angels-vehicle-equipment-bobpower-d"
      data.raw.item["vehicle-battery-2"].order = "b"
      data.raw.item["vehicle-battery-3"].subgroup = "angels-vehicle-equipment-bobpower-d"
      data.raw.item["vehicle-battery-3"].order = "c"
      data.raw.item["vehicle-battery-4"].subgroup = "angels-vehicle-equipment-bobpower-d"
      data.raw.item["vehicle-battery-4"].order = "d"
      data.raw.item["vehicle-battery-5"].subgroup = "angels-vehicle-equipment-bobpower-d"
      data.raw.item["vehicle-battery-5"].order = "e"
      data.raw.item["vehicle-battery-6"].subgroup = "angels-vehicle-equipment-bobpower-d"
      data.raw.item["vehicle-battery-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobpower-e", group = "angels-vehicles", order = "dc-a[power]-e[drive]" } })
      data.raw.item["vehicle-motor"].subgroup = "angels-vehicle-equipment-bobpower-e"
      data.raw.item["vehicle-motor"].order = "a"
      data.raw.item["vehicle-engine"].subgroup = "angels-vehicle-equipment-bobpower-e"
      data.raw.item["vehicle-engine"].order = "b"

      -- robot equipment
      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobrobot-a", group = "angels-vehicles", order = "dc-b[robot]-a[control]" } })
      data.raw.item["vehicle-roboport-robot-equipment"].subgroup = "angels-vehicle-equipment-bobrobot-a"
      data.raw.item["vehicle-roboport-robot-equipment"].order = "a"
      data.raw.item["vehicle-roboport-robot-equipment-2"].subgroup = "angels-vehicle-equipment-bobrobot-a"
      data.raw.item["vehicle-roboport-robot-equipment-2"].order = "b"
      data.raw.item["vehicle-roboport-robot-equipment-3"].subgroup = "angels-vehicle-equipment-bobrobot-a"
      data.raw.item["vehicle-roboport-robot-equipment-3"].order = "c"
      data.raw.item["vehicle-roboport-robot-equipment-4"].subgroup = "angels-vehicle-equipment-bobrobot-a"
      data.raw.item["vehicle-roboport-robot-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobrobot-b", group = "angels-vehicles", order = "dc-b[robot]-b[chargepad]" } })
      data.raw.item["vehicle-roboport-chargepad-equipment"].subgroup = "angels-vehicle-equipment-bobrobot-b"
      data.raw.item["vehicle-roboport-chargepad-equipment"].order = "a"
      data.raw.item["vehicle-roboport-chargepad-equipment-2"].subgroup = "angels-vehicle-equipment-bobrobot-b"
      data.raw.item["vehicle-roboport-chargepad-equipment-2"].order = "b"
      data.raw.item["vehicle-roboport-chargepad-equipment-3"].subgroup = "angels-vehicle-equipment-bobrobot-b"
      data.raw.item["vehicle-roboport-chargepad-equipment-3"].order = "c"
      data.raw.item["vehicle-roboport-chargepad-equipment-4"].subgroup = "angels-vehicle-equipment-bobrobot-b"
      data.raw.item["vehicle-roboport-chargepad-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobrobot-c", group = "angels-vehicles", order = "dc-b[robot]-c[expander]" } })
      data.raw.item["vehicle-roboport-antenna-equipment"].subgroup = "angels-vehicle-equipment-bobrobot-c"
      data.raw.item["vehicle-roboport-antenna-equipment"].order = "a"
      data.raw.item["vehicle-roboport-antenna-equipment-2"].subgroup = "angels-vehicle-equipment-bobrobot-c"
      data.raw.item["vehicle-roboport-antenna-equipment-2"].order = "b"
      data.raw.item["vehicle-roboport-antenna-equipment-3"].subgroup = "angels-vehicle-equipment-bobrobot-c"
      data.raw.item["vehicle-roboport-antenna-equipment-3"].order = "c"
      data.raw.item["vehicle-roboport-antenna-equipment-4"].subgroup = "angels-vehicle-equipment-bobrobot-c"
      data.raw.item["vehicle-roboport-antenna-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobrobot-d", group = "angels-vehicles", order = "dc-b[robot]-d[roboport]" } })
      data.raw.item["vehicle-roboport"].subgroup = "angels-vehicle-equipment-bobrobot-d"
      data.raw.item["vehicle-roboport"].order = "a"
      data.raw.item["vehicle-roboport-2"].subgroup = "angels-vehicle-equipment-bobrobot-d"
      data.raw.item["vehicle-roboport-2"].order = "b"
      data.raw.item["vehicle-roboport-3"].subgroup = "angels-vehicle-equipment-bobrobot-d"
      data.raw.item["vehicle-roboport-3"].order = "c"
      data.raw.item["vehicle-roboport-4"].subgroup = "angels-vehicle-equipment-bobrobot-d"
      data.raw.item["vehicle-roboport-4"].order = "d"

      -- combat (weapons and defences)
      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobcombat-a", group = "angels-vehicles", order = "dc-c[combat]-a[shield]" } })
      data.raw.item["vehicle-shield-1"].subgroup = "angels-vehicle-equipment-bobcombat-a"
      data.raw.item["vehicle-shield-1"].order = "a"
      data.raw.item["vehicle-shield-2"].subgroup = "angels-vehicle-equipment-bobcombat-a"
      data.raw.item["vehicle-shield-2"].order = "b"
      data.raw.item["vehicle-shield-3"].subgroup = "angels-vehicle-equipment-bobcombat-a"
      data.raw.item["vehicle-shield-3"].order = "c"
      data.raw.item["vehicle-shield-4"].subgroup = "angels-vehicle-equipment-bobcombat-a"
      data.raw.item["vehicle-shield-4"].order = "d"
      data.raw.item["vehicle-shield-5"].subgroup = "angels-vehicle-equipment-bobcombat-a"
      data.raw.item["vehicle-shield-5"].order = "e"
      data.raw.item["vehicle-shield-6"].subgroup = "angels-vehicle-equipment-bobcombat-a"
      data.raw.item["vehicle-shield-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobcombat-b", group = "angels-vehicles", order = "dc-c[combat]-b[laser]" } })
      data.raw.item["vehicle-laser-defense-1"].subgroup = "angels-vehicle-equipment-bobcombat-b"
      data.raw.item["vehicle-laser-defense-1"].order = "a"
      data.raw.item["vehicle-laser-defense-2"].subgroup = "angels-vehicle-equipment-bobcombat-b"
      data.raw.item["vehicle-laser-defense-2"].order = "b"
      data.raw.item["vehicle-laser-defense-3"].subgroup = "angels-vehicle-equipment-bobcombat-b"
      data.raw.item["vehicle-laser-defense-3"].order = "c"
      data.raw.item["vehicle-laser-defense-4"].subgroup = "angels-vehicle-equipment-bobcombat-b"
      data.raw.item["vehicle-laser-defense-4"].order = "d"
      data.raw.item["vehicle-laser-defense-5"].subgroup = "angels-vehicle-equipment-bobcombat-b"
      data.raw.item["vehicle-laser-defense-5"].order = "e"
      data.raw.item["vehicle-laser-defense-6"].subgroup = "angels-vehicle-equipment-bobcombat-b"
      data.raw.item["vehicle-laser-defense-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-vehicle-equipment-bobcombat-c", group = "angels-vehicles", order = "dc-c[combat]-c[plasma]" } })
      data.raw.item["vehicle-big-turret-1"].subgroup = "angels-vehicle-equipment-bobcombat-c"
      data.raw.item["vehicle-big-turret-1"].order = "a"
      data.raw.item["vehicle-big-turret-2"].subgroup = "angels-vehicle-equipment-bobcombat-c"
      data.raw.item["vehicle-big-turret-2"].order = "b"
      data.raw.item["vehicle-big-turret-3"].subgroup = "angels-vehicle-equipment-bobcombat-c"
      data.raw.item["vehicle-big-turret-3"].order = "c"
      data.raw.item["vehicle-big-turret-4"].subgroup = "angels-vehicle-equipment-bobcombat-c"
      data.raw.item["vehicle-big-turret-4"].order = "d"
      data.raw.item["vehicle-big-turret-5"].subgroup = "angels-vehicle-equipment-bobcombat-c"
      data.raw.item["vehicle-big-turret-5"].order = "e"
      data.raw.item["vehicle-big-turret-6"].subgroup = "angels-vehicle-equipment-bobcombat-c"
      data.raw.item["vehicle-big-turret-6"].order = "f"
    end
    if mods['bobequipment'] then -- personal equipment
      -- power equipment                                                                                 order h-a[armor] reserved for armors from warfare
      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobpower-a", group = "angels-exploration", order = "h-b[power]-a[solar]" } })
      data.raw.item["solar-panel-equipment"].subgroup = "angels-personal-equipment-bobpower-a"
      data.raw.item["solar-panel-equipment"].order = "a"
      data.raw.item["solar-panel-equipment-2"].subgroup = "angels-personal-equipment-bobpower-a"
      data.raw.item["solar-panel-equipment-2"].order = "b"
      data.raw.item["solar-panel-equipment-3"].subgroup = "angels-personal-equipment-bobpower-a"
      data.raw.item["solar-panel-equipment-3"].order = "c"
      data.raw.item["solar-panel-equipment-4"].subgroup = "angels-personal-equipment-bobpower-a"
      data.raw.item["solar-panel-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobpower-b", group = "angels-exploration", order = "h-b[power]-b[fusion-reactor]" } })
      data.raw.item["fusion-reactor-equipment"].subgroup = "angels-personal-equipment-bobpower-b"
      data.raw.item["fusion-reactor-equipment"].order = "a"
      data.raw.item["fusion-reactor-equipment-2"].subgroup = "angels-personal-equipment-bobpower-b"
      data.raw.item["fusion-reactor-equipment-2"].order = "b"
      data.raw.item["fusion-reactor-equipment-3"].subgroup = "angels-personal-equipment-bobpower-b"
      data.raw.item["fusion-reactor-equipment-3"].order = "c"
      data.raw.item["fusion-reactor-equipment-4"].subgroup = "angels-personal-equipment-bobpower-b"
      data.raw.item["fusion-reactor-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobpower-c", group = "angels-exploration", order = "h-b[power]-c[battery]" } })
      data.raw.item["battery-equipment"].subgroup = "angels-personal-equipment-bobpower-c"
      data.raw.item["battery-equipment"].order = "a"
      data.raw.item["battery-mk2-equipment"].subgroup = "angels-personal-equipment-bobpower-c"
      data.raw.item["battery-mk2-equipment"].order = "b"
      data.raw.item["battery-mk3-equipment"].subgroup = "angels-personal-equipment-bobpower-c"
      data.raw.item["battery-mk3-equipment"].order = "c"
      data.raw.item["battery-mk4-equipment"].subgroup = "angels-personal-equipment-bobpower-c"
      data.raw.item["battery-mk4-equipment"].order = "d"
      data.raw.item["battery-mk5-equipment"].subgroup = "angels-personal-equipment-bobpower-c"
      data.raw.item["battery-mk5-equipment"].order = "e"
      data.raw.item["battery-mk6-equipment"].subgroup = "angels-personal-equipment-bobpower-c"
      data.raw.item["battery-mk6-equipment"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobpower-d", group = "angels-exploration", order = "h-b[power]-d[night-vision]" } })
      data.raw.item["night-vision-equipment"].subgroup = "angels-personal-equipment-bobpower-d"
      data.raw.item["night-vision-equipment"].order = "aa"
      data.raw.item["night-vision-equipment-2"].subgroup = "angels-personal-equipment-bobpower-d"
      data.raw.item["night-vision-equipment-2"].order = "ab"
      data.raw.item["night-vision-equipment-3"].subgroup = "angels-personal-equipment-bobpower-d"
      data.raw.item["night-vision-equipment-3"].order = "ac"
      data.raw.item["belt-immunity-equipment"].subgroup = "angels-personal-equipment-bobpower-d"
      data.raw.item["belt-immunity-equipment"].order = "b"

      -- robot equipment
      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobrobot-a", group = "angels-exploration", order = "h-c[robot]-a[control]" } })
      data.raw.item["personal-roboport-robot-equipment"].subgroup = "angels-personal-equipment-bobrobot-a"
      data.raw.item["personal-roboport-robot-equipment"].order = "a"
      data.raw.item["personal-roboport-robot-equipment-2"].subgroup = "angels-personal-equipment-bobrobot-a"
      data.raw.item["personal-roboport-robot-equipment-2"].order = "b"
      data.raw.item["personal-roboport-robot-equipment-3"].subgroup = "angels-personal-equipment-bobrobot-a"
      data.raw.item["personal-roboport-robot-equipment-3"].order = "c"
      data.raw.item["personal-roboport-robot-equipment-4"].subgroup = "angels-personal-equipment-bobrobot-a"
      data.raw.item["personal-roboport-robot-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobrobot-b", group = "angels-exploration", order = "h-c[robot]-b[chargepad]" } })
      data.raw.item["personal-roboport-chargepad-equipment"].subgroup = "angels-personal-equipment-bobrobot-b"
      data.raw.item["personal-roboport-chargepad-equipment"].order = "a"
      data.raw.item["personal-roboport-chargepad-equipment-2"].subgroup = "angels-personal-equipment-bobrobot-b"
      data.raw.item["personal-roboport-chargepad-equipment-2"].order = "b"
      data.raw.item["personal-roboport-chargepad-equipment-3"].subgroup = "angels-personal-equipment-bobrobot-b"
      data.raw.item["personal-roboport-chargepad-equipment-3"].order = "c"
      data.raw.item["personal-roboport-chargepad-equipment-4"].subgroup = "angels-personal-equipment-bobrobot-b"
      data.raw.item["personal-roboport-chargepad-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobrobot-c", group = "angels-exploration", order = "h-c[robot]-c[expander]" } })
      data.raw.item["personal-roboport-antenna-equipment"].subgroup = "angels-personal-equipment-bobrobot-c"
      data.raw.item["personal-roboport-antenna-equipment"].order = "a"
      data.raw.item["personal-roboport-antenna-equipment-2"].subgroup = "angels-personal-equipment-bobrobot-c"
      data.raw.item["personal-roboport-antenna-equipment-2"].order = "b"
      data.raw.item["personal-roboport-antenna-equipment-3"].subgroup = "angels-personal-equipment-bobrobot-c"
      data.raw.item["personal-roboport-antenna-equipment-3"].order = "c"
      data.raw.item["personal-roboport-antenna-equipment-4"].subgroup = "angels-personal-equipment-bobrobot-c"
      data.raw.item["personal-roboport-antenna-equipment-4"].order = "d"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobrobot-d", group = "angels-exploration", order = "h-c[robot]-d[roboport]" } })
      data.raw.item["personal-roboport-equipment"].subgroup = "angels-personal-equipment-bobrobot-d"
      data.raw.item["personal-roboport-equipment"].order = "a"
      data.raw.item["personal-roboport-mk2-equipment"].subgroup = "angels-personal-equipment-bobrobot-d"
      data.raw.item["personal-roboport-mk2-equipment"].order = "b"
      data.raw.item["personal-roboport-mk3-equipment"].subgroup = "angels-personal-equipment-bobrobot-d"
      data.raw.item["personal-roboport-mk3-equipment"].order = "c"
      data.raw.item["personal-roboport-mk4-equipment"].subgroup = "angels-personal-equipment-bobrobot-d"
      data.raw.item["personal-roboport-mk4-equipment"].order = "d"

      -- combat (weapons and defences)
      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobcombat-a", group = "angels-exploration", order = "h-d[robot]-a[shields]" } })
      data.raw.item["energy-shield-equipment"].subgroup = "angels-personal-equipment-bobcombat-a"
      data.raw.item["energy-shield-equipment"].order = "a"
      data.raw.item["energy-shield-mk2-equipment"].subgroup = "angels-personal-equipment-bobcombat-a"
      data.raw.item["energy-shield-mk2-equipment"].order = "b"
      data.raw.item["energy-shield-mk3-equipment"].subgroup = "angels-personal-equipment-bobcombat-a"
      data.raw.item["energy-shield-mk3-equipment"].order = "c"
      data.raw.item["energy-shield-mk4-equipment"].subgroup = "angels-personal-equipment-bobcombat-a"
      data.raw.item["energy-shield-mk4-equipment"].order = "d"
      data.raw.item["energy-shield-mk5-equipment"].subgroup = "angels-personal-equipment-bobcombat-a"
      data.raw.item["energy-shield-mk5-equipment"].order = "e"
      data.raw.item["energy-shield-mk6-equipment"].subgroup = "angels-personal-equipment-bobcombat-a"
      data.raw.item["energy-shield-mk6-equipment"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobcombat-b", group = "angels-exploration", order = "h-d[robot]-b[legs]" } })
      data.raw.item["exoskeleton-equipment"].subgroup = "angels-personal-equipment-bobcombat-b"
      data.raw.item["exoskeleton-equipment"].order = "a"
      data.raw.item["exoskeleton-equipment-2"].subgroup = "angels-personal-equipment-bobcombat-b"
      data.raw.item["exoskeleton-equipment-2"].order = "b"
      data.raw.item["exoskeleton-equipment-3"].subgroup = "angels-personal-equipment-bobcombat-b"
      data.raw.item["exoskeleton-equipment-3"].order = "c"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobcombat-c", group = "angels-exploration", order = "h-d[robot]-c[laser]" } })
      data.raw.item["personal-laser-defense-equipment"].subgroup = "angels-personal-equipment-bobcombat-c"
      data.raw.item["personal-laser-defense-equipment"].order = "a"
      data.raw.item["personal-laser-defense-equipment-2"].subgroup = "angels-personal-equipment-bobcombat-c"
      data.raw.item["personal-laser-defense-equipment-2"].order = "b"
      data.raw.item["personal-laser-defense-equipment-3"].subgroup = "angels-personal-equipment-bobcombat-c"
      data.raw.item["personal-laser-defense-equipment-3"].order = "c"
      data.raw.item["personal-laser-defense-equipment-4"].subgroup = "angels-personal-equipment-bobcombat-c"
      data.raw.item["personal-laser-defense-equipment-4"].order = "d"
      data.raw.item["personal-laser-defense-equipment-5"].subgroup = "angels-personal-equipment-bobcombat-c"
      data.raw.item["personal-laser-defense-equipment-5"].order = "e"
      data.raw.item["personal-laser-defense-equipment-6"].subgroup = "angels-personal-equipment-bobcombat-c"
      data.raw.item["personal-laser-defense-equipment-6"].order = "f"

      data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobcombat-d", group = "angels-exploration", order = "h-d[robot]-d[discharge]" } })
      data.raw.capsule["discharge-defense-remote"].subgroup = "angels-personal-equipment-bobcombat-d"
      data.raw.capsule["discharge-defense-remote"].order = "a[remote]"
      data.raw.item["discharge-defense-equipment"].subgroup = "angels-personal-equipment-bobcombat-d"
      data.raw.item["discharge-defense-equipment"].order = "b[equipment]"
    end
  end

  -- ORDERING OF ARMOR
  if bobmods and bobmods.warfare then
    data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobarmor-a", group = "angels-exploration", order = "h-a[armor]-a[normal]" } })
    data.raw.armor["light-armor"].subgroup = "angels-personal-equipment-bobarmor-a"
    data.raw.armor["light-armor"].order = "a"
    data.raw.armor["heavy-armor"].subgroup = "angels-personal-equipment-bobarmor-a"
    data.raw.armor["heavy-armor"].order = "b"
    data.raw.armor["heavy-armor-2"].subgroup = "angels-personal-equipment-bobarmor-a"
    data.raw.armor["heavy-armor-2"].order = "c"
    data.raw.armor["heavy-armor-3"].subgroup = "angels-personal-equipment-bobarmor-a"
    data.raw.armor["heavy-armor-3"].order = "d"

    data:extend({ { type = "item-subgroup", name = "angels-personal-equipment-bobarmor-b", group = "angels-exploration", order = "h-a[armor]-b[power]" } })
    data.raw.armor["modular-armor"].subgroup = "angels-personal-equipment-bobarmor-b"
    data.raw.armor["modular-armor"].order = "a"
    data.raw.armor["power-armor"].subgroup = "angels-personal-equipment-bobarmor-b"
    data.raw.armor["power-armor"].order = "b"
    data.raw.armor["power-armor-mk2"].subgroup = "angels-personal-equipment-bobarmor-b"
    data.raw.armor["power-armor-mk2"].order = "c"
    data.raw.armor["bob-power-armor-mk3"].subgroup = "angels-personal-equipment-bobarmor-b"
    data.raw.armor["bob-power-armor-mk3"].order = "d"
    data.raw.armor["bob-power-armor-mk4"].subgroup = "angels-personal-equipment-bobarmor-b"
    data.raw.armor["bob-power-armor-mk4"].order = "e"
    data.raw.armor["bob-power-armor-mk5"].subgroup = "angels-personal-equipment-bobarmor-b"
    data.raw.armor["bob-power-armor-mk5"].order = "f"
  end

else -- industries not present

  -- ORDENING OF WEAPONS

  -- angels physical a
  data.raw.gun["pistol"].subgroup = "angels-physical-a"
  data.raw.gun["pistol"].order = "a[gun]-a[pistol]"
  data.raw.gun["submachine-gun"].subgroup = "angels-physical-a"
  data.raw.gun["submachine-gun"].order = "a[gun]-b[submachine]"
  data.raw.item["gun-turret"].subgroup = "angels-physical-a"
  data.raw.item["gun-turret"].order = "b[turret]-a[magazine-gun]"
  data.raw.ammo["firearm-magazine"].subgroup = "angels-physical-a"
  data.raw.ammo["firearm-magazine"].order = "c[basic-ammo]-a[basic-rounds]"
  data.raw.ammo["piercing-rounds-magazine"].subgroup = "angels-physical-a"
  data.raw.ammo["piercing-rounds-magazine"].order = "c[basic-ammo]-b[piercing-rounds]"
  data.raw.ammo["uranium-rounds-magazine"].subgroup = "angels-physical-a"
  data.raw.ammo["uranium-rounds-magazine"].order = "c[basic-ammo]-c[uranium-rounds]"

  -- angels physical b
  data.raw.gun["shotgun"].subgroup = "angels-physical-b"
  data.raw.gun["shotgun"].order = "a[gun]-a[basic]"
  data.raw.gun["combat-shotgun"].subgroup = "angels-physical-b"
  data.raw.gun["combat-shotgun"].order = "a[gun]-b[combat]"
  data.raw.ammo["shotgun-shell"].subgroup = "angels-physical-b"
  data.raw.ammo["shotgun-shell"].order = "c[basic-ammo]-a[basic-shells]"
  data.raw.ammo["piercing-shotgun-shell"].subgroup = "angels-physical-b"
  data.raw.ammo["piercing-shotgun-shell"].order = "c[basic-ammo]-b[piercing-shells]"

  -- angels fire
  data.raw.gun["flamethrower"].subgroup = "angels-fire"
  data.raw.gun["flamethrower"].order = "a[gun]-a[flamethrower]"
  data.raw.item["flamethrower-turret"].subgroup = "angels-fire"
  data.raw.item["flamethrower-turret"].order = "b[turret]-a[flame]"
  data.raw.ammo["flamethrower-ammo"].subgroup = "angels-fire"
  data.raw.ammo["flamethrower-ammo"].order = "c[basic-ammo]-a[flame-rounds]"

  -- angels explosion a (rocket)
  data.raw.gun["rocket-launcher"].subgroup = "angels-explosion-a"
  data.raw.gun["rocket-launcher"].order = "a[gun]-a[rocket-launcher]"
  data.raw.ammo["rocket"].subgroup = "angels-explosion-a"
  data.raw.ammo["rocket"].order = "c[basic-ammo]-a[basic-rounds]"
  data.raw.ammo["explosive-rocket"].subgroup = "angels-explosion-a"
  data.raw.ammo["explosive-rocket"].order = "c[basic-ammo]-b[explosive-rounds]"
  data.raw.ammo["atomic-bomb"].subgroup = "angels-explosion-a"
  data.raw.ammo["atomic-bomb"].order = "c[basic-ammo]-c[uranium-rounds]"

  -- angels explosion b (cannon)
  data.raw.ammo["cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["cannon-shell"].order = "c[basic-ammo]-a[light]-a[basic-rounds]"
  data.raw.ammo["explosive-cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["explosive-cannon-shell"].order = "c[basic-ammo]-a[light]-b[explosive-rounds]"
  data.raw.ammo["uranium-cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["uranium-cannon-shell"].order = "c[basic-ammo]-a[light]-c[uranium-rounds]"
  data.raw.ammo["explosive-uranium-cannon-shell"].subgroup = "angels-explosion-b"
  data.raw.ammo["explosive-uranium-cannon-shell"].order = "c[basic-ammo]-a[light]-d[explosive-uranium-rounds]"

  -- angels electric
  data.raw.item["laser-turret"].subgroup = "angels-electric"
  data.raw.item["laser-turret"].order = "b[turret]-a[laser]"

  -- angels artillery
  data.raw.capsule["artillery-targeting-remote"].subgroup = "angels-artillery"
  data.raw.capsule["artillery-targeting-remote"].order = "a[gun]-a[remote]"
  data.raw.item["artillery-turret"].subgroup = "angels-artillery"
  data.raw.item["artillery-turret"].order = "b[turret]-a[artillery]"
  data.raw.ammo["artillery-shell"].subgroup = "angels-artillery"
  data.raw.ammo["artillery-shell"].order = "c[basic-ammo]-a[basic-rounds]"

  -- ORDENING OF EQUIPMENT
  -- todo
end
