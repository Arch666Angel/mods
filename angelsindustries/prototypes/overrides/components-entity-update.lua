local OV = angelsmods.functions.OV
local RB = angelsmods.functions.RB
require("prototypes.overrides.industries-override-functions")
local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime
add_con_mats()
OV.execute()
replace_gen_mats()
OV.execute()

-- custom fixes
OV.patch_recipes({
  {
    name = "offshore-pump",
    ingredients =
    {
      {"block-electronics-0", "block-electronics-1"},
    }
  },
})
OV.execute()

-- custom fixes for bobs
require("prototypes.overrides.components-bobs-entity-update")
OV.execute()
