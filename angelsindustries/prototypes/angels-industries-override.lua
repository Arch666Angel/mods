local OV = angelsmods.functions.OV

OV.add_unlock("lamp", "angels-lamp")

OV.execute()

--UPDATE RECIPES FOR ENTITIES
require("prototypes.overrides.components-entity-update")

--UPDATE NON-BLOCK COMPONENTS
require("prototypes.overrides.components-recipe-update")
require("prototypes.overrides.components-productivity-update")
require("prototypes.overrides.components-block-update")
OV.execute()

--UPDATE TECHNOLOGY
require("prototypes.overrides.tech-mod-update")
OV.execute()

require("prototypes.overrides.tech-productivity-update")
OV.execute()
