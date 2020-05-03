local reorder = function(type, item, subgroup, order)
  local entry = data.raw[type] and data.raw[type][item] or nil
  if entry then
    entry.subgroup = subgroup or entry.subgroup
    entry.order = order or entry.order
  end
end

if angelsmods.industries and angelsmods.industries.overhaul then
  local OV = angelsmods.functions.OV

  -- ORDENING OF RADARS
  reorder("item", "radar", "angels-exploration-vehicles", "d[radar]-a[vanilla]")
  if bobmods and bobmods.warfare then
    reorder("item", "radar-2", "angels-exploration-vehicles", "d[radar]-b[bob-2]")
    reorder("item", "radar-3", "angels-exploration-vehicles", "d[radar]-b[bob-3]")
    reorder("item", "radar-4", "angels-exploration-vehicles", "d[radar]-b[bob-4]")
    reorder("item", "radar-5", "angels-exploration-vehicles", "d[radar]-b[bob-5]")
  end

  -- ORDENING OF WEAPONS/TURRETS/AMMO
  reorder("item", "angels-cannon-turret", "angels-warfare-bullet-guns", "b[turret]-b[cannon-gun]")
  reorder("ammo", "cannon-turret-shell-1", "angels-warfare-bullet-guns", "d[cannon-ammo]-a[basic-shells]")
  reorder("ammo", "cannon-turret-shell-2", "angels-warfare-bullet-guns", "d[cannon-ammo]-b[piercing-shells]")
  reorder("ammo", "cannon-turret-shell-3", "angels-warfare-bullet-guns", "d[cannon-ammo]-c[uranium-shells]")

  reorder("item", "angels-rocket-turret", "angels-warfare-rocket-guns", "b[turret]-a[rocket]")
  reorder("gun", "angels-warfare-flamethrower-guns", "a[gun]-b[bio-gun]")
  reorder("item", "angels-bio-turret", "angels-warfare-flamethrower-guns", "b[turret]-b[bio]")
  reorder("ammo", "bio-ammo", "angels-warfare-flamethrower-guns", "c[basic-ammo]-b[bio-rounds]")
  OV.patch_recipes(
    {
      {name = "bio-gun", subgroup = "angels-warfare-flamethrower-guns", order = "a[gun]-b[bio-gun]"},
      {name = "bio-ammo", subgroup = "angels-warfare-flamethrower-guns", order = "c[basic-ammo]-b[bio-rounds]"}
    }
  )

  reorder("ammo", "cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-a[basic-rounds]")
  reorder("ammo", "explosive-cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-b[explosive-rounds]")
  reorder("ammo", "uranium-cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-c[uranium-rounds]")
  reorder(
    "ammo",
    "explosive-uranium-cannon-shell",
    "angels-explosion-b",
    "c[basic-ammo]-a[light]-d[explosive-uranium-rounds]"
  )

  if bobmods and bobmods.warfare then
    reorder("item-with-entity-data", "bob-tank-2", "angels-exploration-vehicles", "c[personal-transport]-b[bob-tank-2]")
    reorder("item-with-entity-data", "bob-tank-3", "angels-exploration-vehicles", "c[personal-transport]-b[bob-tank-3]")

    data.raw["item-group"]["angels-warfare"].icon = nil
    data.raw["item-group"]["angels-warfare"].icon_size = nil
    data.raw["item-group"]["angels-warfare"].icons = {
      {
        icon = "__base__/graphics/item-group/military.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefining__/graphics/icons/bobs-logo.png",
        icon_size = 1080,
        scale = 64 / 1080 * 0.35,
        shift = {20, -20}
      }
    }
    data.raw["item-group"]["angels-warfare"].order = "lb[bobs]-e[warfare]"
    data.raw["item-group"]["angels-warfare"].inventory_order = "lb[bobs]-e[warfare]"
    data.raw["item-group"]["angels-warfare"].localised_name = {"item-group-name.angels-warfare-bob"}

    reorder("ammo", "scatter-cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-a[basic-rounds]")

    -- bullet guns
    reorder("gun", "rifle", "angels-warfare-bullet-guns", "a[gun]-c[rifle]")
    reorder("gun", "sniper-rifle", "angels-warfare-bullet-guns", "a[gun]-d[sniper-rifle]")
    reorder("item", "gun-turret", nil, "b[turret]-a[gun]-a")
    reorder("item", "bob-gun-turret-2", "angels-warfare-bullet-guns", "b[turret]-a[gun]-b")
    reorder("item", "bob-gun-turret-3", "angels-warfare-bullet-guns", "b[turret]-a[gun]-c")
    reorder("item", "bob-gun-turret-4", "angels-warfare-bullet-guns", "b[turret]-a[gun]-d")
    reorder("item", "bob-gun-turret-5", "angels-warfare-bullet-guns", "b[turret]-a[gun]-e")
    reorder("item", "bob-sniper-turret-1", "angels-warfare-bullet-guns", "b[turret]-c[sniper]-a")
    reorder("item", "bob-sniper-turret-2", "angels-warfare-bullet-guns", "b[turret]-c[sniper]-b")
    reorder("item", "bob-sniper-turret-3", "angels-warfare-bullet-guns", "b[turret]-c[sniper]-c")

    -- bullet projectile
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-bullet-projectiles",
          group = "angels-warfare",
          order = "b[bullets]-b[projectile]"
        }
      }
    )
    reorder("item", "bullet-projectile", "angels-warfare-bullet-projectiles", "a[regular]")
    reorder("item", "ap-bullet-projectile", "angels-warfare-bullet-projectiles", "b[pierce]")
    reorder("item", "he-bullet-projectile", "angels-warfare-bullet-projectiles", "c[explosion]")
    reorder("item", "flame-bullet-projectile", "angels-warfare-bullet-projectiles", "d[fire]")
    reorder("item", "acid-bullet-projectile", "angels-warfare-bullet-projectiles", "e[acid]")
    reorder("item", "poison-bullet-projectile", "angels-warfare-bullet-projectiles", "f[poison]")
    reorder("item", "electric-bullet-projectile", "angels-warfare-bullet-projectiles", "g[electric]")
    reorder("item", "plasma-bullet-projectile", "angels-warfare-bullet-projectiles", "h[plasma]")
    reorder("item", "uranium-bullet-projectile", "angels-warfare-bullet-projectiles", "i[nuclear]")
    reorder("item", "cordite", "angels-warfare-bullet-projectiles", "j[intermediate]")

    OV.patch_recipes(
      {
        {name = "bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "a[regular]"},
        {name = "ap-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "b[pierce]"},
        {name = "he-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "c[explosion]"},
        {name = "flame-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "d[fire]"},
        {name = "acid-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "e[acid]"},
        {name = "poison-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "f[poison]"},
        {name = "electric-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "g[electric]"},
        {name = "plasma-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "h[plasma]"},
        {name = "uranium-bullet-projectile", subgroup = "angels-warfare-bullet-projectiles", order = "i[nuclear]"},
        {name = "cordite", subgroup = "angels-warfare-bullet-projectiles", order = "j[intermediate]"}
      }
    )

    -- bullet
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-bullet",
          group = "angels-warfare",
          order = "b[bullets]-c[bullet]"
        }
      }
    )

    reorder("item", "bullet", "angels-warfare-bullet", "a[regular]")
    reorder("item", "ap-bullet", "angels-warfare-bullet", "b[pierce]")
    reorder("item", "he-bullet", "angels-warfare-bullet", "c[explosion]")
    reorder("item", "flame-bullet", "angels-warfare-bullet", "d[fire]")
    reorder("item", "acid-bullet", "angels-warfare-bullet", "e[acid]")
    reorder("item", "poison-bullet", "angels-warfare-bullet", "f[poison]")
    reorder("item", "electric-bullet", "angels-warfare-bullet", "g[electric]")
    reorder("item", "plasma-bullet", "angels-warfare-bullet", "h[plasma]")
    reorder("item", "uranium-bullet", "angels-warfare-bullet", "i[nuclear]")
    reorder("item", "bullet-casing", "angels-warfare-bullet", "j[intermediate]")

    OV.patch_recipes(
      {
        {name = "bullet", subgroup = "angels-warfare-bullet", order = "a[regular]"},
        {name = "ap-bullet", subgroup = "angels-warfare-bullet", order = "b[pierce]"},
        {name = "he-bullet", subgroup = "angels-warfare-bullet", order = "c[explosion]"},
        {name = "flame-bullet", subgroup = "angels-warfare-bullet", order = "d[fire]"},
        {name = "acid-bullet", subgroup = "angels-warfare-bullet", order = "e[acid]"},
        {name = "poison-bullet", subgroup = "angels-warfare-bullet", order = "f[poison]"},
        {name = "electric-bullet", subgroup = "angels-warfare-bullet", order = "g[electric]"},
        {name = "plasma-bullet", subgroup = "angels-warfare-bullet", order = "h[plasma]"},
        {name = "uranium-bullet", subgroup = "angels-warfare-bullet", order = "i[nuclear]"},
        {name = "bullet-casing", subgroup = "angels-warfare-bullet", order = "j[intermediate]"}
      }
    )

    -- bullet magazine
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-bullet-magazine",
          group = "angels-warfare",
          order = "b[bullets]-d[magazine]"
        }
      }
    )

    reorder("ammo", "bullet-magazine", "angels-warfare-bullet-magazine", "a[regular]")
    reorder("ammo", "ap-bullet-magazine", "angels-warfare-bullet-magazine", "b[pierce]")
    reorder("ammo", "he-bullet-magazine", "angels-warfare-bullet-magazine", "c[explosion]")
    reorder("ammo", "flame-bullet-magazine", "angels-warfare-bullet-magazine", "d[fire]")
    reorder("ammo", "acid-bullet-magazine", "angels-warfare-bullet-magazine", "e[acid]")
    reorder("ammo", "poison-bullet-magazine", "angels-warfare-bullet-magazine", "f[poison]")
    reorder("ammo", "electric-bullet-magazine", "angels-warfare-bullet-magazine", "g[electric]")
    reorder("ammo", "plasma-bullet-magazine", "angels-warfare-bullet-magazine", "h[plasma]")
    reorder("ammo", "uranium-rounds-magazine", "angels-warfare-bullet-magazine", "i[uranium]")
    reorder("ammo", "magazine", "angels-warfare-bullet-magazine", "j[intermediate]")

    OV.patch_recipes(
      {
        {name = "bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "a[regular]"},
        {name = "ap-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "b[pierce]"},
        {name = "he-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "c[explosion]"},
        {name = "flame-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "d[fire]"},
        {name = "acid-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "e[acid]"},
        {name = "poison-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "f[poison]"},
        {name = "electric-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "g[electric]"},
        {name = "plasma-bullet-magazine", subgroup = "angels-warfare-bullet-magazine", order = "h[plasma]"},
        {name = "uranium-rounds-magazine", subgroup = "angels-warfare-bullet-magazine", order = "i[nuclear]"},
        {name = "magazine", subgroup = "angels-warfare-bullet-magazine", order = "j[intermediate]"}
      }
    )

    -- shotgun guns (done by industries already, no bob variants)
    reorder("item", "shot", "angels-warfare-shotgun-guns", "z[other]-a[pellets]")
    reorder("item", "gun-cotton", "angels-warfare-shotgun-guns", "z[other]-b[cordite]-a")
    reorder("item", "petroleum-jelly", "angels-warfare-shotgun-guns", "z[other]-b[cordite]-c")

    OV.patch_recipes(
      {
        {name = "shot", subgroup = "angels-warfare-shotgun-guns", order = "z[other]-a[pellets]"},
        {name = "gun-cotton", subgroup = "angels-warfare-shotgun-guns", order = "z[other]-b[cordite]-a"},
        {name = "petroleum-jelly", subgroup = "angels-warfare-shotgun-guns", order = "z[other]-b[cordite]-b"}
      }
    )

    -- shotgun shells
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-shotgun-shells",
          group = "angels-warfare",
          order = "c[shotgun]-b[shells]"
        }
      }
    )

    reorder("ammo", "better-shotgun-shell", "angels-warfare-shotgun-shells", "a[regular]")
    reorder("ammo", "shotgun-ap-shell", "angels-warfare-shotgun-shells", "b[pierce]")
    reorder("ammo", "shotgun-explosive-shell", "angels-warfare-shotgun-shells", "c[explosion]")
    reorder("ammo", "shotgun-flame-shell", "angels-warfare-shotgun-shells", "d[fire]")
    reorder("ammo", "shotgun-acid-shell", "angels-warfare-shotgun-shells", "e[acid]")
    reorder("ammo", "shotgun-poison-shell", "angels-warfare-shotgun-shells", "f[poison]")
    reorder("ammo", "shotgun-electric-shell", "angels-warfare-shotgun-shells", "g[electric]")
    reorder("ammo", "shotgun-plasma-shell", "angels-warfare-shotgun-shells", "h[plasma]")
    reorder("ammo", "shotgun-uranium-shell", "angels-warfare-shotgun-shells", "i[nuclear]")
    reorder("item", "shotgun-shell-casing", "angels-warfare-shotgun-shells", "j[intermediate]")

    OV.patch_recipes(
      {
        {name = "better-shotgun-shell", subgroup = "angels-warfare-shotgun-shells", order = "a[regular]"},
        {name = "shotgun-ap-shell", subgroup = "angels-warfare-shotgun-shells", order = "b[pierce]"},
        {name = "shotgun-explosive-shell", subgroup = "angels-warfare-shotgun-shells", order = "c[explosion]"},
        {name = "shotgun-flame-shell", subgroup = "angels-warfare-shotgun-shells", order = "d[fire]"},
        {name = "shotgun-acid-shell", subgroup = "angels-warfare-shotgun-shells", order = "e[acid]"},
        {name = "shotgun-poison-shell", subgroup = "angels-warfare-shotgun-shells", order = "f[poison]"},
        {name = "shotgun-electric-shell", subgroup = "angels-warfare-shotgun-shells", order = "g[electric]"},
        {name = "shotgun-plasma-shell", subgroup = "angels-warfare-shotgun-shells", order = "h[plasma]"},
        {name = "shotgun-uranium-shell", subgroup = "angels-warfare-shotgun-shells", order = "i[nuclear]"},
        {name = "shotgun-shell-casing", subgroup = "angels-warfare-shotgun-shells", order = "j[intermediate]"}
      }
    )

    -- rocket warhead
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-rocket-warhead",
          group = "angels-warfare",
          order = "d[rocket]-b[warhead]"
        }
      }
    )

    reorder("item", "rocket-warhead", "angels-warfare-rocket-warhead", "a[regular]")
    reorder("item", "piercing-rocket-warhead", "angels-warfare-rocket-warhead", "b[pierce]")
    reorder("item", "explosive-rocket-warhead", "angels-warfare-rocket-warhead", "c[explosion]")
    reorder("item", "flame-rocket-warhead", "angels-warfare-rocket-warhead", "d[fire]")
    reorder("item", "acid-rocket-warhead", "angels-warfare-rocket-warhead", "e[acid]")
    reorder("item", "poison-rocket-warhead", "angels-warfare-rocket-warhead", "f[poison]")
    reorder("item", "electric-rocket-warhead", "angels-warfare-rocket-warhead", "g[electric]")
    reorder("item", "plasma-rocket-warhead", "angels-warfare-rocket-warhead", "h[plasma]")
    -- reorder("item", "uranium-rocket-warhead", "angels-warfare-rocket-warhead", "i[nuclear]")
    reorder("item", "rocket-engine", "angels-warfare-rocket-warhead", "j[intermediate]")

    OV.patch_recipes(
      {
        {name = "rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "a[regular]"},
        {name = "piercing-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "b[pierce]"},
        {name = "explosive-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "c[explosion]"},
        {name = "flame-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "d[fire]"},
        {name = "acid-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "e[acid]"},
        {name = "poison-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "f[poison]"},
        {name = "electric-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "g[electric]"},
        {name = "plasma-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "h[plasma]"},
        --{ name = "uranium-rocket-warhead", subgroup = "angels-warfare-rocket-warhead", order = "i[nuclear]" },
        {name = "rocket-engine", subgroup = "angels-warfare-rocket-warhead", order = "j[intermediate]"}
      }
    )

    -- rocket
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-bob-rocket",
          group = "angels-warfare",
          order = "d[rocket]-c[bob-rocket]"
        }
      }
    )

    reorder("ammo", "bob-rocket", "angels-warfare-bob-rocket", "a[regular]")
    reorder("ammo", "bob-piercing-rocket", "angels-warfare-bob-rocket", "b[pierce]")
    reorder("ammo", "bob-explosive-rocket", "angels-warfare-bob-rocket", "c[explosion]")
    reorder("ammo", "bob-flame-rocket", "angels-warfare-bob-rocket", "d[fire]")
    reorder("ammo", "bob-acid-rocket", "angels-warfare-bob-rocket", "e[acid]")
    reorder("ammo", "bob-poison-rocket", "angels-warfare-bob-rocket", "f[poison]")
    reorder("ammo", "bob-electric-rocket", "angels-warfare-bob-rocket", "g[electric]")
    reorder("ammo", "bob-plasma-rocket", "angels-warfare-bob-rocket", "h[plasma]")
    -- reorder("ammo", "bob-uranium-rocket", "angels-warfare-bob-rocket", "i[nuclear]")
    reorder("item", "rocket-body", "angels-warfare-bob-rocket", "j[intermediate]")
    OV.patch_recipes(
      {
        {name = "bob-rocket", subgroup = "angels-warfare-bob-rocket", order = "a[regular]"},
        {name = "bob-piercing-rocket", subgroup = "angels-warfare-bob-rocket", order = "b[pierce]"},
        {name = "bob-explosive-rocket", subgroup = "angels-warfare-bob-rocket", order = "c[explosion]"},
        {name = "bob-flame-rocket", subgroup = "angels-warfare-bob-rocket", order = "d[fire]"},
        {name = "bob-acid-rocket", subgroup = "angels-warfare-bob-rocket", order = "e[acid]"},
        {name = "bob-poison-rocket", subgroup = "angels-warfare-bob-rocket", order = "f[poison]"},
        {name = "bob-electric-rocket", subgroup = "angels-warfare-bob-rocket", order = "g[electric]"},
        {name = "bob-plasma-rocket", subgroup = "angels-warfare-bob-rocket", order = "h[plasma]"},
        --{ name = "bob-uranium-rocket", subgroup = "angels-warfare-bob-rocket", order = "i[nuclear]" },
        {name = "rocket-body", subgroup = "angels-warfare-bob-rocket", order = "j[intermediate]"}
      }
    )

    -- laser gun
    reorder("gun", "laser-rifle", "angels-warfare-laser-guns", "a[gun]-a[rifle]")
    reorder("item", "laser-turret", nil, "b[turret]-a[laser]-a")
    reorder("item", "bob-laser-turret-2", "angels-warfare-laser-guns", "b[turret]-a[laser]-b")
    reorder("item", "bob-laser-turret-3", "angels-warfare-laser-guns", "b[turret]-a[laser]-c")
    reorder("item", "bob-laser-turret-4", "angels-warfare-laser-guns", "b[turret]-a[laser]-d")
    reorder("item", "bob-laser-turret-5", "angels-warfare-laser-guns", "b[turret]-a[laser]-e")

    reorder("item", "bob-plasma-turret-1", "angels-warfare-laser-guns", "b[turret]-b[plasma]-a")
    reorder("item", "bob-plasma-turret-2", "angels-warfare-laser-guns", "b[turret]-b[plasma]-b")
    reorder("item", "bob-plasma-turret-3", "angels-warfare-laser-guns", "b[turret]-b[plasma]-c")
    reorder("item", "bob-plasma-turret-4", "angels-warfare-laser-guns", "b[turret]-b[plasma]-d")
    reorder("item", "bob-plasma-turret-5", "angels-warfare-laser-guns", "b[turret]-b[plasma]-e")

    -- laser rifle
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-warfare-laser-battery",
          group = "angels-warfare",
          order = "f[laser-rifle]-b[battery]"
        }
      }
    )
    reorder("ammo", "laser-rifle-battery", "angels-warfare-laser-battery", "a[regular]")
    reorder("ammo", "laser-rifle-battery-ruby", "angels-warfare-laser-battery", "b[ruby]")
    reorder("ammo", "laser-rifle-battery-sapphire", "angels-warfare-laser-battery", "c[sapphire]")
    reorder("ammo", "laser-rifle-battery-emerald", "angels-warfare-laser-battery", "d[emerald]")
    reorder("ammo", "laser-rifle-battery-amethyst", "angels-warfare-laser-battery", "e[amethyst]")
    reorder("ammo", "laser-rifle-battery-topaz", "angels-warfare-laser-battery", "f[topaz]")
    reorder("ammo", "laser-rifle-battery-diamond", "angels-warfare-laser-battery", "g[diamond]")
    reorder("item", "laser-rifle-battery-case", "angels-warfare-laser-battery", "j[intermediate]")

    OV.patch_recipes(
      {
        {name = "laser-rifle-battery", subgroup = "angels-warfare-laser-battery", order = "a[regular]"},
        {name = "laser-rifle-battery-ruby", subgroup = "angels-warfare-laser-battery", order = "b[ruby]"},
        {name = "laser-rifle-battery-sapphire", subgroup = "angels-warfare-laser-battery", order = "c[sapphire]"},
        {name = "laser-rifle-battery-emerald", subgroup = "angels-warfare-laser-battery", order = "d[emerald]"},
        {name = "laser-rifle-battery-amethyst", subgroup = "angels-warfare-laser-battery", order = "e[amethyst]"},
        {name = "laser-rifle-battery-topaz", subgroup = "angels-warfare-laser-battery", order = "f[topaz]"},
        {name = "laser-rifle-battery-diamond", subgroup = "angels-warfare-laser-battery", order = "g[diamond]"},
        {name = "laser-rifle-battery-case", subgroup = "angels-warfare-laser-battery", order = "j[intermediate]"}
      }
    )

    -- artillery turret
    reorder("item", "artillery-turret", nil, "b[turret]-a[artillery]-a")
    reorder("item", "bob-artillery-turret-2", "angels-warfare-artillery-guns", "b[turret]-a[artillery]-b")
    reorder("item", "bob-artillery-turret-3", "angels-warfare-artillery-guns", "b[turret]-a[artillery]-c")
    reorder("ammo", "poison-artillery-shell", "angels-warfare-artillery-guns", "c[basic-ammo]-b[poison-rounds]")
    reorder("ammo", "fire-artillery-shell", "angels-warfare-artillery-guns", "c[basic-ammo]-c[fire-rounds]")
    reorder("ammo", "explosive-artillery-shell", "angels-warfare-artillery-guns", "c[basic-ammo]-d[explosive-rounds]")
    reorder("ammo", "distractor-artillery-shell", "angels-warfare-artillery-guns", "c[basic-ammo]-e[distractor-rounds]")

    -- capsules
    reorder("item", "poison-mine", "angels-warfare-capsules-manual", "a[mine]-b[poison]")
    reorder("item", "slowdown-mine", "angels-warfare-capsules-manual", "a[mine]-c[slowdown]")
    reorder("item", "distractor-mine", "angels-warfare-capsules-manual", "a[mine]-d[distractor]")
    reorder("capsule", "fire-capsule", "angels-warfare-capsules-manual", "c[clouds]-c[fire]")
    reorder("capsule", "bob-laser-robot-capsule", "angels-warfare-capsules-manual", "d[troups]-d[laser]")

    -- attack drones, due to lack of a better place to put them
    reorder("item", "robot-drone-frame", "angels-warfare-capsules-manual", "e[drone]-a[intermediate]-a[regular]")
    reorder("item", "robot-drone-frame-large", "angels-warfare-capsules-manual", "e[drone]-a[intermediate]-b[large]")
    reorder("item", "bob-robot-gun-drone", "angels-warfare-capsules-manual", "e[drone]-b[robot]-a[gun]")
    reorder("item", "bob-robot-laser-drone", "angels-warfare-capsules-manual", "e[drone]-b[robot]-b[laser]")
    reorder(
      "item",
      "bob-robot-flamethrower-drone",
      "angels-warfare-capsules-manual",
      "e[drone]-b[robot]-c[flamethrower]"
    )
    reorder("item", "bob-robot-plasma-drone", "angels-warfare-capsules-manual", "e[drone]-b[robot]-d[plasma]")

    -- wall
    reorder("item", "wall-0", "angels-warfare-wall", "a[wall]-a[primitive]-a[wall]")
    reorder("item", "reinforced-wall", "angels-warfare-wall", "a[wall]-b[reinforced]-a[wall]")
    reorder("item", "reinforced-gate", "angels-warfare-wall", "a[wall]-b[reinforced]-b[gate]")
  end

  -- ORDENING OF EQUIPMENT
  if bobmods and bobmods.equipment then
    if mods["bobvehicleequipment"] then -- vehicle equipment
      -- power equipment
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobpower-a",
            group = "angels-vehicles",
            order = "dc-a[power]-a[solar]"
          }
        }
      )
      reorder("item", "vehicle-solar-panel-1", "angels-vehicle-equipment-bobpower-a", "a")
      reorder("item", "vehicle-solar-panel-2", "angels-vehicle-equipment-bobpower-a", "b")
      reorder("item", "vehicle-solar-panel-3", "angels-vehicle-equipment-bobpower-a", "c")
      reorder("item", "vehicle-solar-panel-4", "angels-vehicle-equipment-bobpower-a", "d")
      reorder("item", "vehicle-solar-panel-5", "angels-vehicle-equipment-bobpower-a", "e")
      reorder("item", "vehicle-solar-panel-6", "angels-vehicle-equipment-bobpower-a", "f")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobpower-b",
            group = "angels-vehicles",
            order = "dc-a[power]-b[fusion-cell]"
          }
        }
      )
      reorder("item", "vehicle-fusion-cell-1", "angels-vehicle-equipment-bobpower-b", "a")
      reorder("item", "vehicle-fusion-cell-2", "angels-vehicle-equipment-bobpower-b", "b")
      reorder("item", "vehicle-fusion-cell-3", "angels-vehicle-equipment-bobpower-b", "c")
      reorder("item", "vehicle-fusion-cell-4", "angels-vehicle-equipment-bobpower-b", "d")
      reorder("item", "vehicle-fusion-cell-5", "angels-vehicle-equipment-bobpower-b", "e")
      reorder("item", "vehicle-fusion-cell-6", "angels-vehicle-equipment-bobpower-b", "f")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobpower-c",
            group = "angels-vehicles",
            order = "dc-a[power]-c[fusion-reactor]"
          }
        }
      )

      reorder("item", "vehicle-fusion-reactor-1", "angels-vehicle-equipment-bobpower-c", "a")
      reorder("item", "vehicle-fusion-reactor-2", "angels-vehicle-equipment-bobpower-c", "b")
      reorder("item", "vehicle-fusion-reactor-3", "angels-vehicle-equipment-bobpower-c", "c")
      reorder("item", "vehicle-fusion-reactor-4", "angels-vehicle-equipment-bobpower-c", "d")
      reorder("item", "vehicle-fusion-reactor-5", "angels-vehicle-equipment-bobpower-c", "e")
      reorder("item", "vehicle-fusion-reactor-6", "angels-vehicle-equipment-bobpower-c", "f")
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobpower-d",
            group = "angels-vehicles",
            order = "dc-a[power]-d[battery]"
          }
        }
      )

      reorder("item", "vehicle-battery-1", "angels-vehicle-equipment-bobpower-d", "a")
      reorder("item", "vehicle-battery-2", "angels-vehicle-equipment-bobpower-d", "b")
      reorder("item", "vehicle-battery-3", "angels-vehicle-equipment-bobpower-d", "c")
      reorder("item", "vehicle-battery-4", "angels-vehicle-equipment-bobpower-d", "d")
      reorder("item", "vehicle-battery-5", "angels-vehicle-equipment-bobpower-d", "e")
      reorder("item", "vehicle-battery-6", "angels-vehicle-equipment-bobpower-d", "f")
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobpower-e",
            group = "angels-vehicles",
            order = "dc-a[power]-e[drive]"
          }
        }
      )

      reorder("item", "vehicle-motor", "angels-vehicle-equipment-bobpower-e", "a")
      reorder("item", "vehicle-engine", "angels-vehicle-equipment-bobpower-e", "b")

      -- robot equipment
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobrobot-a",
            group = "angels-vehicles",
            order = "dc-b[robot]-a[control]"
          }
        }
      )
      reorder("item", "vehicle-roboport-robot-equipment", "angels-vehicle-equipment-bobrobot-a", "a")
      reorder("item", "vehicle-roboport-robot-equipment-2", "angels-vehicle-equipment-bobrobot-a", "b")
      reorder("item", "vehicle-roboport-robot-equipment-3", "angels-vehicle-equipment-bobrobot-a", "c")
      reorder("item", "vehicle-roboport-robot-equipment-4", "angels-vehicle-equipment-bobrobot-a", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobrobot-b",
            group = "angels-vehicles",
            order = "dc-b[robot]-b[chargepad]"
          }
        }
      )
      reorder("item", "vehicle-roboport-chargepad-equipment", "angels-vehicle-equipment-bobrobot-b", "a")
      reorder("item", "vehicle-roboport-chargepad-equipment-2", "angels-vehicle-equipment-bobrobot-b", "b")
      reorder("item", "vehicle-roboport-chargepad-equipment-3", "angels-vehicle-equipment-bobrobot-b", "c")
      reorder("item", "vehicle-roboport-chargepad-equipment-4", "angels-vehicle-equipment-bobrobot-b", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobrobot-c",
            group = "angels-vehicles",
            order = "dc-b[robot]-c[expander]"
          }
        }
      )
      reorder("item", "vehicle-roboport-antenna-equipment", "angels-vehicle-equipment-bobrobot-c", "a")
      reorder("item", "vehicle-roboport-antenna-equipment-2", "angels-vehicle-equipment-bobrobot-c", "b")
      reorder("item", "vehicle-roboport-antenna-equipment-3", "angels-vehicle-equipment-bobrobot-c", "e")
      reorder("item", "vehicle-roboport-antenna-equipment-4", "angels-vehicle-equipment-bobrobot-c", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobrobot-d",
            group = "angels-vehicles",
            order = "dc-b[robot]-d[roboport]"
          }
        }
      )

      reorder("item", "vehicle-roboport", "angels-vehicle-equipment-bobrobot-d", "a")
      reorder("item", "vehicle-roboport-2", "angels-vehicle-equipment-bobrobot-d", "b")
      reorder("item", "vehicle-roboport-3", "angels-vehicle-equipment-bobrobot-d", "c")
      reorder("item", "vehicle-roboport-4", "angels-vehicle-equipment-bobrobot-d", "d")

      -- combat (weapons and defences)
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobcombat-a",
            group = "angels-vehicles",
            order = "dc-c[combat]-a[shield]"
          }
        }
      )
      reorder("item", "vehicle-shield-1", "angels-vehicle-equipment-bobcombat-a", "a")
      reorder("item", "vehicle-shield-2", "angels-vehicle-equipment-bobcombat-a", "b")
      reorder("item", "vehicle-shield-3", "angels-vehicle-equipment-bobcombat-a", "c")
      reorder("item", "vehicle-shield-4", "angels-vehicle-equipment-bobcombat-a", "d")
      reorder("item", "vehicle-shield-5", "angels-vehicle-equipment-bobcombat-a", "e")
      reorder("item", "vehicle-shield-6", "angels-vehicle-equipment-bobcombat-a", "f")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobcombat-b",
            group = "angels-vehicles",
            order = "dc-c[combat]-b[laser]"
          }
        }
      )
      reorder("item", "vehicle-laser-defense-1", "angels-vehicle-equipment-bobcombat-b", "a")
      reorder("item", "vehicle-laser-defense-2", "angels-vehicle-equipment-bobcombat-b", "b")
      reorder("item", "vehicle-laser-defense-3", "angels-vehicle-equipment-bobcombat-b", "c")
      reorder("item", "vehicle-laser-defense-4", "angels-vehicle-equipment-bobcombat-b", "d")
      reorder("item", "vehicle-laser-defense-5", "angels-vehicle-equipment-bobcombat-b", "e")
      reorder("item", "vehicle-laser-defense-6", "angels-vehicle-equipment-bobcombat-b", "f")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-vehicle-equipment-bobcombat-c",
            group = "angels-vehicles",
            order = "dc-c[combat]-c[plasma]"
          }
        }
      )
      reorder("item", "vehicle-big-turret-1", "angels-vehicle-equipment-bobcombat-c", "a")
      reorder("item", "vehicle-big-turret-2", "angels-vehicle-equipment-bobcombat-c", "b")
      reorder("item", "vehicle-big-turret-3", "angels-vehicle-equipment-bobcombat-c", "c")
      reorder("item", "vehicle-big-turret-4", "angels-vehicle-equipment-bobcombat-c", "d")
      reorder("item", "vehicle-big-turret-5", "angels-vehicle-equipment-bobcombat-c", "e")
      reorder("item", "vehicle-big-turret-6", "angels-vehicle-equipment-bobcombat-c", "f")
    end
    if mods["bobequipment"] then -- personal equipment
      -- power equipment                                                                                 order h-a[armor] reserved for armors from warfare
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobpower-a",
            group = "angels-exploration",
            order = "h-b[power]-a[solar]"
          }
        }
      )
      reorder("item", "solar-panel-equipment", "angels-personal-equipment-bobpower-a", "a")
      reorder("item", "solar-panel-equipment-2", "angels-personal-equipment-bobpower-a", "b")
      reorder("item", "solar-panel-equipment-3", "angels-personal-equipment-bobpower-a", "c")
      reorder("item", "solar-panel-equipment-4", "angels-personal-equipment-bobpower-a", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobpower-b",
            group = "angels-exploration",
            order = "h-b[power]-b[fusion-reactor]"
          }
        }
      )
      reorder("item", "fusion-reactor-equipment", "angels-personal-equipment-bobpower-b", "a")
      reorder("item", "fusion-reactor-equipment-2", "angels-personal-equipment-bobpower-b", "b")
      reorder("item", "fusion-reactor-equipment-3", "angels-personal-equipment-bobpower-b", "c")
      reorder("item", "fusion-reactor-equipment-4", "angels-personal-equipment-bobpower-b", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobpower-c",
            group = "angels-exploration",
            order = "h-b[power]-c[battery]"
          }
        }
      )
      reorder("item", "battery-equipment", "angels-personal-equipment-bobpower-c", "a")
      reorder("item", "battery-mk2-equipment", "angels-personal-equipment-bobpower-c", "b")
      reorder("item", "battery-mk3-equipment", "angels-personal-equipment-bobpower-c", "c")
      reorder("item", "battery-mk4-equipment", "angels-personal-equipment-bobpower-c", "d")
      reorder("item", "battery-mk5-equipment", "angels-personal-equipment-bobpower-c", "e")
      reorder("item", "battery-mk6-equipment", "angels-personal-equipment-bobpower-c", "f")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobpower-d",
            group = "angels-exploration",
            order = "h-b[power]-d[night-vision]"
          }
        }
      )
      reorder("item", "night-vision-equipment", "angels-personal-equipment-bobpower-d", "a")
      reorder("item", "night-vision-equipment-2", "angels-personal-equipment-bobpower-d", "b")
      reorder("item", "night-vision-equipment-3", "angels-personal-equipment-bobpower-d", "c")
      reorder("item", "belt-immunity-equipment", "angels-personal-equipment-bobpower-d", "d")

      -- robot equipment
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobrobot-a",
            group = "angels-exploration",
            order = "h-c[robot]-a[control]"
          }
        }
      )
      reorder("item", "personal-roboport-robot-equipment", "angels-personal-equipment-bobrobot-a", "a")
      reorder("item", "personal-roboport-robot-equipment-2", "angels-personal-equipment-bobrobot-a", "b")
      reorder("item", "personal-roboport-robot-equipment-3", "angels-personal-equipment-bobrobot-a", "c")
      reorder("item", "personal-roboport-robot-equipment-4", "angels-personal-equipment-bobrobot-a", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobrobot-b",
            group = "angels-exploration",
            order = "h-c[robot]-b[chargepad]"
          }
        }
      )
      reorder("item", "personal-roboport-chargepad-equipment", "angels-personal-equipment-bobrobot-b", "a")
      reorder("item", "personal-roboport-chargepad-equipment-2", "angels-personal-equipment-bobrobot-b", "b")
      reorder("item", "personal-roboport-chargepad-equipment-3", "angels-personal-equipment-bobrobot-b", "c")
      reorder("item", "personal-roboport-chargepad-equipment-4", "angels-personal-equipment-bobrobot-b", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobrobot-c",
            group = "angels-exploration",
            order = "h-c[robot]-c[expander]"
          }
        }
      )
      reorder("item", "personal-roboport-antenna-equipment", "angels-personal-equipment-bobrobot-c", "a")
      reorder("item", "personal-roboport-antenna-equipment-2", "angels-personal-equipment-bobrobot-c", "b")
      reorder("item", "personal-roboport-antenna-equipment-3", "angels-personal-equipment-bobrobot-c", "c")
      reorder("item", "personal-roboport-antenna-equipment-4", "angels-personal-equipment-bobrobot-c", "d")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobrobot-d",
            group = "angels-exploration",
            order = "h-c[robot]-d[roboport]"
          }
        }
      )
      reorder("item", "personal-roboport-equipment", "angels-personal-equipment-bobrobot-d", "a")
      reorder("item", "personal-roboport-mk2-equipment", "angels-personal-equipment-bobrobot-d", "b")
      reorder("item", "personal-roboport-mk3-equipment", "angels-personal-equipment-bobrobot-d", "c")
      reorder("item", "personal-roboport-mk4-equipment", "angels-personal-equipment-bobrobot-d", "d")

      -- combat (weapons and defences)
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobcombat-a",
            group = "angels-exploration",
            order = "h-d[robot]-a[shields]"
          }
        }
      )
      reorder("item", "energy-shield-equipment", "angels-personal-equipment-bobcombat-a", "a")
      reorder("item", "energy-shield-mk2-equipment", "angels-personal-equipment-bobcombat-a", "b")
      reorder("item", "energy-shield-mk3-equipment", "angels-personal-equipment-bobcombat-a", "c")
      reorder("item", "energy-shield-mk4-equipment", "angels-personal-equipment-bobcombat-a", "d")
      reorder("item", "energy-shield-mk5-equipment", "angels-personal-equipment-bobcombat-a", "e")
      reorder("item", "energy-shield-mk6-equipment", "angels-personal-equipment-bobcombat-a", "f")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobcombat-b",
            group = "angels-exploration",
            order = "h-d[robot]-b[legs]"
          }
        }
      )
      reorder("item", "exoskeleton-equipment", "angels-personal-equipment-bobcombat-b", "a")
      reorder("item", "exoskeleton-equipment-2", "angels-personal-equipment-bobcombat-b", "b")
      reorder("item", "exoskeleton-equipment-3", "angels-personal-equipment-bobcombat-b", "c")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobcombat-c",
            group = "angels-exploration",
            order = "h-d[robot]-c[laser]"
          }
        }
      )
      reorder("item", "personal-laser-defense-equipment", "angels-personal-equipment-bobcombat-c", "a")
      reorder("item", "personal-laser-defense-equipment-2", "angels-personal-equipment-bobcombat-c", "b")
      reorder("item", "personal-laser-defense-equipment-3", "angels-personal-equipment-bobcombat-c", "c")
      reorder("item", "personal-laser-defense-equipment-4", "angels-personal-equipment-bobcombat-c", "d")
      reorder("item", "personal-laser-defense-equipment-5", "angels-personal-equipment-bobcombat-c", "e")
      reorder("item", "personal-laser-defense-equipment-6", "angels-personal-equipment-bobcombat-c", "a")

      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-personal-equipment-bobcombat-d",
            group = "angels-exploration",
            order = "h-d[robot]-d[discharge]"
          }
        }
      )
      reorder("capsule", "discharge-defense-remote", "angels-personal-equipment-bobcombat-d", "a[remote]")
      reorder("item", "discharge-defense-equipment", "angels-personal-equipment-bobcombat-d", "b[equipment]")
    end
  end

  -- ORDERING OF ARMOR
  if bobmods and bobmods.warfare then
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-personal-equipment-bobarmor-a",
          group = "angels-exploration",
          order = "h-a[armor]-a[normal]"
        }
      }
    )

    reorder("armor", "light-armor", "angels-personal-equipment-bobarmor-a", "a")
    reorder("armor", "heavy-armor", "angels-personal-equipment-bobarmor-a", "b")
    reorder("armor", "heavy-armor-2", "angels-personal-equipment-bobarmor-a", "c")
    reorder("armor", "heavy-armor-3", "angels-personal-equipment-bobarmor-a", "d")

    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-personal-equipment-bobarmor-b",
          group = "angels-exploration",
          order = "h-a[armor]-b[power]"
        }
      }
    )
    reorder("armor", "modular-armor", "angels-personal-equipment-bobarmor-b", "a")
    reorder("armor", "power-armor", "angels-personal-equipment-bobarmor-b", "b")
    reorder("armor", "power-armor-mk2", "angels-personal-equipment-bobarmor-b", "c")
    reorder("armor", "bob-power-armor-mk3", "angels-personal-equipment-bobarmor-b", "d")
    reorder("armor", "bob-power-armor-mk4", "angels-personal-equipment-bobarmor-b", "e")
    reorder("armor", "bob-power-armor-mk5", "angels-personal-equipment-bobarmor-b", "f")
  end
