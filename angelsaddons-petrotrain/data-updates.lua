local funcs = require("prototypes/petro-train-functions")

require("prototypes.recipes.petro-recipe-updates")
require("prototypes.technology.petro-technology-component-updates")
require("prototypes.technology.petro-technology-tech-updates")

if angelsmods.petrochem then
  local OV = angelsmods.functions.OV
  for i = 1, angelsmods.addons.petrotrain.tier_amount, 1 do
    local tank1 = i == 1 and "petro-tank1" or "petro-tank1-" .. i
    local tank2 = i == 1 and "petro-tank2" or "petro-tank2-" .. i
    OV.modify_input(tank1, {"angels-storage-tank-1", "storage-tank"})
    OV.modify_input(tank2, {"angels-storage-tank-2", "storage-tank"})
  end
  OV.execute()
end

-- base game
funcs.update_equipment("energy-shield-equipment", "energy-shield-equipment", "angels-basegame-defense")
funcs.update_equipment("energy-shield-equipment", "energy-shield-mk2-equipment", "angels-basegame-defense")
funcs.update_equipment("battery-equipment", "battery-equipment", "angels-basegame-energy")
funcs.update_equipment("battery-equipment", "battery-mk2-equipment", "angels-basegame-energy")
funcs.update_equipment("solar-panel-equipment", "solar-panel-equipment", "angels-basegame-energy")
funcs.update_equipment("generator-equipment", "fusion-reactor-equipment", "angels-basegame-energy")
funcs.update_equipment("active-defense-equipment", "personal-laser-defense-equipment", "angels-basegame-attack")
funcs.update_equipment("active-defense-equipment", "discharge-defense-equipment", "angels-basegame-attack")
--funcs.update_equipment("belt-immunity-equipment", "belt-immunity-equipment", "angels-basegame-movement")
funcs.update_equipment("roboport-equipment", "personal-roboport-equipment", "angels-basegame-construction")
funcs.update_equipment("roboport-equipment", "personal-roboport-mk2-equipment", "angels-basegame-construction")
funcs.update_equipment("movement-bonus-equipment", "exoskeleton-equipment", "angels-basegame-movement")

funcs.update_equipment_grid(
  "angels-petro-locomotive",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
    "angels-basegame-movement"
  },
  "angels-void"
)
funcs.update_equipment_grid(
  "angels-petro-tank1",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack"
  },
  "angels-void"
)
funcs.update_equipment_grid(
  "angels-petro-tank2",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack"
  },
  "angels-void"
)

if mods["angelsindustries"] then
  data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-petrotrain"].order = "bd[petro-train]"

  funcs.update_equipment_grid(
    "angels-petro-locomotive",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-petro-tank1",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",
      "angels-repair"
    }
  )
  funcs.update_equipment_grid(
    "angels-petro-tank2",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",
      "angels-repair"
    }
  )
end

if mods["bobvehicleequipment"] then
  funcs.update_equipment_grid(
    "angels-petro-locomotive",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack",
      "angels-basegame-movement"
    }
  )
  funcs.update_equipment_grid(
    "angels-petro-tank1",
    {
      "train",
      "vehicle"
    },
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack"
    }
  )
  funcs.update_equipment_grid(
    "angels-petro-tank2",
    {
      "train",
      "vehicle"
    },
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack"
    }
  )
end
