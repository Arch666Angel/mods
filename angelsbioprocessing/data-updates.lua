local OV = angelsmods.functions.OV

require("prototypes.bio-processing-override")
require("prototypes.bio-processing-generate")
require("prototypes.tips-and-tricks.tips-and-tricks")

-- hoggers are not implemented, hide them in the meantime
angelsmods.functions.hide("angels-bio-hogger-1")
angelsmods.functions.hide("angels-bio-hogger-2")
angelsmods.functions.hide("angels-bio-hogger-3")
angelsmods.functions.hide("angels-bio-hogger-4")
angelsmods.functions.hide("angels-bio-hogger-5")
angelsmods.functions.hide("angels-bio-refugium-hogger")
OV.disable_recipe({
  "angels-hogger-hogging-1",
  "angels-hogger-hogging-2",
  "angels-hogger-hogging-3",
  "angels-hogger-hogging-4",
  "angels-hogger-hogging-5",
  "angels-hogger-breeding-1",
  "angels-hogger-breeding-2",
  "angels-hogger-breeding-3",
  "angels-hogger-breeding-4",
  "angels-hogger-breeding-5",
  "angels-bio-refugium-hogger",
  "angels-hogger-butchery-1",
  "angels-hogger-butchery-2",
  "angels-hogger-butchery-3",
  "angels-hogger-butchery-4",
  "angels-hogger-butchery-5",
})

OV.execute()
