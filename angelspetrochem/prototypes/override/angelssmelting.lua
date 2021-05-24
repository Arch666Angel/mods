local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if angelsmods.smelting then
  if angelsmods.trigger.smelting_products["aluminium"].plate then
    OV.add_prereq("angels-advanced-chemistry-2", "angels-aluminium-smelting-1")
  end
  if angelsmods.trigger.smelting_products["titanium"].plate then
    OV.add_prereq("angels-advanced-chemistry-3", "angels-titanium-smelting-1")
  end
  if angelsmods.trigger.smelting_products["tungsten"].plate then
    OV.add_prereq("angels-advanced-chemistry-4", "angels-tungsten-smelting-1")
  end
else
  OV.disable_recipe(
    {
      "solid-sodium-cyanide",
      "solid-sodium-carbonate",
      "solid-sodium-sulfate-separation"
    }
  )
end