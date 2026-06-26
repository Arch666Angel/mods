local OV = angelsmods.functions.OV
local RB = angelsmods.functions.RB
local AI = angelsmods.functions.AI

if angelsmods.industries.components then
  AI.add_con_mats()
  OV.execute()

  AI.replace_gen_mats()
  OV.execute()
end

-- custom fixes base game
require("prototypes.overrides.components-base-entity-update.components-base-algae-farms-update")
require("prototypes.overrides.components-base-entity-update.components-base-assemblers-update")
require("prototypes.overrides.components-base-entity-update.components-base-gun-update")
require("prototypes.overrides.components-base-entity-update.components-base-inserters-update")
require("prototypes.overrides.components-base-entity-update.components-base-other-entities-update")
require("prototypes.overrides.components-base-entity-update.components-base-power-update")
require("prototypes.overrides.components-base-entity-update.components-base-robots-update")
OV.execute()

-- custom fixes bobs mods
require("prototypes.overrides.components-bobs-entity-update.components-bobs-assemblers-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-gun-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-inserters-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-labs-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-power-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-radar-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-robots-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-trains-update")
require("prototypes.overrides.components-bobs-entity-update.components-bobs-turret-update")
OV.execute()
