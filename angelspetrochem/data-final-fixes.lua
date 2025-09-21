require("prototypes.petrochem-global-override")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
require("prototypes.tips-and-tricks.tips-and-tricks")
local patched_recipes = {"angels-ore2-crystal, angels-liquid-hydrofluoric-acid, angels-ore4-crystal, angels-liquid-hydrochloric-acid, angels-ore5-crystal, angels-liquid-nitric-acid, angels-storage-tank-3, bob-small-inline-storage-tank, bob-lithium-water-electrolysis, angels-gas-hydrogen, bob-polishing-compound, angels-liquid-mineral-oil, bob-polishing-compound, angels-liquid-mineral-oil, rocket-body, angels-rocket-booster, bob-nitroglycerin, bob-sulfuric-nitric-acid, angels-liquid-sulfuric-acid, angels-liquid-nitric-acid, bob-gun-cotton, angels-liquid-nitric-acid, bob-gun-cotton-synthetic, angels-liquid-nitric-acid, bob-petroleum-jelly, angels-gas-residual, bob-nitroglycerin, bob-sulfuric-nitric-acid, angels-liquid-sulfuric-acid, angels-liquid-nitric-acid, bob-gun-cotton, angels-liquid-nitric-acid, bob-gun-cotton-synthetic, angels-liquid-nitric-acid, bob-petroleum-jelly, angels-gas-residual, bob-fertiliser, angels-gas-urea, angels-gas-methane, angels-gas-nitrogen"}
angelsmods.functions.patch_recycling_recipes(patched_recipes)
