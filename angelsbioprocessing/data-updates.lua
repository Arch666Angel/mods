local OV = angelsmods.functions.OV

require("prototypes.bio-processing-override")
require("prototypes.bio-processing-generate")
require("prototypes.tips-and-tricks.tips-and-tricks")

OV.execute()

local patched_recipes = {
    "angels-algae-brown-burning-wash",
    "angels-bio-tile",
    "angels-crystal-grindstone",
    "angels-paste-cobalt",
    "angels-paste-copper",
    "angels-paste-gold",
    "angels-paste-iron",
    "angels-paste-silver",
    "angels-paste-titanium",
    "angels-paste-tungsten",
    "angels-paste-zinc",
    "beacon",
    "bob-fertiliser",
    "bob-phenolic-board",
    "bob-wood-pellets",
    "efficiency-module",
    "efficiency-module-2",
    "efficiency-module-3",
    "productivity-module",
    "productivity-module-2",
    "productivity-module-3",
    "speed-module",
    "speed-module-2",
    "speed-module-3",
}
angelsmods.functions.patch_recycling_recipes(patched_recipes)