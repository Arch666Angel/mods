table.insert(data.raw.technology["military-4"].prerequisites, "angels-cannon-turret")
table.insert(data.raw.technology["military-4"].effects, { type = "unlock-recipe", recipe = "cannon-turret-shell-2" })

if angelsmods.industries then
  local OV = angelsmods.functions.OV

  -- turrets require guns as ingredients, compensate recipe for it as well

  -- gun turret
  OV.patch_recipes({
    {
      name = "submachine-gun",
      ingredients = {
        { "!!" },
        { type = "item", name = "pistol", amount = 1 },
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
      },
    },
    {
      name = "gun-turret",
      ingredients = {
        { "!!" },
        { type = "item", name = "submachine-gun", amount = 1 },
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
    },
  })
  OV.add_prereq("gun-turret", "military")

  if bobmods and bobmods.warfare then
    -- sniper turret
    OV.patch_recipes({
      {
        name = "bob-rifle",
        ingredients = {
          { "!!" },
          { type = "item", name = "submachine-gun", amount = 1 },
          { type = "item", name = "steel-plate", amount = 15 },
          { type = "item", name = "copper-plate", amount = 5 },
        },
      },
      {
        name = "sniper-rifle",
        ingredients = {
          { type = "item", name = "bob-rifle", amount = 1 },
          { type = "item", name = "iron-gear-wheel", amount = 0 },
          { type = "item", name = "steel-gear-wheel", amount = 0 },
          { type = "item", name = "steel-plate", amount = 0 },
        },
      },
      {
        name = "bob-sniper-turret-1",
        ingredients = {
          { "!!" },
          { type = "item", name = "bob-rifle", amount = 1 },
          { type = "item", name = "iron-plate", amount = 10 },
          { type = "item", name = "copper-plate", amount = 5 },
        },
      },
    })
    OV.remove_unlock("military-3", "bob-rifle")
    OV.add_unlock("military-2", "bob-rifle")
    OV.add_prereq("bob-sniper-turrets-1", "military-science-pack")
  end

  -- cannon turret
  OV.patch_recipes({
    {
      name = "shotgun",
      ingredients = {
        { "!!" },
        { type = "item", name = "pistol", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "wood", amount = 5 },
      },
    },
    {
      name = "combat-shotgun",
      ingredients = {
        { "!!" },
        { type = "item", name = "shotgun", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "wood", amount = 5 },
      },
    },
    {
      name = "angels-cannon-turret",
      ingredients = {
        { "!!" },
        { type = "item", name = "shotgun", amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 10 },
        { type = "item", name = "steel-plate", amount = 15 },
      },
    },
  })

  -- rocket turret
  OV.patch_recipes({
    {
      name = "rocket-launcher",
      ingredients = {
        { "!!" },
        { type = "item", name = "shotgun", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
    },
    {
      name = "angels-rocket-turret",
      ingredients = {
        { "!!" },
        { type = "item", name = "rocket-launcher", amount = 4 },
        { type = "item", name = "electronic-circuit", amount = 10 },
        { type = "item", name = "steel-plate", amount = 20 },
      },
    },
  })

  -- flamethrower turret
  OV.patch_recipes({
    {
      name = "flamethrower",
      ingredients = {
        { "!!" },
        { type = "item", name = "submachine-gun", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
    },
    {
      name = "angels-bio-gun",
      ingredients = {
        { "!!" },
        { type = "item", name = "submachine-gun", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
    },
    {
      name = "flamethrower-turret",
      ingredients = {
        { "!!" },
        { type = "item", name = "flamethrower", amount = 1 },
        { type = "item", name = "engine-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "pipe", amount = 10 },
      },
    },
    {
      name = "angels-bio-turret",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-bio-gun", amount = 1 },
        { type = "item", name = "engine-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "pipe", amount = 10 },
      },
    },
  })

  if bobmods and bobmods.warfare then
    -- laser turret
    OV.patch_recipes({
      {
        name = "bob-laser-rifle",
        ingredients = {
          { type = "item", name = "bob-rifle", amount = 1 },
          { type = "item", name = "plastic-bar", amount = 0 },
        },
      },
      {
        name = "bob-plasma-turret-1",
        ingredients = {
          { type = "item", name = "bob-laser-rifle", amount = 1 },
          { type = "item", name = "steel-plate", amount = 60 },
        },
      },
    })
  end

  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-energy")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-repair")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-defense")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-attack")
  -- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-movement")

  OV.execute()
end

if mods["bobvehicleequipment"] then
  data:extend({
    {
      type = "equipment-grid",
      name = "angels-heavy-tank",
      width = 10,
      height = 10,
      equipment_categories = { "tank", "vehicle", "armoured-vehicle" },
    },
  })
  data.raw.car["angels-heavy-tank"].equipment_grid = "angels-heavy-tank"
end

require("prototypes.overrides.artifacts-updates")
require("prototypes.overrides.biter-updates")
require("prototypes.overrides.gathering-turret-updates")
require("prototypes.overrides.vehicle-updates")
