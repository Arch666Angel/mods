require("prototypes.overrides.fluid-tanks")
require("prototypes.overrides.silos")
require("prototypes.overrides.warehouses")
require("prototypes.tips-and-tricks.tips-and-tricks")
local patched_recipes = {"angels-silo-ore1, angels-silo-ore2, angels-silo-ore3, angels-silo-ore4, angels-silo-ore5, angels-silo-ore6, angels-silo-coal"}
angelsmods.functions.patch_recycling_recipes(patched_recipes)
