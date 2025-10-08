local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- BARRELING PUMPS ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobores"] then
  OV.disable_recipe({
    "bob-lithia-water", -- lithia water
  })
  angelsmods.functions.hide("bob-lithia-water")
end
