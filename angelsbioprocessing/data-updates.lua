require("prototypes.bio-processing-override")
require("prototypes.bio-processing-generate")

-- hoggers are not implemented, hide them in the meantime
angelsmods.functions.add_flag("bio-hogger-1", "hidden")
angelsmods.functions.add_flag("bio-hogger-2", "hidden")
angelsmods.functions.add_flag("bio-hogger-3", "hidden")
angelsmods.functions.add_flag("bio-hogger-4", "hidden")
angelsmods.functions.add_flag("bio-hogger-5", "hidden")
angelsmods.functions.add_flag("bio-refugium-hogger", "hidden")

angelsmods.functions.OV.execute()
