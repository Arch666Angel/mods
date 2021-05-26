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

-- custom fixes base game
require "prototypes.overrides.components-base-entity-update.components-base-assemblers-update"
require "prototypes.overrides.components-base-entity-update.components-base-inserters-update"
require "prototypes.overrides.components-base-entity-update.components-base-power-update"
require "prototypes.overrides.components-base-entity-update.components-base-robots-update"
require "prototypes.overrides.components-base-entity-update.components-base-other-entities-update"
OV.execute()

-- custom fixes bobs mods
require "prototypes.overrides.components-bobs-entity-update.components-bobs-assemblers-update"
require "prototypes.overrides.components-bobs-entity-update.components-bobs-inserters-update"
require "prototypes.overrides.components-bobs-entity-update.components-bobs-labs-update"
require "prototypes.overrides.components-bobs-entity-update.components-bobs-power-update"
require "prototypes.overrides.components-bobs-entity-update.components-bobs-robots-update"
require "prototypes.overrides.components-bobs-entity-update.components-bobs-trains-update"
OV.execute()