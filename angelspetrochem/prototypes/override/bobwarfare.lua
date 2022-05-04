local AF = angelsmods.functions
local OV = AF.OV

-----------------------------------------------------------------------------
-- SULFURIC NITRIC ACID -----------------------------------------------------
-----------------------------------------------------------------------------
if data.raw["fluid"]["sulfuric-nitric-acid"] then
  data.raw["fluid"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_fluid_icon(
    {"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32},
    "NSO"
    )
  data.raw["fluid"]["sulfuric-nitric-acid"].icon = nil

 
  data.raw["recipe"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_recipe_icon(
    {{"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32}},
    "NSO"
    )
  data.raw["recipe"]["sulfuric-nitric-acid"].icon = nil
end

-----------------------------------------------------------------------------
-- NITROGLYCERIN ------------------------------------------------------------
-----------------------------------------------------------------------------
if data.raw["fluid"]["nitroglycerin"] then
  local icon_s = AF.get_object_icons("nitroglycerin")
  data.raw["fluid"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_fluid_icon(
    icon_s[1],
    "CNO"
    )
  AF.icon_array_cleaner(data.raw["fluid"]["nitroglycerin"])

  data.raw["recipe"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_recipe_icon(
    icon_s,
    "CNO"
    )
  AF.icon_array_cleaner(data.raw["recipe"]["nitroglycerin"])
  OV.barrel_overrides("nitroglycerin", "vanilla")
end