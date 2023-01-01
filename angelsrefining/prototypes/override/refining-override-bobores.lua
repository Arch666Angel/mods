local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- BARRELING PUMPS ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobores"] then
  OV.disable_recipe({
    "lithia-water", -- lithia water
  })
  if mods["bobplates"] then
  else
    angelsmods.functions.add_flag("lithia-water", "hidden")
  end
end
