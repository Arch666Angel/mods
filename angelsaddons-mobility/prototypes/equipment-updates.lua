local funcs = require("prototypes.train-functions")

-- base game
funcs.update_equipment("energy-shield-equipment", "energy-shield-equipment", "angels-basegame-defense")
funcs.update_equipment("energy-shield-equipment", "energy-shield-mk2-equipment", "angels-basegame-defense")

funcs.update_equipment("battery-equipment", "battery-equipment", "angels-basegame-energy")
funcs.update_equipment("battery-equipment", "battery-mk2-equipment", "angels-basegame-energy")
funcs.update_equipment("solar-panel-equipment", "solar-panel-equipment", "angels-basegame-energy")
funcs.update_equipment("generator-equipment", "fission-reactor-equipment", "angels-basegame-energy")

funcs.update_equipment("active-defense-equipment", "personal-laser-defense-equipment", "angels-basegame-attack")
funcs.update_equipment("active-defense-equipment", "discharge-defense-equipment", "angels-basegame-attack")

funcs.update_equipment("movement-bonus-equipment", "exoskeleton-equipment", "angels-basegame-movement")
--funcs.update_equipment("belt-immunity-equipment", "belt-immunity-equipment", "angels-basegame-movement")

funcs.update_equipment("roboport-equipment", "personal-roboport-equipment", "angels-basegame-construction")
funcs.update_equipment("roboport-equipment", "personal-roboport-mk2-equipment", "angels-basegame-construction")

