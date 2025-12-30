--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.ores = angelsmods.ores or {}
angelsmods.functions = angelsmods.functions or {}
angelsmods.functions.store = angelsmods.functions.store or {}
angelsmods.functions.store.update = angelsmods.functions.store.update or {}
angelsmods.functions.store.make = angelsmods.functions.store.make or {}

--SET MOD OPTIONS
angelsmods.ores.yield = settings.startup["angels-infinite-yield"].value
angelsmods.ores.loweryield = settings.startup["angels-lower-infinite-yield"].value
angelsmods.ores.enablefluidreq = settings.startup["angels-enablefluidreq"].value
angelsmods.ores.disable_ore_override = angelsmods.refining and angelsmods.refining.disable_ore_override or false

--LOAD RESOURCE GENERATOR
require("prototypes.generation.resource-builder")
require("prototypes.generation.overlapping-resources-patch")

--GENERATE PROTOTYPES
require("prototypes.generation.vanilla-ore-inf")

require("prototypes.generation.angels-ore-inf")

require("prototypes.generation.bob-ore-inf")

require("prototypes.generation.py-ore-inf")

require("prototypes.generation.yuoki-ore-inf")

require("prototypes.generation.dm-tenemut")

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
patch_overlapping_resources()

-- UPDATE URANIUM MINING TECH
require("prototypes.overrides.infiniteores-override-base")
