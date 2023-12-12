local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if angelsmods.smelting then
  if angelsmods.trigger.smelting_products["aluminium"].plate then
    OV.add_prereq("angels-advanced-chemistry-2", "angels-aluminium-smelting-1")
  end
  if angelsmods.trigger.smelting_products["titanium"].plate then
    OV.add_prereq("angels-advanced-chemistry-4", "angels-titanium-smelting-1")
  end
  if angelsmods.trigger.smelting_products["tungsten"].plate then
    OV.add_prereq("angels-advanced-chemistry-5", "angels-tungsten-smelting-1")
  end
  if
    angelsmods.trigger.smelting_products["silver"].ingot
    or angelsmods.trigger.smelting_products["silver"].wire
    or angelsmods.trigger.smelting_products["silver"].plate
    or angelsmods.trigger.smelting_products["silver"].powder
    or angelsmods.trigger.smelting_products["gold"].ingot
    or angelsmods.trigger.smelting_products["gold"].wire
    or angelsmods.trigger.smelting_products["gold"].plate
    or angelsmods.trigger.smelting_products["gold"].powder
  then
  else
    OV.disable_recipe({
      "solid-sodium-cyanide",
    })
    angelsmods.functions.add_flag("solid-sodium-cyanide", "hidden")
  end
else
  OV.disable_recipe({
    "solid-sodium-cyanide",
    "solid-sodium-carbonate",
    "solid-sodium-hydroxide-solid-sodium-sulfate",
  })
  angelsmods.functions.add_flag("solid-sodium-cyanide", "hidden")
  OV.remove_prereq("sodium-processing-1", "chlorine-processing-1")
  OV.add_prereq("sodium-processing-1", "chlorine-processing-3")
end
