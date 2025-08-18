local OV = angelsmods.functions.OV

if angelsmods.refining then
  --CREATE BARRELS
  angelsmods.functions.make_void("angels-thermal-water", "water")
  angelsmods.functions.make_void("angels-mineral-sludge", "water")
  angelsmods.functions.make_void("angels-slag-slurry", "water")
  angelsmods.functions.make_void("angels-crystal-slurry", "water")
  angelsmods.functions.make_void("angels-crystal-seedling", "water")

  angelsmods.functions.make_void("water", "water")
  angelsmods.functions.make_void("angels-water-purified", "water")
  angelsmods.functions.make_void("angels-water-yellow-waste", "water")
  angelsmods.functions.make_void("angels-water-saline", "water")
  angelsmods.functions.make_void("angels-water-mineralized", "water")

  if angelsmods.petrochem then
    angelsmods.functions.make_void("angels-water-red-waste", "water")
    angelsmods.functions.make_void("angels-water-green-waste", "water")
    angelsmods.functions.make_void("angels-water-greenyellow-waste", "water")
  end

  if angelsmods.smelting then
    angelsmods.functions.make_void("angels-water-viscous-mud", "water")
    angelsmods.functions.make_void("angels-water-heavy-mud", "water")
    angelsmods.functions.make_void("angels-water-concentrated-mud", "water")
    angelsmods.functions.make_void("angels-water-light-mud", "water")
    angelsmods.functions.make_void("angels-water-thin-mud", "water")
  end

  --ADD THE BARRELING PUMP
  angelsmods.functions.OV.add_unlock("fluid-handling", "angels-barreling-pump")

  --MOVE EMPTY BARREL
  data.raw["item-subgroup"]["fill-barrel"].group = "angels-fluid-control"
  data.raw["item-subgroup"]["barrel"].group = "angels-fluid-control"
  angelsmods.functions.move_item("barrel", "angels-fluid-control", "h")
  angelsmods.functions.move_item("barrel", "angels-fluid-control", "h", "recipe")

  --MOVE STORAGE TANK
  angelsmods.functions.move_item("storage-tank", "angels-fluid-tanks", "b[medium-tank]-a[mk1]-a[regular]")
end
