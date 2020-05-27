local OV = angelsmods.functions.OV
local RB = angelsmods.functions.RB
--require("prototypes.overrides.industries-override-functions")
local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

if angelsmods.industries.components then
  add_con_mats()
  OV.execute()

  replace_gen_mats()
  OV.execute()
end

-- custom fixes
require("prototypes.overrides.components-base-entity-update")
OV.execute()
require("prototypes.overrides.components-bobs-entity-update")
OV.execute()