if mods["angelsindustries"] then
  data.raw["item-subgroup"]["angels-vehicle-train-crawler"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-vehicle-train-crawler"].order = "bc[crawler-train]"
  data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-petrotrain"].order = "bd[petro-train]"
  data.raw["item-subgroup"]["angels-smeltingtrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-smeltingtrain"].order = "bc[smelting-train]"
end

if mods["space-exploration"] then
  funcs.update_equipment("generator-equipment", "se-rtg-equipment", "angels-basegame-energy")
  funcs.update_equipment("generator-equipment", "se-rtg-equipment-2", "angels-basegame-energy")

  funcs.update_equipment("energy-shield-equipment", "se-adaptive-armour-equipment-1", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "se-adaptive-armour-equipment-2", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "se-adaptive-armour-equipment-3", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "se-adaptive-armour-equipment-4", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "se-adaptive-armour-equipment-5", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "energy-shield-mk3-equipment", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "energy-shield-mk4-equipment", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "energy-shield-mk5-equipment", "angels-basegame-defense")
  funcs.update_equipment("energy-shield-equipment", "energy-shield-mk6-equipment", "angels-basegame-defense")
end

if mods["Krastorio2"] then
  funcs.update_equipment("movement-bonus-equipment", "additional-engine", "angels-basegame-movement")
  funcs.update_equipment("movement-bonus-equipment", "advanced-additional-engine", "angels-basegame-movement")

  funcs.update_equipment("roboport-equipment", "vehicle-roboport", "angels-basegame-construction")
end

if mods["Power Armor MK3"] then
  funcs.update_equipment("energy-shield-equipment", "pamk3-esmk3", "angels-basegame-defense")

  funcs.update_equipment("battery-equipment", "pamk3-battmk3", "angels-basegame-energy")
  funcs.update_equipment("generator-equipment", "pamk3-pnr", "angels-basegame-energy")
  funcs.update_equipment("generator-equipment", "pamk3-se", "angels-basegame-energy")
end

if mods["Portable_power"] then
  funcs.update_equipment("generator-equipment", "portable-generator-equipment", "angels-basegame-energy")
  funcs.update_equipment("generator-equipment", "portable-reactor-equipment", "angels-basegame-energy")
end

if angelsmods.petrochem then
  if angelsmods.addons.mobility.petrotrain.tier_amount > 1 then
    local updated_recipes = {}
    local OV = angelsmods.functions.OV
    for i = 1, angelsmods.addons.mobility.petrotrain.tier_amount, 1 do
      local gas_wagon = i == 1 and "angels-petro-gas-wagon" or "angels-petro-gas-wagon-" .. i
      OV.modify_input(gas_wagon, { type = "item", name = "angels-storage-tank-1", amount = "storage-tank" })
      table.insert(updated_recipes, gas_wagon)

      local oil_wagon = i == 1 and "angels-petro-oil-wagon" or "angels-petro-oil-wagon-" .. i
      OV.modify_input(oil_wagon, { type = "item", name = "angels-storage-tank-2", amount = "storage-tank" })
      table.insert(updated_recipes, oil_wagon)
    end
    OV.add_prereq("angels-petro-train-2", "angels-gas-processing")
    OV.add_prereq("angels-petro-train-2", "angels-oil-processing")
    OV.execute()
    angelsmods.functions.patch_recycling_recipes(updated_recipes)
  end
end

---Angel's default equipment category.
---
---To be removed when used with Angel's base equipment categories.
local default = "angels-void"

---Angel's base equipment categories.
---
---To be removed when used with Bob's equipment categories.
---@type Angels.Addons.Mobility.EquipmentCategories
local vanilla_categories = {
  locomotives = {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
    "angels-basegame-movement",
  },
  wagons = {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
  },
}

---Angel's Industries equipment categories.
---@type Angels.Addons.Mobility.EquipmentCategories
local industries_categories = {
  locomotives = {
    "angels-energy",
    "angels-heavy-defense",
    "angels-movement",
  },
  wagons = {
    "angels-energy",
    "angels-heavy-defense",
    "angels-movement",
    "angels-repair",
  },
}

---Bob's equipment categories.
---@type Angels.Addons.Mobility.EquipmentCategories
local bobs_categories = {
  locomotives = {
    "train",
    "vehicle",
    "locomotive",
  },
  wagons = {
    "train",
    "vehicle",
  },
}

---The prototype names of Angel's locomotives and wagons.
---@type Angels.Addons.Mobility.EquipmentGrids
local train_equipment_grids = {
  locomotives = {
    "angels-petro-locomotive",
    "angels-smelting-locomotive",
    "angels-smelting-locomotive-tender",
    "angels-crawler-locomotive",
    "angels-crawler-locomotive-tender",
  },
  wagons = {
    "angels-petro-gas-wagon",
    "angels-petro-oil-wagon",
    "angels-smelting-cargo-wagon",
    "angels-crawler-cargo-wagon",
    "angels-crawler-robot-wagon",
  },
}

--update loco grids
for _, equipment_grid_name in pairs(train_equipment_grids.locomotives) do
  funcs.update_equipment_grid(equipment_grid_name, vanilla_categories.locomotives, default)

  if mods["angelsindustries"] then
    funcs.update_equipment_grid(equipment_grid_name, industries_categories.locomotives)
  end

  if mods["bobvehicleequipment"] then
    funcs.update_equipment_grid(equipment_grid_name, bobs_categories.locomotives, vanilla_categories.locomotives)
  end
end

--update wagon grids
for _, equipment_grid_name in pairs(train_equipment_grids.wagons) do
  funcs.update_equipment_grid(equipment_grid_name, vanilla_categories.wagons, default)

  if mods["angelsindustries"] then
    funcs.update_equipment_grid(equipment_grid_name, industries_categories.wagons)
  end

  if mods["bobvehicleequipment"] then
    funcs.update_equipment_grid(equipment_grid_name, bobs_categories.wagons, vanilla_categories.wagons)
  end
end

--NOTE "angels-crawler-robot-wagon" also needs the construction categories.
if mods["bobvehicleequipment"] then
  funcs.update_equipment_grid("angels-crawler-robot-wagon", "cargo-wagon")
else
  funcs.update_equipment_grid("angels-crawler-robot-wagon", "angels-basegame-construction")
end

if mods["angelsindustries"] then
  funcs.update_equipment_grid("angels-crawler-robot-wagon", "angels-construction")
end

if mods["boblogistics"] then
  for _, subgroup in pairs({
    "angels-petrotrain",
    "angels-smeltingtrain",
    "angels-vehicle-train-crawler",
  }) do
    data.raw["item-subgroup"][subgroup].group = "bob-logistics"
  end
end