else -- industries not present
  -- ORDENING OF EQUIPMENT
  -- todo
  -- ORDENING OF WEAPONS

  -- angels physical a
  reorder("gun", "pistol", "angels-physical-a", "a[gun]-a[pistol]")
  reorder("gun", "submachine-gun", "angels-physical-a", "a[gun]-b[submachine]")
  reorder("item", "gun-turret", "angels-physical-a", "b[turret]-a[magazine-gun]")
  reorder("ammo", "firearm-magazine", "angels-physical-a", "c[basic-ammo]-a[basic-rounds]")
  reorder("ammo", "uranium-rounds-magazine", "angels-physical-a", "c[basic-ammo]-c[uranium-rounds]")

  -- angels physical b
  reorder("gun", "shotgun", "angels-physical-b", "a[gun]-a[basic]")
  reorder("gun", "combat-shotgun", "angels-physical-b", "a[gun]-b[combat]")
  reorder("ammo", "shotgun-shell", "angels-physical-b", "c[basic-ammo]-a[basic-shells]")
  reorder("ammo", "piercing-shotgun-shell", "angels-physical-b", "c[basic-ammo]-b[piercing-shells]")

  -- angels fire
  reorder("gun", "flamethrower", "angels-fire", "a[gun]-a[flamethrower]")
  reorder("item", "flamethrower-turret", "angels-fire", "b[turret]-a[flame]")
  reorder("ammo", "flamethrower-ammo", "angels-fire", "c[basic-ammo]-a[flame-rounds]")

  -- angels explosion a (rocket)
  reorder("gun", "rocket-launcher", "angels-explosion-a", "a[gun]-a[rocket-launcher]")
  reorder("ammo", "rocket", "angels-explosion-a", "c[basic-ammo]-a[basic-rounds]")
  reorder("ammo", "explosive-rocket", "angels-explosion-a", "c[basic-ammo]-b[explosive-rounds]")
  reorder("ammo", "atomic-bomb", "angels-explosion-a", "c[basic-ammo]-c[uranium-rounds]")

  -- angels explosion b (cannon)
  reorder("ammo", "cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-a[basic-rounds]")
  reorder("ammo", "explosive-cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-b[explosive-rounds]")
  reorder("ammo", "uranium-cannon-shell", "angels-explosion-b", "c[basic-ammo]-a[light]-c[uranium-rounds]")
  reorder(
    "ammo",
    "explosive-uranium-cannon-shell",
    "angels-explosion-b",
    "c[basic-ammo]-a[light]-d[explosive-uranium-rounds]"
  )

  -- angels electric
  reorder("item", "laser-turret", "angels-electric", "b[turret]-a[laser]")

  -- angels artillery
  reorder("capsule", "artillery-targeting-remote", "angels-artillery", "a[gun]-a[remote]")
  reorder("item", "artillery-turret", "angels-artillery", "b[turret]-a[artillery]")
  reorder("ammo", "artillery-shell", "angels-artillery", "c[basic-ammo]-a[basic-rounds]")
end
