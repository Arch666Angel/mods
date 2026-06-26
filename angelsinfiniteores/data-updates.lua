require("prototypes.infiniteores-override")
require("prototypes.generation.bob-options")
-- EXECUTE OVERRIDES
patch_overlapping_resources()
if not angelsmods.refining then
  angelsmods.functions.update_autoplace()
end
