--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.ores then angelsmods.ores = {} end

--TRIGGER CHECKS
	--RSO
	if RsoMod then
		angelsmods.ores.enablersomode = true
	else
		angelsmods.ores.enablersomode = false
	end
	
--SETTINGS CHECKs
	--INFINITE ORE YIELD CHANGE MODIFIER
	angelsmods.ores.yield = settings.startup["angels-infinite-ores-yield"].value * 15

	--OIL YIELD CHANGE MODIFIER
	angelsmods.ores.oilyield = settings.startup["angels-oil-gas-yield"].value * 1000

	data.raw.resource["crude-oil"].minimum = angelsmods.ores.oilyield
	data.raw.resource["crude-oil"].normal = 100000

	--WATER YIELD CHANGE MODIFIER
	angelsmods.ores.fissureyield = settings.startup["angels-fissure-yield"].value * 1000

	--INFINITE ORE RESULT PROBABILITY CHECK
	angelsmods.ores.loweryield = settings.startup["angels-lower-infinite-yield"].value
	
	--ADD FLUID REQUIREMENT TO INFINITE MINING
	angelsmods.ores.enablefluidreq = settings.startup["angels-enablefluidreq"].value
	
	--VANILLA
	angelsmods.ores.enableinfiniteiron = settings.startup["angels-enableinfiniteiron"].value
	angelsmods.ores.enableinfinitecopper = settings.startup["angels-enableinfinitecopper"].value
	angelsmods.ores.enableinfinitestone = settings.startup["angels-enableinfinitestone"].value
	angelsmods.ores.enableinfinitecoal = settings.startup["angels-enableinfinitecoal"].value
	angelsmods.ores.enableinfiniteuranium = settings.startup["angels-enableinfiniteuranium"].value
	--ANGELS
	angelsmods.ores.enableinfiniteangelsore1 = settings.startup["angels-enableinfiniteangelsore1"].value
	angelsmods.ores.enableinfiniteangelsore2 = settings.startup["angels-enableinfiniteangelsore2"].value
	angelsmods.ores.enableinfiniteangelsore3 = settings.startup["angels-enableinfiniteangelsore3"].value
	angelsmods.ores.enableinfiniteangelsore4 = settings.startup["angels-enableinfiniteangelsore4"].value
	angelsmods.ores.enableinfiniteangelsore5 = settings.startup["angels-enableinfiniteangelsore5"].value
	angelsmods.ores.enableinfiniteangelsore6 = settings.startup["angels-enableinfiniteangelsore6"].value
	--BOBS
	angelsmods.ores.enableinfinitebobbauxite = settings.startup["angels-enableinfinitebobbauxite"].value
	angelsmods.ores.enableinfinitebobcobalt = settings.startup["angels-enableinfinitebobcobalt"].value
	angelsmods.ores.enableinfinitebobgems = settings.startup["angels-enableinfinitebobgems"].value
	angelsmods.ores.enableinfinitebobgold = settings.startup["angels-enableinfinitebobgold"].value
	angelsmods.ores.enableinfiniteboblead = settings.startup["angels-enableinfiniteboblead"].value
	angelsmods.ores.enableinfinitebobnickel = settings.startup["angels-enableinfinitebobnickel"].value
	angelsmods.ores.enableinfinitebobquartz = settings.startup["angels-enableinfinitebobquartz"].value
	angelsmods.ores.enableinfinitebobrutile = settings.startup["angels-enableinfinitebobrutile"].value
	angelsmods.ores.enableinfinitebobsilver = settings.startup["angels-enableinfinitebobsilver"].value
	angelsmods.ores.enableinfinitebobsulfur = settings.startup["angels-enableinfinitebobsulfur"].value
	angelsmods.ores.enableinfinitebobtin = settings.startup["angels-enableinfinitebobtin"].value
	angelsmods.ores.enableinfinitebobtungsten = settings.startup["angels-enableinfinitebobtungsten"].value
	angelsmods.ores.enableinfinitebobzinc = settings.startup["angels-enableinfinitebobzinc"].value
	--YUOKIS
	angelsmods.ores.enableinfiniteyuoki = settings.startup["angels-enableinfiniteyuoki"].value
	--URANIUM POWER
	angelsmods.ores.enableinfiniteuraniumpower = settings.startup["angels-enableinfiniteuraniumpower"].value
	--DARK MATTER
	angelsmods.ores.enableinfinitedarkmatter = settings.startup["angels-enableinfinitedarkmatter"].value

--LOAD PROTOTYPES	  
if angelsmods.refining then
    require("prototypes.categories")
	require("prototypes.generation.angels-ore1")
	require("prototypes.generation.angels-ore2")
	require("prototypes.generation.angels-ore3")
	require("prototypes.generation.angels-ore4")
	require("prototypes.generation.angels-ore5")
	require("prototypes.generation.angels-ore6")
	require("prototypes.generation.angels-fissure")
	require("prototypes.generation.angels-crystal-rock")
	
	require("prototypes.generation.angels-natural-gas")

	require("prototypes.generation.vanilla-coal")
	
	if not angelsmods.components and not (bobmods and bobmods.plates) then
		require("prototypes.generation.vanilla-uranium")	
	end
	
	require("prototypes.generation.angels-ore1-inf")
	require("prototypes.generation.angels-ore2-inf")
	require("prototypes.generation.angels-ore3-inf")
	require("prototypes.generation.angels-ore4-inf")
	require("prototypes.generation.angels-ore5-inf")
	require("prototypes.generation.angels-ore6-inf")

else
	require("prototypes.generation.vanilla-coal")
	require("prototypes.generation.vanilla-stone")
	require("prototypes.generation.vanilla-iron")
	require("prototypes.generation.vanilla-copper")
	require("prototypes.generation.vanilla-uranium")		
	
	if bobmods and bobmods.ores then
		require("prototypes.generation.bob-bauxite")
		require("prototypes.generation.bob-cobalt")
		require("prototypes.generation.bob-gems")			
		require("prototypes.generation.bob-gold")
		require("prototypes.generation.bob-lead")
		require("prototypes.generation.bob-nickel")
		require("prototypes.generation.bob-quartz")
		require("prototypes.generation.bob-rutile")
		require("prototypes.generation.bob-silver")
		require("prototypes.generation.bob-sulfur")
		require("prototypes.generation.bob-tin")
		require("prototypes.generation.bob-tungsten")
		require("prototypes.generation.bob-zinc")

		require("prototypes.generation.bob-options")	
	end
	
	if data.raw.resource["y-res1"] then
		require("prototypes.generation.yuoki-res1")
		require("prototypes.generation.yuoki-res2")
	end
	
	if data.raw.resource["uraninite"] then
		require("prototypes.generation.up-uraninite")
		require("prototypes.generation.up-fluorite")
	end
end

if data.raw.resource["tenemut"] then
	require("prototypes.generation.dm-tenemut")
end