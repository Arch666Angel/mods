-- File to add fixes for certain mods
local OV = angelsmods.functions.OV

if mods.bobtech then
  if settings.startup["bobmods-burnerphase"].value then
    -- gets re-enabled as an unlock
    OV.disable_recipe("lab")
    OV.disable_technology("lab")

    -- Allow steam science in basic lab
    local lab = data.raw.lab["angels-basic-lab"]
    if lab then
      table.insert(lab.inputs, 1, "steam-science-pack")
    end
  end
end

OV.execute()
