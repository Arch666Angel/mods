local __DebugAdapter = mods["debugadapter"] and require("__debugadapter__/debugadapter.lua")

if angelsmods.industries then
  local OV = angelsmods.functions.OV

  if angelsmods.industries.components then
    require("prototypes.recipes.cab-updates")
  end
  OV.remove_prereq("angels-cab", "automobilism")
  OV.add_prereq("angels-cab", "angels-crawler")
end

require "prototypes.entities.cab-updates"
