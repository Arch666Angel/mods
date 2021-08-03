local OV = angelsmods.functions.OV
local AI = angelsmods.functions.AI
--require("prototypes.overrides.industries-override-functions")

if angelsmods.industries.tech then
  -------------------------------------------------------------------------------
  -- BASE BOBS (MCI) ------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobplates"] then
    AI.pack_replace("battery-2", "blue", "orange")
    OV.remove_prereq("battery-2", "tech-blue-packs")
    OV.remove_prereq("battery-3", "production-science-pack")

    AI.pack_replace("grinding", "green", "orange")
    AI.pack_replace("gem-processing-1", "green", "orange")
    AI.pack_replace("polishing", "green", "blue")
    AI.pack_replace("gem-processing-2", "green", "blue")
    --OV.remove_science_pack("lubricant", "angels-science-pack-green")

    if not mods["bobtech"] then --alien resources
      AI.pack_replace("alien-blue-research", "yellow", "blue")
      AI.pack_replace("alien-orange-research", "yellow", "blue")
      AI.pack_replace("alien-purple-research", "yellow", "blue")
      AI.pack_replace("alien-yellow-research", "yellow", "blue")
      AI.pack_replace("alien-green-research", "yellow", "blue")
      AI.pack_replace("alien-red-research", "yellow", "blue")
    end

    AI.pack_replace("tungsten-processing", "blue", "orange")
    OV.remove_prereq("nitinol-processing", "production-science-pack")
    AI.pack_replace("ceramics", "blue", "orange")
    AI.pack_replace("cobalt-processing", "blue", "orange")

    OV.remove_prereq("advanced-electronics-3", "production-science-pack")

    AI.pack_replace("kovarex-enrichment-process","yellow","blue")
  end

  -------------------------------------------------------------------------------
  -- BOB ASSEMBLY ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobassembly"] then
    --adds bobassembly stuffs
    -- burner assemblers and/ore tier 1 electric
    if settings.startup["bobmods-assembly-burner"].value == true then
      AI.pack_replace("basic-automation", "red", "grey")
      AI.pack_replace("automation", "grey", "red")
    end
    -- assemblers tier 2+
    AI.pack_replace("automation-4", "blue", "orange")
    OV.remove_prereq("automation-4", "tech-blue-packs")
    --chemplants
    if settings.startup["bobmods-assembly-chemicalplants"].value == true then
    end
    --oil-furnaces (and metal-mixing)
    if settings.startup["bobmods-assembly-oilfurnaces"].value then
    end
    if settings.startup["bobmods-assembly-multipurposefurnaces"].value then
    end
    --electrolysers
    if settings.startup["bobmods-assembly-electrolysers"].value then
    end
    --distillery
    if settings.startup["bobmods-assembly-distilleries"].value then
      AI.pack_replace("bob-distillery-3", "blue", "orange")
      OV.remove_prereq("bob-distillery-3", "tech-blue-packs")
      OV.add_prereq("tech-blue-circuit", "bob-distillery-3")
    end
    -- centrifuges
    if settings.startup["bobmods-assembly-centrifuge"].value then
      OV.remove_prereq("centrifuge-2", "production-science-pack")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS GREENHOUSE ------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobgreenhouse"] then
    --adds bob greenhouse stuffs
  end

  -------------------------------------------------------------------------------
  -- BOBS ADJUSTABLE INSERTERS --------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobinserters"] then
    if mods["boblogistics"] then
      OV.remove_prereq("more-inserters-2", "logistics-3")
      OV.add_prereq("more-inserters-2", "logistics-4")
      OV.remove_prereq("long-inserters-2", "logistics-3")
      OV.add_prereq("long-inserters-2", "logistics-4")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS CLASSES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobclasses"] then
    --adds bob classes stuffs
  end

  -------------------------------------------------------------------------------
  -- BOBS MINING ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobmining"] then
    --adds bob mining stuffs
    --axe(s)
    if settings.startup["bobmods-mining-miningaxes"].value == true then
      AI.pack_replace("steel-axe-4", "blue", "orange")
      OV.remove_prereq("steel-axe-4", "tech-blue-packs")
    end
    --mining drills
    AI.pack_replace("bob-drills-3", "blue", "orange")
    AI.pack_replace("bob-area-drills-2", "blue", "orange")
    AI.pack_replace("bob-area-drills-4", "blue", "yellow")
  end

  -------------------------------------------------------------------------------
  -- BOBS MODULES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobmodules"] then
    --adds bob modules stuffs
  end

  -------------------------------------------------------------------------------
  -- BOBS LOGISTICS -------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["boblogistics"] then
    --adds bob logistics stuffs
    -- basic logistics
    AI.pack_replace("logistics-0", "red", "grey")
    AI.pack_replace("logistics", "grey", "red")
    -- repair packs
    AI.pack_replace("bob-repair-pack-4", "blue", "orange")
    -- toolbelts
    AI.pack_replace("toolbelt-2", "blue", "orange")
    OV.remove_prereq("toolbelt-2", "tech-blue-packs")
    -- modular roboports
    --AI.pack_replace("bob-robo-modular-1", "green", "orange")
    AI.pack_replace("bob-robo-modular-2", "blue", "orange")
    OV.remove_prereq("bob-robo-modular-2", "tech-blue-packs")
    -- robots
    OV.remove_science_pack("construction-robotics", "angels-science-pack-orange")
    AI.pack_replace("bob-robots-1", "blue", "orange")
    OV.remove_prereq("bob-robo-modular-3", "production-science-pack")
    if settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
      OV.remove_science_pack("robotics", "angels-science-pack-orange")
      AI.pack_replace("bob-robotics-2", "blue", "orange")
      OV.remove_prereq("bob-robotics-3", "production-science-pack")
    end
    -- inserter techs
    if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
      OV.remove_prereq("stack-inserter", "tech-orange-circuit")
      AI.pack_replace("stack-inserter", "orange", "green")
      AI.pack_replace("express-inserters", "blue", "orange")
      AI.pack_replace("stack-inserter-2", "blue", "orange")
    else
      AI.pack_replace("express-inserters", "green", "blue")
      AI.pack_replace("stack-inserter-2", "blue", "yellow")
    end
    -- belt techs
    AI.pack_replace("logistics-3", "blue", "orange")
    OV.remove_prereq("logistics-3", "tech-blue-packs")
    -- railway
    AI.pack_replace("bob-railway-2", "green", "orange")
    AI.pack_replace("bob-armoured-railway-2", "blue", "yellow")
    AI.pack_replace("bob-fluid-wagon-2", "green", "orange")
    AI.pack_replace("bob-armoured-fluid-wagon-2", "blue", "yellow")
  end

  -------------------------------------------------------------------------------
  -- BOBS ORES ------------------------------------------------------------------
  -------------------------------------------------------------------------------
  --bob ores stuffs automatically gets grabbed :D (may want to swap the nuclear stuff to power?)

  -------------------------------------------------------------------------------
  -- BOBS ENEMIES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  --bob enemies recipes automatically gets grabbed :D

  -------------------------------------------------------------------------------
  -- BOBS ELECTRONICS -----------------------------------------------------------
  -------------------------------------------------------------------------------
  --bob electronics recipes automatically gets grabbed :D

  -------------------------------------------------------------------------------
  -- BOBS WARFARE ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobwarfare"] then
    --adds bob warfare stuffs
    --turrets
    AI.pack_replace("bob-plasma-turrets-3", "blue", "orange")
    AI.pack_replace("bob-turrets-3", "green", "orange")
    AI.pack_replace("bob-turrets-5", "blue", "yellow")
    AI.pack_replace("bob-laser-turrets-2", "green", "orange")
    AI.pack_replace("bob-plasma-turrets-2", "green", "orange")
    AI.pack_replace("bob-sniper-turrets-2", "blue", "orange")
    OV.remove_prereq("bob-sniper-turrets-2", "tech-blue-packs")
    if mods["angelsexploration"] then
      AI.pack_replace("angels-rocket-turret", "green", "orange")
    end
    --laser rifles
    AI.pack_replace("bob-laser-rifle", "green", "blue")
    AI.pack_replace("bob-laser-rifle-ammo-1", "green", "blue")
    AI.pack_replace("bob-laser-rifle-ammo-4", "blue", "yellow")
    AI.pack_replace("bob-laser-rifle-ammo-5", "blue", "yellow")
    AI.pack_replace("bob-laser-rifle-ammo-6", "blue", "yellow")
    --Drones/CombatBots
    AI.pack_replace("bob-robot-gun-1", "green", "orange")
    AI.pack_replace("bob-robot-gun-drones", "green", "orange")
    AI.pack_replace("bob-robot-plasma-drones", "green", "orange")
    AI.pack_replace("bob-robot-laser-drones", "green", "orange")
    AI.pack_replace("bob-robot-flamethrower-drones", "green", "orange")
    --Rockets
    AI.pack_replace("rocketry", "green", "orange")
    AI.pack_replace("bob-rocket", "green", "orange")
    AI.pre_req_replace("bob-rocket", "tungsten-processing", "angels-explosives-1")
    --radars
    AI.pack_replace("radars-4", "blue", "yellow")
    --small fixes
    AI.pack_replace("follower-robot-count-1", "green", "orange")
    AI.pack_replace("follower-robot-count-2", "green", "orange")
    OV.remove_prereq("nitroglycerin-processing", "chlorine-processing-2") -- no clue why it works nowhere else...
  end

  -------------------------------------------------------------------------------
  -- BOBS VEHICLE EQUIPMENT -----------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobvehicleequipment"] then
    --adds bob vehicle equipment stuffs
    AI.pack_replace("vehicle-roboport-equipment", "green", "orange")
    AI.pack_replace("vehicle-roboport-modular-equipment-1", "green", "orange")
    AI.pack_replace("vehicle-roboport-equipment", "green", "orange")
    AI.pack_replace("vehicle-roboport-modular-equipment-1", "green", "orange")
    OV.remove_prereq("vehicle-fusion-cell-equipment-2", "production-science-pack")
    OV.remove_prereq("vehicle-fusion-reactor-equipment-2", "production-science-pack")
  end

  -------------------------------------------------------------------------------
  -- BOBS PERSONAL EQUIPMENT ----------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobequipment"] then
    --adds bob personal equipment stuffs
    AI.pack_replace("personal-roboport-equipment", "green", "orange")
    AI.pack_replace("personal-roboport-modular-equipment-1", "green", "orange")
    AI.pack_replace("exoskeleton-equipment", "green", "orange")
    AI.pack_replace("solar-panel-equipment-2", "green", "orange")
    AI.pack_replace("solar-panel-equipment-4", "blue", "yellow")
  end

  -------------------------------------------------------------------------------
  -- BOBS POWER -----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobpower"] then
    --adds bob power stuffs
    -- steam power
    if settings.startup["bobmods-power-steam"].value == true then
      AI.pack_replace("bob-steam-engine-4", "blue", "orange")
      AI.pack_replace("bob-boiler-4", "blue", "orange")
      AI.pack_replace("bob-oil-boiler-3", "blue", "orange")
      AI.pack_replace("bob-steam-turbine-1", "blue", "orange")
      AI.pack_replace("bob-steam-turbine-3", "blue", "yellow")
      AI.pack_replace("bob-heat-exchanger-2", "blue", "orange")
    end
    if settings.startup["bobmods-power-fluidgenerator"].value == true then
      AI.pack_replace("fluid-generator-3", "blue", "orange")
    end
    -- solar power
    if settings.startup["bobmods-power-solar"].value == true then
      AI.pack_replace("bob-solar-energy-2", "green", "orange")
      AI.pack_replace("bob-solar-energy-4", "blue", "yellow")
    end
    if settings.startup["bobmods-power-accumulators"].value == true then
      AI.pack_replace("bob-electric-energy-accumulators-2", "green", "orange")
      AI.pack_replace("bob-electric-energy-accumulators-4", "blue", "yellow")
    end
    -- nuclar power
    if settings.startup["bobmods-power-steam"].value == true or
       settings.startup["bobmods-power-nuclear"].value == true or
       settings.startup["bobmods-power-heatsources"].value == true then
      AI.pack_replace("bob-heat-pipe-2", "blue", "orange")
    end
    if settings.startup["bobmods-power-heatsources"].value == true then
      AI.pack_replace("burner-reactor-2", "blue", "orange")
      AI.pack_replace("fluid-reactor-2", "blue", "orange")
    end
    -- power distribution
    if settings.startup["bobmods-power-poles"].value == true then
      AI.pack_replace("electric-pole-2", "green", "orange")
      AI.pack_replace("electric-pole-4", "blue", "yellow")
      AI.pack_replace("electric-energy-distribution-2", "blue", "orange")
      AI.pack_replace("electric-substation-3", "blue", "yellow")
      AI.pack_replace("electric-substation-4", "blue", "white")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS REVAMP ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobrevamp"] then
    --adds bob revamp stuffs
    if mods["bobpower"] then
      OV.set_science_pack("hydrazine-generator", "datacore-energy-2", 2)
    end
    AI.pre_req_replace("turrets", "military", "angels-components-weapons-basic")
  end

  -------------------------------------------------------------------------------
  -- BOBS TECH ------------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobtech"] then
    if data.raw.tool["science-pack-gold"] and data.raw.recipe["science-pack-gold"] then
      data.raw.recipe["science-pack-gold"].ingredients = {
        {type = "item", name = "angels-science-pack-blue", amount = 1}
      }
    end

    if settings.startup["bobmods-burnerphase"].value then
      --remove all re-added automation science packs
      for tech in pairs(data.raw.technology) do
        OV.remove_science_pack(tech, "automation-science-pack")
        OV.remove_prereq(tech, "automation-science-pack")
      end
      OV.disable_technology({"automation-science-pack"})
      OV.add_prereq("automation", "steam-automation")

      OV.set_science_pack("steam-automation", "angels-science-pack-grey", 1)
      OV.set_science_pack("bob-steam-engine-1", "angels-science-pack-grey", 1)
      OV.set_science_pack("bob-steam-engine-1", "datacore-basic", 2)
    end

    --remove all advanced-logistics packs
    OV.disable_recipe({"advanced-logistic-science-pack"})
    angelsmods.functions.add_flag("advanced-logistic-science-pack", "hidden")
    for rec_4tech in pairs(data.raw.technology) do
      OV.remove_science_pack(rec_4tech, "advanced-logistic-science-pack")
      OV.remove_prereq(rec_4tech, "advanced-logistic-science-pack")
    end
    OV.disable_technology({"advanced-logistic-science-pack"})
  end

  OV.execute()
end
