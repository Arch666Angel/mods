local OV = angelsmods.functions.OV

require("prototypes.bio-processing-override")
require("prototypes.bio-processing-generate")
require("prototypes.tips-and-tricks.tips-and-tricks")

-- hoggers are not implemented, hide them in the meantime
angelsmods.functions.hide("bio-hogger-1")
angelsmods.functions.hide("bio-hogger-2")
angelsmods.functions.hide("bio-hogger-3")
angelsmods.functions.hide("bio-hogger-4")
angelsmods.functions.hide("bio-hogger-5")
angelsmods.functions.hide("bio-refugium-hogger")
OV.disable_recipe({
  "hogger-hogging-1",
  "hogger-hogging-2",
  "hogger-hogging-3",
  "hogger-hogging-4",
  "hogger-hogging-5",
  "hogger-breeding-1",
  "hogger-breeding-2",
  "hogger-breeding-3",
  "hogger-breeding-4",
  "hogger-breeding-5",
  "bio-refugium-hogger",
  "hogger-butchery-1",
  "hogger-butchery-2",
  "hogger-butchery-3",
  "hogger-butchery-4",
  "hogger-butchery-5",
})

OV.execute()
