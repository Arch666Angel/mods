local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- ADVANCED POWER -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobpower"] then
  --update to blue science level
  OV.set_science_pack(
    {
      "fluid-generator-2",
      "bob-steam-engine-3",
      "bob-steam-turbine-1",
    },
    "chemical-science-pack",1
  )
end