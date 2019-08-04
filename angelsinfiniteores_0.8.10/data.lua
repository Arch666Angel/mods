--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.ores then angelsmods.ores = {} end
if not angelsmods.functions then angelsmods.functions = {} end
if not angelsmods.functions.store then angelsmods.functions.store = {} end
if not angelsmods.functions.store.update then angelsmods.functions.store.update = {} end
if not angelsmods.functions.store.make then angelsmods.functions.store.make = {} end

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
