-- File to add fixes for certain mods
local OV = angelsmods.functions.OV

if mods.bobtech then
  if settings.startup["bobmods-burnerphase"].value then
    -- gets re-enabled as an unlock
    OV.disable_recipe("lab")
    OV.disable_technology("lab")
  end
end

OV.execute()
