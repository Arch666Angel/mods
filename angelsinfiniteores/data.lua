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

if angelsmods.refining then
	angelsmods.ores.disable_ore_override = angelsmods.refining.disable_ore_override
else
	angelsmods.ores.disable_ore_override = false
end

--LOAD RESOURCE GENERATOR
if not angelsmods.functions.make_resource then
	require("prototypes.generation.resource-builder")
end

--GENERATE PROTOTYPES
require("prototypes.generation.vanilla-ore-inf")

require("prototypes.generation.angels-ore-inf")

require("prototypes.generation.bob-ore-inf")

require("prototypes.generation.py-ore-inf")

require("prototypes.generation.yuoki-ore-inf")

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
