require("prototypes.petrochem-generate")
require("prototypes.petrochem-override")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
log(serpent.block(data.raw.fluid["gas-vinyl-chloride"].icons))
log(serpent.block(data.raw.fluid["liquid-plastic"].icons))