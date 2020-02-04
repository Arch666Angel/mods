
data.raw["item-with-entity-data"]["car"].subgroup = "angels-exploration-vehicles"
data.raw["item-with-entity-data"]["tank"].subgroup = "angels-exploration-vehicles"

table.insert(data.raw.technology["military-3"].prerequisites, "angels-cannon-turret")
table.insert(data.raw.technology["military-3"].effects, { type = "unlock-recipe", recipe = "cannon-turret-shell-2" })

if angelsmods.industries then
  local OV = angelsmods.functions.OV

  data.raw["item-group"]["angels-warfare"].order = "la[angels]-f[exploration]-b"
  data.raw["item-group"]["angels-warfare"].inventory_order = "la[angels]-f[exploration]-b"

  if angelsmods.industries.overhaul then
    -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-energy")
    -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-repair")
    -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-defense")
    -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-attack")
    -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-movement")
    
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

      -- bullet guns
      data.raw.gun["rifle"].subgroup = "angels-warfare-bullet-guns"
      data.raw.gun["rifle"].order = "a[gun]-c[rifle]"
      data.raw.gun["sniper-rifle"].subgroup = "angels-warfare-bullet-guns"
      data.raw.gun["sniper-rifle"].order = "a[gun]-d[sniper-rifle]"

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
    end
  end
end

-- ordening when industries is not present
if not (angelsmods.industries and angelsmods.industries.overhaul) then
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
end

-- if data.raw["equipment-category"]["armoured-vehicle"] then
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"tank")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"vehicle")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"armoured-vehicle")
-- end

-- function modify_biter(biter, resistance, health, damage, evolution)
-- data.raw.unit[biter].resistances = resistance
-- data.raw.unit[biter].max_health = health
-- data.raw.unit[biter].attack_parameters.ammo_type.action.action_delivery.target_effects = damage
-- end

--ADD RESISTANCES
angelsmods.functions.update_alien(small_biter)
angelsmods.functions.update_alien(medium_biter)
angelsmods.functions.update_alien(big_biter)
angelsmods.functions.update_alien(behemoth_biter)
angelsmods.functions.update_alien(colossal_biter)

angelsmods.functions.update_alien(small_spitter)
angelsmods.functions.update_alien(medium_spitter)
angelsmods.functions.update_alien(big_spitter)
angelsmods.functions.update_alien(behemoth_spitter)
angelsmods.functions.update_alien(colossal_spitter)

angelsmods.functions.update_spawner(spitter_spawner)
angelsmods.functions.update_spawner(biter_spawner)

--SHOW RESISTANCES
for _, unit in pairs(data.raw.unit) do
  unit.hide_resistances = false
end

for _, spawner in pairs(data.raw["unit-spawner"]) do
  spawner.hide_resistances = false
end
