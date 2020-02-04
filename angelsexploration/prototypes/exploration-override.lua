local OV = angelsmods.functions.OV

if angelsmods.industries and angelsmods.industries.overhaul then
  data.raw["item-with-entity-data"]["car"].subgroup = "angels-exploration-vehicles"
  data.raw["item-with-entity-data"]["tank"].subgroup = "angels-exploration-vehicles"
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-energy")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-repair")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-defense")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-attack")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-movement")

  if bobmods and bobmods.warfare then
    data.raw["item-with-entity-data"]["bob-tank-2"].subgroup = "angels-exploration-vehicles"
    data.raw["item-with-entity-data"]["bob-tank-2"].order = "c[personal-transport]-b[bob-tank-2]"
    data.raw["item-with-entity-data"]["bob-tank-3"].subgroup = "angels-exploration-vehicles"
    data.raw["item-with-entity-data"]["bob-tank-3"].order = "c[personal-transport]-b[bob-tank-3]"

    -- if warfare is present, all weapons are put in a seperate tab
    -- the exploration tab is then only vehicles and personal/vehicle equipment
    data:extend({
      {
        type = "item-group",
        name = "angels-exploration-warfare",
        order = "lb[bobs]-e[warfare]",
        inventory_order = "lb[bobs]-e[warfare]",
        icons = {
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
      }
    })

    -- bullet guns
    data:extend({ { type = "item-subgroup", name = "angels-exploration-bullet-guns", group = "angels-exploration-warfare", order = "b[bullets]-a[guns]" } })
    data.raw.gun["pistol"].subgroup = "angels-exploration-bullet-guns"
    data.raw.gun["pistol"].order = "a[gun]-a[pistol]"
    data.raw.gun["submachine-gun"].subgroup = "angels-exploration-bullet-guns"
    data.raw.gun["submachine-gun"].order = "a[gun]-b[submachine]"
    data.raw.gun["rifle"].subgroup = "angels-exploration-bullet-guns"
    data.raw.gun["rifle"].order = "a[gun]-c[rifle]"
    data.raw.gun["sniper-rifle"].subgroup = "angels-exploration-bullet-guns"
    data.raw.gun["sniper-rifle"].order = "a[gun]-c[rifle]"
    data.raw.ammo["firearm-magazine"].subgroup = "angels-exploration-bullet-guns"
    data.raw.ammo["firearm-magazine"].order = "b[basic-magazine]-a[basic-rounds]"
    data.raw.ammo["piercing-rounds-magazine"].subgroup = "angels-exploration-bullet-guns"
    data.raw.ammo["piercing-rounds-magazine"].order = "b[basic-magazine]-b[piercing-rounds]"

    -- bullet projectile
    data:extend({ { type = "item-subgroup", name = "angels-exploration-bullet-projectiles", group = "angels-exploration-warfare", order = "b[bullets]-b[projectile]" } })
    data.raw.item["bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["bullet-projectile"].order = "a[regular]"
    data.raw.item["ap-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["ap-bullet-projectile"].order = "b[pierce]"
    data.raw.item["he-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["he-bullet-projectile"].order = "c[explosion]"
    data.raw.item["flame-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["flame-bullet-projectile"].order = "d[fire]"
    data.raw.item["acid-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["acid-bullet-projectile"].order = "e[acid]"
    data.raw.item["poison-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["poison-bullet-projectile"].order = "f[poison]"
    data.raw.item["electric-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["electric-bullet-projectile"].order = "g[electric]"
    data.raw.item["plasma-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["plasma-bullet-projectile"].order = "h[plasma]"
    data.raw.item["uranium-bullet-projectile"].subgroup = "angels-exploration-bullet-projectiles"
    data.raw.item["uranium-bullet-projectile"].order = "i[nuclear]"
    OV.patch_recipes({
      { name = "bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "a[regular]" },
      { name = "ap-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "b[pierce]" },
      { name = "he-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "c[explosion]" },
      { name = "flame-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "d[fire]" },
      { name = "acid-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "e[acid]" },
      { name = "poison-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "f[poison]" },
      { name = "electric-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "g[electric]" },
      { name = "plasma-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "h[plasma]" },
      { name = "uranium-bullet-projectile", subgroup = "angels-exploration-bullet-projectiles", order = "i[nuclear]" },
    })

    -- bullet
    data:extend({ { type = "item-subgroup", name = "angels-exploration-bullet", group = "angels-exploration-warfare", order = "b[bullets]-c[bullet]" } })
    data.raw.item["bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["bullet"].order = "a[regular]"
    data.raw.item["ap-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["ap-bullet"].order = "b[pierce]"
    data.raw.item["he-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["he-bullet"].order = "c[explosion]"
    data.raw.item["flame-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["flame-bullet"].order = "d[fire]"
    data.raw.item["acid-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["acid-bullet"].order = "e[acid]"
    data.raw.item["poison-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["poison-bullet"].order = "f[poison]"
    data.raw.item["electric-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["electric-bullet"].order = "g[electric]"
    data.raw.item["plasma-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["plasma-bullet"].order = "h[plasma]"
    data.raw.item["uranium-bullet"].subgroup = "angels-exploration-bullet"
    data.raw.item["uranium-bullet"].order = "i[nuclear]"
    data.raw.item["bullet-casing"].subgroup = "angels-exploration-bullet"
    data.raw.item["bullet-casing"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bullet", subgroup = "angels-exploration-bullet", order = "a[regular]" },
      { name = "ap-bullet", subgroup = "angels-exploration-bullet", order = "b[pierce]" },
      { name = "he-bullet", subgroup = "angels-exploration-bullet", order = "c[explosion]" },
      { name = "flame-bullet", subgroup = "angels-exploration-bullet", order = "d[fire]" },
      { name = "acid-bullet", subgroup = "angels-exploration-bullet", order = "e[acid]" },
      { name = "poison-bullet", subgroup = "angels-exploration-bullet", order = "f[poison]" },
      { name = "electric-bullet", subgroup = "angels-exploration-bullet", order = "g[electric]" },
      { name = "plasma-bullet", subgroup = "angels-exploration-bullet", order = "h[plasma]" },
      { name = "uranium-bullet", subgroup = "angels-exploration-bullet", order = "i[nuclear]" },
      { name = "bullet-casing", subgroup = "angels-exploration-bullet", order = "j[intermediate]" },
    })

    -- bullet magazine
    data:extend({ { type = "item-subgroup", name = "angels-exploration-bullet-magazine", group = "angels-exploration-warfare", order = "b[bullets]-d[magazine]" } })
    data.raw.ammo["bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["bullet-magazine"].order = "a[regular]"
    data.raw.ammo["ap-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["ap-bullet-magazine"].order = "b[pierce]"
    data.raw.ammo["he-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["he-bullet-magazine"].order = "c[explosion]"
    data.raw.ammo["flame-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["flame-bullet-magazine"].order = "d[fire]"
    data.raw.ammo["acid-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["acid-bullet-magazine"].order = "e[acid]"
    data.raw.ammo["poison-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["poison-bullet-magazine"].order = "f[poison]"
    data.raw.ammo["electric-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["electric-bullet-magazine"].order = "g[electric]"
    data.raw.ammo["plasma-bullet-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["plasma-bullet-magazine"].order = "h[plasma]"
    data.raw.ammo["uranium-rounds-magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.ammo["uranium-rounds-magazine"].order = "i[nuclear]"
    data.raw.item["magazine"].subgroup = "angels-exploration-bullet-magazine"
    data.raw.item["magazine"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "a[regular]" },
      { name = "ap-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "b[pierce]" },
      { name = "he-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "c[explosion]" },
      { name = "flame-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "d[fire]" },
      { name = "acid-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "e[acid]" },
      { name = "poison-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "f[poison]" },
      { name = "electric-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "g[electric]" },
      { name = "plasma-bullet-magazine", subgroup = "angels-exploration-bullet-magazine", order = "h[plasma]" },
      { name = "uranium-rounds-magazine", subgroup = "angels-exploration-bullet-magazine", order = "i[nuclear]" },
      { name = "magazine", subgroup = "angels-exploration-bullet-magazine", order = "j[intermediate]" },
    })

    -- shotgun guns
    data:extend({ { type = "item-subgroup", name = "angels-exploration-shotgun-guns", group = "angels-exploration-warfare", order = "c[shotgun]-a[guns]" } })
    data.raw.gun["shotgun"].subgroup = "angels-exploration-shotgun-guns"
    data.raw.gun["shotgun"].order = "a[gun]-a[shotgun]"
    data.raw.gun["combat-shotgun"].subgroup = "angels-exploration-shotgun-guns"
    data.raw.gun["combat-shotgun"].order = "a[gun]-b[combat-shotgun]"
    data.raw.ammo["shotgun-shell"].subgroup = "angels-exploration-shotgun-guns"
    data.raw.ammo["shotgun-shell"].order = "b[basic-magazine]-a[basic-rounds]"
    data.raw.ammo["piercing-shotgun-shell"].subgroup = "angels-exploration-shotgun-guns"
    data.raw.ammo["piercing-shotgun-shell"].order = "b[basic-magazine]-b[piercing-rounds]"

    -- shotgun shells
    data:extend({ { type = "item-subgroup", name = "angels-exploration-shotgun-shells", group = "angels-exploration-warfare", order = "c[shotgun]-b[shells]" } })
    data.raw.ammo["better-shotgun-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["better-shotgun-shell"].order = "a[regular]"
    data.raw.ammo["shotgun-ap-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-ap-shell"].order = "b[pierce]"
    data.raw.ammo["shotgun-explosive-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-explosive-shell"].order = "c[explosion]"
    data.raw.ammo["shotgun-flame-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-flame-shell"].order = "d[fire]"
    data.raw.ammo["shotgun-acid-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-acid-shell"].order = "e[acid]"
    data.raw.ammo["shotgun-poison-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-poison-shell"].order = "f[poison]"
    data.raw.ammo["shotgun-electric-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-electric-shell"].order = "g[electric]"
    data.raw.ammo["shotgun-plasma-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-plasma-shell"].order = "h[plasma]"
    data.raw.ammo["shotgun-uranium-shell"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.ammo["shotgun-uranium-shell"].order = "i[nuclear]"
    data.raw.item["shotgun-shell-casing"].subgroup = "angels-exploration-shotgun-shells"
    data.raw.item["shotgun-shell-casing"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "better-shotgun-shell", subgroup = "angels-exploration-shotgun-shells", order = "a[regular]" },
      { name = "shotgun-ap-shell", subgroup = "angels-exploration-shotgun-shells", order = "b[pierce]" },
      { name = "shotgun-explosive-shell", subgroup = "angels-exploration-shotgun-shells", order = "c[explosion]" },
      { name = "shotgun-flame-shell", subgroup = "angels-exploration-shotgun-shells", order = "d[fire]" },
      { name = "shotgun-acid-shell", subgroup = "angels-exploration-shotgun-shells", order = "e[acid]" },
      { name = "shotgun-poison-shell", subgroup = "angels-exploration-shotgun-shells", order = "f[poison]" },
      { name = "shotgun-electric-shell", subgroup = "angels-exploration-shotgun-shells", order = "g[electric]" },
      { name = "shotgun-plasma-shell", subgroup = "angels-exploration-shotgun-shells", order = "h[plasma]" },
      { name = "shotgun-uranium-shell", subgroup = "angels-exploration-shotgun-shells", order = "i[nuclear]" },
      { name = "shotgun-shell-casing", subgroup = "angels-exploration-shotgun-shells", order = "j[intermediate]" },
    })

    -- rocket warhead
    data:extend({ { type = "item-subgroup", name = "angels-exploration-rocket-warhead", group = "angels-exploration-warfare", order = "d[rocket]-a[warhead]" } })
    data.raw.item["rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["rocket-warhead"].order = "a[regular]"
    data.raw.item["piercing-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["piercing-rocket-warhead"].order = "b[pierce]"
    data.raw.item["explosive-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["explosive-rocket-warhead"].order = "c[explosion]"
    data.raw.item["flame-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["flame-rocket-warhead"].order = "d[fire]"
    data.raw.item["acid-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["acid-rocket-warhead"].order = "e[acid]"
    data.raw.item["poison-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["poison-rocket-warhead"].order = "f[poison]"
    data.raw.item["electric-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["electric-rocket-warhead"].order = "g[electric]"
    data.raw.item["plasma-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["plasma-rocket-warhead"].order = "h[plasma]"
    --data.raw.item["uranium-rocket-warhead"].subgroup = "angels-exploration-rocket-warhead"
    --data.raw.item["uranium-rocket-warhead"].order = "i[nuclear]"
    data.raw.item["rocket-engine"].subgroup = "angels-exploration-rocket-warhead"
    data.raw.item["rocket-engine"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "a[regular]" },
      { name = "piercing-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "b[pierce]" },
      { name = "explosive-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "c[explosion]" },
      { name = "flame-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "d[fire]" },
      { name = "acid-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "e[acid]" },
      { name = "poison-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "f[poison]" },
      { name = "electric-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "g[electric]" },
      { name = "plasma-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "h[plasma]" },
      --{ name = "uranium-rocket-warhead", subgroup = "angels-exploration-rocket-warhead", order = "i[nuclear]" },
      { name = "rocket-engine", subgroup = "angels-exploration-rocket-warhead", order = "j[intermediate]" },
    })

    -- rocket
    data:extend({ { type = "item-subgroup", name = "angels-exploration-bob-rocket", group = "angels-exploration-warfare", order = "d[rocket]-b[bob-rocket]" } })
    data.raw.ammo["bob-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-rocket"].order = "a[regular]"
    data.raw.ammo["bob-piercing-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-piercing-rocket"].order = "b[pierce]"
    data.raw.ammo["bob-explosive-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-explosive-rocket"].order = "c[explosion]"
    data.raw.ammo["bob-flame-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-flame-rocket"].order = "d[fire]"
    data.raw.ammo["bob-acid-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-acid-rocket"].order = "e[acid]"
    data.raw.ammo["bob-poison-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-poison-rocket"].order = "f[poison]"
    data.raw.ammo["bob-electric-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-electric-rocket"].order = "g[electric]"
    data.raw.ammo["bob-plasma-rocket"].subgroup = "angels-exploration-bob-rocket"
    data.raw.ammo["bob-plasma-rocket"].order = "h[plasma]"
    --data.raw.ammo["bob-uranium-rocket"].subgroup = "angels-exploration-bob-rocket"
    --data.raw.ammo["bob-uranium-rocket"].order = "i[nuclear]"
    data.raw.item["rocket-body"].subgroup = "angels-exploration-bob-rocket"
    data.raw.item["rocket-body"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "bob-rocket", subgroup = "angels-exploration-bob-rocket", order = "a[regular]" },
      { name = "bob-piercing-rocket", subgroup = "angels-exploration-bob-rocket", order = "b[pierce]" },
      { name = "bob-explosive-rocket", subgroup = "angels-exploration-bob-rocket", order = "c[explosion]" },
      { name = "bob-flame-rocket", subgroup = "angels-exploration-bob-rocket", order = "d[fire]" },
      { name = "bob-acid-rocket", subgroup = "angels-exploration-bob-rocket", order = "e[acid]" },
      { name = "bob-poison-rocket", subgroup = "angels-exploration-bob-rocket", order = "f[poison]" },
      { name = "bob-electric-rocket", subgroup = "angels-exploration-bob-rocket", order = "g[electric]" },
      { name = "bob-plasma-rocket", subgroup = "angels-exploration-bob-rocket", order = "h[plasma]" },
      --{ name = "bob-uranium-rocket", subgroup = "angels-exploration-bob-rocket", order = "i[nuclear]" },
      { name = "rocket-body", subgroup = "angels-exploration-bob-rocket", order = "j[intermediate]" },
    })

    -- laser rifle
    data:extend({ { type = "item-subgroup", name = "angels-exploration-laser-rifle-battery", group = "angels-exploration-warfare", order = "e[laser-rifle]-a[battery]" } })
    data.raw.ammo["laser-rifle-battery"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery"].order = "a[regular]"
    data.raw.ammo["laser-rifle-battery-ruby"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery-ruby"].order = "b[ruby]"
    data.raw.ammo["laser-rifle-battery-sapphire"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery-sapphire"].order = "c[sapphire]"
    data.raw.ammo["laser-rifle-battery-emerald"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery-emerald"].order = "d[emerald]"
    data.raw.ammo["laser-rifle-battery-amethyst"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery-amethyst"].order = "e[amethyst]"
    data.raw.ammo["laser-rifle-battery-topaz"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery-topaz"].order = "f[topaz]"
    data.raw.ammo["laser-rifle-battery-diamond"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.ammo["laser-rifle-battery-diamond"].order = "g[diamond]"
    data.raw.item["laser-rifle-battery-case"].subgroup = "angels-exploration-laser-rifle-battery"
    data.raw.item["laser-rifle-battery-case"].order = "j[intermediate]"
    OV.patch_recipes({
      { name = "laser-rifle-battery", subgroup = "angels-exploration-laser-rifle-battery", order = "a[regular]" },
      { name = "laser-rifle-battery-ruby", subgroup = "angels-exploration-laser-rifle-battery", order = "b[ruby]" },
      { name = "laser-rifle-battery-sapphire", subgroup = "angels-exploration-laser-rifle-battery", order = "c[sapphire]" },
      { name = "laser-rifle-battery-emerald", subgroup = "angels-exploration-laser-rifle-battery", order = "d[emerald]" },
      { name = "laser-rifle-battery-amethyst", subgroup = "angels-exploration-laser-rifle-battery", order = "e[amethyst]" },
      { name = "laser-rifle-battery-topaz", subgroup = "angels-exploration-laser-rifle-battery", order = "f[topaz]" },
      { name = "laser-rifle-battery-diamond", subgroup = "angels-exploration-laser-rifle-battery", order = "g[diamond]" },
      { name = "laser-rifle-battery-case", subgroup = "angels-exploration-laser-rifle-battery", order = "j[intermediate]" },
    })
  end
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
