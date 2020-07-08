local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if not angelsmods.smelting then
  OV.disable_recipe(
    {
      "solid-sodium-cyanide",
      "solid-sodium-carbonate",
      "solid-sodium-sulfate-separation"
    }
  )
end