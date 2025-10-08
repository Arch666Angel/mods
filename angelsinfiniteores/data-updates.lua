require("prototypes.infiniteores-override")
require("prototypes.generation.bob-options")
-- EXECUTE OVERRIDES
if not angelsmods.refining then
  angelsmods.functions.update_autoplace()
end
