local OV = angelsmods.functions.OV

if angelsmods.refining then
  --CREATE BARRELS
  angelsmods.functions.make_void("thermal-water", "water")
  angelsmods.functions.make_void("mineral-sludge", "water")
  angelsmods.functions.make_void("slag-slurry", "water")
  angelsmods.functions.make_void("crystal-slurry", "water")
  angelsmods.functions.make_void("crystal-seedling", "water")
  angelsmods.functions.make_void("crystal-matrix", "water")

  angelsmods.functions.make_void("water", "water")
  angelsmods.functions.make_void("water-purified", "water")
  angelsmods.functions.make_void("water-yellow-waste", "water")
  angelsmods.functions.make_void("water-saline", "water")
  angelsmods.functions.make_void("water-mineralized", "water")

  if angelsmods.petrochem then
    angelsmods.functions.make_void("water-red-waste", "water")
    angelsmods.functions.make_void("water-green-waste", "water")
    angelsmods.functions.make_void("water-greenyellow-waste", "water")
  end

  if angelsmods.smelting then
    angelsmods.functions.make_void("water-viscous-mud", "water")
    angelsmods.functions.make_void("water-heavy-mud", "water")
    angelsmods.functions.make_void("water-concentrated-mud", "water")
    angelsmods.functions.make_void("water-light-mud", "water")
    angelsmods.functions.make_void("water-thin-mud", "water")
  end

  if bobmods and bobmods.plates then
    angelsmods.functions.make_void("bob-lithia-water", "water")
  else
    --ADD THE BARRELING PUMP
    angelsmods.functions.OV.add_unlock("fluid-handling", "barreling-pump")
  end

  --MOVE EMPTY BARREL
  data.raw["item-subgroup"]["fill-barrel"].group = "angels-fluid-control"
  data.raw["item-subgroup"]["barrel"].group = "angels-fluid-control"
  angelsmods.functions.move_item("barrel", "angels-fluid-control", "h")
  angelsmods.functions.move_item("barrel", "angels-fluid-control", "h", "recipe")

  --MOVE STORAGE TANK
  angelsmods.functions.move_item("storage-tank", "angels-fluid-tanks", "b[medium-tank]-a[mk1]-a[regular]")
end
