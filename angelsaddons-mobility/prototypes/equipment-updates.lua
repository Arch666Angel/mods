local funcs = require("prototypes/train-functions")

-- base game
funcs.update_equipment("energy-shield-equipment", "energy-shield-equipment", "angels-basegame-defense")
funcs.update_equipment("energy-shield-equipment", "energy-shield-mk2-equipment", "angels-basegame-defense")

funcs.update_equipment("battery-equipment", "battery-equipment", "angels-basegame-energy")
funcs.update_equipment("battery-equipment", "battery-mk2-equipment", "angels-basegame-energy")
funcs.update_equipment("solar-panel-equipment", "solar-panel-equipment", "angels-basegame-energy")
funcs.update_equipment("generator-equipment", "fusion-reactor-equipment", "angels-basegame-energy")

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
  local OV = angelsmods.functions.OV
  if angelsmods.addons.mobility.petrotrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility.petrotrain.tier_amount, 1 do
      local tank1 = i == 1 and "petro-tank1" or "petro-tank1-" .. i
      local tank2 = i == 1 and "petro-tank2" or "petro-tank2-" .. i
      OV.modify_input(tank1, { "angels-storage-tank-1", "storage-tank" })
      OV.modify_input(tank2, { "angels-storage-tank-2", "storage-tank" })
    end
  end
  OV.execute()
end

--equipment grid groupings
local default = "angels-void" --remove with vanilla adds
local vanilla = { --vanilla adds/gets removed with bobs
  loco = {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
    "angels-basegame-movement",
  },
  wagon = { --vanilla adds/gets removed with bobs
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
  },
}
local industries = {
  loco = {
    "angels-energy",
    "angels-heavy-defense",
    "angels-movement",
  },
  wagon = {
    "angels-energy",
    "angels-heavy-defense",
    "angels-movement",
    "angels-repair",
  },
}
local bobs = {
  loco = {
    "train",
    "vehicle",
    "locomotive",
  },
  wagon = {
    "train",
    "vehicle",
  },
}

local trains = {
  locos = {
    "angels-petro-locomotive",
    "angels-smelting-locomotive",
    "angels-smelting-locomotive-tender",
    "angels-crawler-locomotive",
    "angels-crawler-loco-wagon",
  },
  wagon = {
    "angels-petro-tank1",
    "angels-petro-tank2",
    "angels-smelting-wagon",
    "angels-crawler-wagon",
    "angels-crawler-bot-wagon",
  },
}
--NOTE "angels-crawler-bot-wagon" also needs the construction categories added (can be done at the end i guess...)

--update loco grids
for _, train in pairs(trains.locos) do
  funcs.update_equipment_grid(train, vanilla.loco, default)
  if mods["angelsindustries"] then
    funcs.update_equipment_grid(train, industries.loco)
  end
  if mods["bobvehicleequipment"] then
    funcs.update_equipment_grid(train, bobs.loco, vanilla.loco)
  end
end
--update wagon grids
for _, train in pairs(trains.wagon) do
  funcs.update_equipment_grid(train, vanilla.wagon, default)
  if mods["angelsindustries"] then
    funcs.update_equipment_grid(train, industries.wagon)
  end
  if mods["bobvehicleequipment"] then
    funcs.update_equipment_grid(train, bobs.wagon, vanilla.wagon)
  end
end
--construction crawler updates
if mods["bobvehicleequipment"] then
  funcs.update_equipment_grid("angels-crawler-bot-wagon", "cargo-wagon")
else
  funcs.update_equipment_grid("angels-crawler-bot-wagon", "angels-basegame-construction")
end
if mods["angelsindustries"] then
  funcs.update_equipment_grid("angels-crawler-bot-wagon", "angels-construction")
end
