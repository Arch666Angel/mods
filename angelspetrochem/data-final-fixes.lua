require("prototypes.petrochem-global-override")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
require("prototypes.tips-and-tricks.tips-and-tricks")



local patched_recipes = {
    "bob-ammonia",
    "bob-ammonium-chloride-reprocessing",
    "bob-calcium-chloride",
    "bob-carbon-dioxide-oil-processing",
    "bob-chemical-plant-2",
    "bob-chemical-plant-3",
    "bob-chemical-plant-4",
    "bob-electrolyser",
    "bob-electrolyser-2",
    "bob-electrolyser-3",
    "bob-electrolyser-4",
    "bob-electrolyser-5",
    "bob-ferric-chloride-solution",
    "bob-glycerol",
    "bob-petroleum-gas-sweetening",
    "bob-salt",
    "bob-salt-water-electrolysis",
    "bob-sodium-carbonate",
    "bob-sodium-chlorate",
    "bob-sodium-hydroxide",
    "bob-sodium-hydroxide-sink",
    "bob-sodium-perchlorate",
    "bob-solid-fuel-from-hydrogen",
    "bob-solid-fuel-from-sour-gas",
    "bob-sulfuric-nitric-acid",
    "bob-water-electrolysis",
    "chemical-plant",
    "coal-liquefaction",
    "fluorite",
    "lubricant",
    "plastic-bar",
    "sulfur",
}
angelsmods.functions.patch_recycling_recipes(patched_recipes)
