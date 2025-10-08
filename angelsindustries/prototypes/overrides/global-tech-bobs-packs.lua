local OV = angelsmods.functions.OV
local AI = angelsmods.functions.AI
--require("prototypes.overrides.industries-override-functions")

if angelsmods.industries.tech then
  -------------------------------------------------------------------------------
  -- BASE BOBS (MCI) ------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobplates"] then
    AI.pack_replace("bob-battery-2", "blue", "orange")
    OV.remove_prereq("bob-battery-2", "tech-blue-packs")
    OV.remove_prereq("bob-battery-3", "production-science-pack")

    AI.pack_replace("bob-grinding", "green", "orange")
    AI.pack_replace("bob-polishing", "green", "orange")
    AI.pack_replace("bob-gem-processing-1", "green", "orange")
    AI.pack_replace("bob-gem-processing-2", "green", "orange")
    AI.pack_replace("bob-gem-processing-3", "green", "orange")
    AI.pack_replace("bob-electric-mixing-furnace", "blue", "orange")

    if not mods["bobtech"] then --alien resources
      AI.pack_replace("bob-alien-blue-research", "yellow", "blue")
      AI.pack_replace("bob-alien-orange-research", "yellow", "blue")
      AI.pack_replace("bob-alien-purple-research", "yellow", "blue")
      AI.pack_replace("bob-alien-yellow-research", "yellow", "blue")
      AI.pack_replace("bob-alien-green-research", "yellow", "blue")
      AI.pack_replace("bob-alien-red-research", "yellow", "blue")
    end

    OV.remove_prereq("bob-nitinol-processing", "production-science-pack")
    OV.remove_prereq("bob-tungsten-alloy-processing", "production-science-pack")
    AI.pack_replace("bob-ceramics", "blue", "orange")
    AI.pack_replace("bob-cobalt-processing", "blue", "orange")

    OV.remove_prereq("bob-advanced-processing-unit", "production-science-pack")

    AI.pack_replace("kovarex-enrichment-process", "yellow", "blue")
  end

  -------------------------------------------------------------------------------
  -- BOB ASSEMBLY ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobassembly"] then
    -- assemblers tier 2+
    AI.pack_replace("automation-2", "red", "green")
    AI.pack_replace("automation-3", "blue", "orange")
    OV.remove_prereq("automation-4", "production-science-pack")
    if settings.startup["bobmods-assembly-electronicmachines"].value == true then
      AI.pack_replace("bob-electronics-machine-2", "blue", "orange")
    end
    --chemplants
    if settings.startup["bobmods-assembly-chemicalplants"].value == true then
    end
    --oil-furnaces (and metal-mixing)
    if settings.startup["bobmods-assembly-oilfurnaces"].value then
    end
    if settings.startup["bobmods-assembly-multipurposefurnaces"].value then
      OV.remove_prereq("bob-multi-purpose-furnace-1", "production-science-pack")
    end
    if settings.startup["bobmods-assembly-furnaces"].value == true then
      OV.remove_prereq("advanced-material-processing-3", "production-science-pack")
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
      OV.remove_prereq("bob-centrifuge-2", "production-science-pack")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS GREENHOUSE ------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobgreenhouse"] then
    --adds bob greenhouse stuffs
    AI.pack_replace("bob-greenhouse", "green", "red")
  end

  -------------------------------------------------------------------------------
  -- BOBS ADJUSTABLE INSERTERS --------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobinserters"] then
    if mods["boblogistics"] then
      OV.remove_prereq("bob-more-inserters-2", "logistics-3")
      OV.add_prereq("bob-more-inserters-2", "logistics-4")
      OV.remove_prereq("bob-long-inserters-2", "logistics-3")
      OV.add_prereq("bob-long-inserters-2", "logistics-4")
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
      AI.pack_replace("bob-steel-axe-4", "blue", "orange")
      OV.remove_prereq("bob-steel-axe-4", "tech-blue-packs")
    end
    --mining drills
    AI.pack_replace("bob-drills-2", "green", "orange")
    AI.pack_replace("bob-drills-4", "blue", "yellow")
    AI.pack_replace("bob-area-drills-2", "green", "orange")
    AI.pack_replace("bob-area-drills-4", "blue", "yellow")
  end

  -------------------------------------------------------------------------------
  -- BOBS MODULES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobmodules"] then
    AI.pack_replace("angels-bio-yield-module-2", "green", "orange")
    AI.pack_replace("angels-bio-yield-module-3", "yellow", "blue")
    AI.pack_replace("angels-bio-yield-module-6", "blue", "yellow")
    AI.pack_replace("angels-bio-yield-module-7", "blue", "yellow")
    AI.pack_replace("angels-bio-yield-module-8", "blue", "yellow")

    AI.pack_replace("speed-module-2", "green", "orange")
    AI.pack_replace("speed-module-3", "yellow", "blue")
    AI.pack_replace("speed-module-6", "blue", "yellow")
    AI.pack_replace("speed-module-7", "blue", "yellow")
    AI.pack_replace("speed-module-8", "blue", "yellow")

    AI.pack_replace("efficiency-module-2", "green", "orange")
    AI.pack_replace("efficiency-module-3", "yellow", "blue")
    AI.pack_replace("efficiency-module-6", "blue", "yellow")
    AI.pack_replace("efficiency-module-7", "blue", "yellow")
    AI.pack_replace("efficiency-module-8", "blue", "yellow")

    AI.pack_replace("productivity-module-2", "green", "orange")
    AI.pack_replace("productivity-module-3", "yellow", "blue")
    AI.pack_replace("productivity-module-6", "blue", "yellow")
    AI.pack_replace("productivity-module-7", "blue", "yellow")
    AI.pack_replace("productivity-module-8", "blue", "yellow")

    AI.pack_replace("pollution-clean-module-1", "green", "orange")
    AI.pack_replace("pollution-clean-module-2", "green", "orange")
    AI.pack_replace("pollution-clean-module-6", "blue", "yellow")
    AI.pack_replace("pollution-clean-module-7", "blue", "yellow")
    AI.pack_replace("pollution-clean-module-8", "blue", "yellow")

    AI.pack_replace("pollution-create-module-1", "green", "orange")
    AI.pack_replace("pollution-create-module-2", "green", "orange")
    AI.pack_replace("pollution-create-module-6", "blue", "yellow")
    AI.pack_replace("pollution-create-module-7", "blue", "yellow")
    AI.pack_replace("pollution-create-module-8", "blue", "yellow")

    AI.pack_replace("module-merging", "green", "orange")

    AI.pack_replace("raw-speed-module-1", "green", "orange")
    AI.pack_replace("raw-speed-module-2", "green", "orange")
    AI.pack_replace("raw-speed-module-6", "blue", "yellow")
    AI.pack_replace("raw-speed-module-7", "blue", "yellow")
    AI.pack_replace("raw-speed-module-8", "blue", "yellow")

    AI.pack_replace("green-module-1", "green", "orange")
    AI.pack_replace("green-module-2", "green", "orange")
    AI.pack_replace("green-module-6", "blue", "yellow")
    AI.pack_replace("green-module-7", "blue", "yellow")
    AI.pack_replace("green-module-8", "blue", "yellow")

    AI.pack_replace("raw-productivity-module-1", "green", "orange")
    AI.pack_replace("raw-productivity-module-2", "green", "orange")
    AI.pack_replace("raw-productivity-module-6", "blue", "yellow")
    AI.pack_replace("raw-productivity-module-7", "blue", "yellow")
    AI.pack_replace("raw-productivity-module-8", "blue", "yellow")

    AI.pack_replace("god-module-1", "green", "orange")
    AI.pack_replace("god-module-3", "blue", "yellow")
    AI.pack_replace("god-module-4", "blue", "yellow")
    AI.pack_replace("god-module-5", "blue", "yellow")

    AI.pack_replace("modules-3", "blue", "yellow")
    AI.pack_replace("effect-transmission", "yellow", "orange")
    OV.remove_prereq("effect-transmission-2", "production-science-pack")
  end

  -------------------------------------------------------------------------------
  -- BOBS LOGISTICS -------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["boblogistics"] then
    --adds bob logistics stuffs
    if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
      -- basic logistics
      AI.pack_replace("logistics-0", "red", "grey")
      AI.pack_replace("logistics", "grey", "red")
    end
    -- toolbelts
    AI.pack_replace("toolbelt-2", "blue", "orange")
    OV.remove_prereq("toolbelt-2", "tech-blue-packs")
    -- modular roboports
    --AI.pack_replace("bob-robo-modular-1", "green", "orange")
    AI.pack_replace("bob-robo-modular-2", "blue", "orange")
    OV.remove_prereq("bob-robo-modular-2", "tech-blue-packs")
    AI.pack_replace("bob-robo-modular-3", "yellow", "blue")
    -- robots
    OV.remove_science_pack("construction-robotics", "angels-science-pack-orange")
    AI.pack_replace("logistic-robotics", "blue", "orange")
    AI.pack_replace("bob-robots-1", "blue", "orange")
    OV.remove_prereq("bob-robo-modular-3", "production-science-pack")
    AI.pack_replace("worker-robots-storage-1", "blue", "orange")
    if settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
      OV.remove_science_pack("robotics", "angels-science-pack-orange")
      AI.pack_replace("bob-robotics-2", "blue", "orange")
      OV.remove_prereq("bob-robotics-3", "production-science-pack")
      AI.pack_replace("bob-robotics-3", "yellow", "blue")
      AI.pack_replace("bob-robots-2", "yellow", "blue")
    end
    -- inserter techs
    AI.pack_replace("inserter-capacity-bonus-1", "orange", "green")
    AI.pack_replace("inserter-capacity-bonus-3", "blue", "orange")
    AI.pack_replace("inserter-stack-size-bonus-2", "blue", "orange")
    if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
      OV.remove_prereq("bulk-inserter", "tech-orange-circuit")
      AI.pack_replace("bulk-inserter", "orange", "green")
      AI.pack_replace("express-inserters", "blue", "orange")
      AI.pack_replace("bulk-inserter-2", "blue", "orange")
    else
      AI.pack_replace("express-inserters", "green", "blue")
      AI.pack_replace("bulk-inserter-2", "blue", "yellow")
    end
    -- belt techs
    AI.pack_replace("logistics-3", "blue", "orange")
    OV.remove_prereq("logistics-3", "tech-blue-packs")
    OV.remove_prereq("logistics-4", "production-science-pack")
    -- railway
    AI.pack_replace("bob-railway-2", "green", "orange")
    AI.pack_replace("bob-armoured-railway-2", "blue", "yellow")
    AI.pack_replace("bob-fluid-wagon-2", "green", "orange")
    AI.pack_replace("bob-armoured-fluid-wagon-2", "blue", "yellow")
    -- repair packs techs
    AI.pack_replace("bob-repair-pack-5", "blue", "yellow")
    -- fluid handling techs
    AI.pack_replace("bob-fluid-handling-2", "green", "orange")
    AI.pack_replace("bob-fluid-handling-4", "blue", "yellow")
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
    AI.pack_replace("bob-turrets-3", "green", "orange")
    AI.pack_replace("bob-turrets-5", "blue", "yellow")
    AI.pack_replace("bob-sniper-turrets-2", "blue", "orange")
    OV.remove_prereq("bob-sniper-turrets-2", "military-3")
    AI.pack_replace("bob-laser-turrets-2", "green", "orange")
    AI.pack_replace("bob-laser-turrets-3", "blue", "orange")
    OV.remove_prereq("bob-laser-turrets-3", "military-3")
    OV.add_prereq("bob-laser-turrets-4", "military-3")
    OV.remove_prereq("bob-laser-turrets-4", "production-science-pack")
    AI.pack_replace("bob-plasma-turrets-1", "green", "orange")
    AI.pack_replace("bob-plasma-turrets-2", "green", "orange")
    OV.remove_prereq("bob-plasma-turrets-4", "production-science-pack")
    if mods["angelsexploration"] then
      AI.pack_replace("angels-rocket-turret", "green", "orange")
    end
    --laser rifles
    AI.pack_replace("bob-laser-rifle", "green", "orange")
    AI.pack_replace("bob-laser-rifle-ammo-1", "green", "orange")
    AI.pack_replace("bob-laser-rifle-ammo-2", "green", "orange")
    OV.remove_prereq("bob-laser-rifle-ammo-2", "military-3")
    OV.add_prereq("bob-laser-rifle-ammo-3", "military-3")
    --Drones/CombatBots
    AI.pack_replace("bob-robot-gun-1", "green", "orange")
    if mods["boblogistics"] then
      AI.pack_replace("bob-robot-gun-drones", "green", "orange")
      AI.pack_replace("bob-robot-plasma-drones", "green", "orange")
      AI.pack_replace("bob-robot-laser-drones", "green", "orange")
      AI.pack_replace("bob-robot-flamethrower-drones", "green", "orange")
    else
      AI.pack_replace("bob-robot-gun-drones", "blue", "orange")
      AI.pack_replace("bob-robot-plasma-drones", "blue", "orange")
      AI.pack_replace("bob-robot-laser-drones", "blue", "orange")
      AI.pack_replace("bob-robot-flamethrower-drones", "blue", "orange")
    end
    AI.pack_replace("bob-laser-robot", "blue", "yellow")
    --Rockets
    AI.pack_replace("rocketry", "green", "orange")
    AI.pre_req_replace("bob-rocket", "military-3", "angels-components-weapons-advanced")
    AI.pre_req_replace("bob-rocket", "tungsten-processing", "angels-explosives-1")
    --radars
    AI.pack_replace("radars-3", "blue", "orange")
    OV.remove_prereq("radars-4", "production-science-pack")
    --small fixes
    AI.pack_replace("follower-robot-count-1", "green", "orange")
    AI.pack_replace("follower-robot-count-2", "green", "orange")
    OV.remove_prereq("walking-vehicle", "production-science-pack")
    --Modular/Power Armor
    AI.pack_replace("modular-armor", "orange", "green")
    AI.pack_replace("power-armor-mk2", "blue", "orange")
    OV.remove_prereq("power-armor-mk2", "military-3")
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
    AI.pack_replace("vehicle-fusion-cell-equipment-3", "yellow", "blue")
    OV.remove_prereq("vehicle-fusion-reactor-equipment-2", "production-science-pack")
    AI.pack_replace("vehicle-fusion-reactor-equipment-2", "yellow", "blue")
    AI.pack_replace("vehicle-fusion-reactor-equipment-3", "yellow", "blue")
    AI.pack_replace("vehicle-big-turret-equipment-3", "yellow", "blue")
    AI.pre_req_replace("vehicle-big-turret-equipment-3", "military-4", "military-3")
    OV.remove_prereq("vehicle-energy-shield-equipment-3", "production-science-pack")
    OV.remove_prereq("vehicle-battery-equipment-4", "production-science-pack")
    OV.remove_prereq("vehicle-battery-equipment-6", "tech-yellow-packs")
    OV.remove_prereq("vehicle-fusion-reactor-equipment-3", "production-science-pack")
    OV.remove_prereq("vehicle-laser-defense-equipment-3", "production-science-pack")
  end

  -------------------------------------------------------------------------------
  -- BOBS PERSONAL EQUIPMENT ----------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobequipment"] then
    --adds bob personal equipment stuffs
    AI.pack_replace("personal-roboport-equipment", "green", "orange")
    AI.pack_replace("personal-roboport-modular-equipment-1", "green", "orange")
    AI.pack_replace("exoskeleton-equipment", "blue", "green")
    AI.pack_replace("exoskeleton-equipment-2", "blue", "orange")
    OV.remove_prereq("exoskeleton-equipment-2", "processing-unit")
    OV.remove_prereq("exoskeleton-equipment-3", "production-science-pack")
    AI.pack_replace("solar-panel-equipment", "orange", "green")
    AI.pack_replace("solar-panel-equipment-2", "blue", "orange")
    AI.pack_replace("solar-panel-equipment-4", "blue", "yellow")
    OV.remove_prereq("bob-energy-shield-equipment-3", "production-science-pack")
    OV.remove_prereq("bob-battery-equipment-4", "production-science-pack")
    OV.remove_prereq("bob-battery-equipment-6", "tech-yellow-packs")
    OV.remove_prereq("personal-laser-defense-equipment-3", "production-science-pack")
    OV.remove_prereq("night-vision-3", "production-science-pack")
  end

  -------------------------------------------------------------------------------
  -- BOBS POWER -----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobpower"] then
    --adds bob power stuffs
    OV.remove_science_pack("electric-engine", "angels-science-pack-green")
    -- steam power
    if settings.startup["bobmods-power-steam"].value == true then
      AI.pack_replace("bob-steam-turbine-1", "blue", "orange")
      AI.pack_replace("bob-steam-turbine-3", "blue", "yellow")
      OV.remove_prereq("bob-steam-turbine-2", "production-science-pack")
      AI.pack_replace("bob-steam-engine-3", "blue", "orange")
      OV.remove_prereq("bob-steam-engine-4", "production-science-pack")
      AI.pack_replace("bob-boiler-3", "blue", "orange")
      OV.remove_prereq("bob-boiler-4", "production-science-pack")
      AI.pack_replace("bob-oil-boiler-2", "blue", "orange")
      OV.remove_prereq("bob-oil-boiler-3", "production-science-pack")
      AI.pack_replace("bob-heat-exchanger-2", "blue", "orange")
    end
    if settings.startup["bobmods-power-fluidgenerator"].value == true then
      AI.pack_replace("fluid-generator-2", "blue", "orange")
      OV.remove_prereq("fluid-generator-3", "production-science-pack")
    end
    if settings.startup["bobmods-power-heatsources"].value == true then
      AI.pack_replace("burner-reactor-2", "blue", "orange")
    end
    -- solar power
    if settings.startup["bobmods-power-solar"].value == true then
      AI.pack_replace("bob-solar-energy-2", "blue", "orange")
      OV.remove_prereq("bob-solar-energy-3", "production-science-pack")
    end
    if settings.startup["bobmods-power-accumulators"].value == true then
      AI.pack_replace("electric-energy-accumulators", "orange", "green")
      AI.pack_replace("bob-electric-energy-accumulators-2", "blue", "orange")
      OV.remove_prereq("bob-electric-energy-accumulators-3", "production-science-pack")
    end
    -- nuclar power
    if
      settings.startup["bobmods-power-steam"].value == true
      or settings.startup["bobmods-power-nuclear"].value == true
      or settings.startup["bobmods-power-heatsources"].value == true
    then
      AI.pack_replace("bob-heat-pipe-2", "blue", "orange")
      OV.remove_prereq("bob-heat-pipe-3", "production-science-pack")
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
        { type = "item", name = "angels-science-pack-blue", amount = 1 },
      }
    end

    if settings.startup["bobmods-burnerphase"].value then
      --remove all re-added automation science packs
      for tech in pairs(data.raw.technology) do
        OV.remove_science_pack(tech, "automation-science-pack")
        OV.remove_science_pack(tech, "steam-science-pack")
        OV.remove_prereq(tech, "automation-science-pack")
      end
      OV.add_prereq("steam-power", "tech-specialised-labs")
      OV.add_prereq("logistics-0", "tech-specialised-labs")
      OV.add_prereq("basic-automation", "tech-specialised-labs")

      OV.set_science_pack("steam-power", "angels-science-pack-grey", 1)
      OV.set_science_pack("steam-automation", "angels-science-pack-grey", 1)
      OV.set_science_pack("bob-electricity", "angels-science-pack-grey", 1)
      OV.set_science_pack("bob-steam-engine-1", "angels-science-pack-grey", 1)
      OV.set_science_pack("bob-steam-engine-1", "datacore-basic", 2)

      OV.disable_technology({ "automation-science-pack" })
      OV.add_prereq("automation", "steam-automation")

      for _, lab_name in pairs({ "angels-main-lab-1", "angels-basic-lab" }) do
        local burner_lab = data.raw["lab"][lab_name]
        if burner_lab then
          burner_lab.energy_source = {
            type = "burner",
            fuel_categories = { "chemical" },
            effectivity = 0.65,
            fuel_inventory_size = 1,
            emissions_per_minute = {pollution = 6},
            smoke = {
              {
                name = "smoke",
                deviation = { 0.1, 0.1 },
                frequency = 3,
              },
            },
          }
        end
      end
    end
  end

  OV.execute()
end
