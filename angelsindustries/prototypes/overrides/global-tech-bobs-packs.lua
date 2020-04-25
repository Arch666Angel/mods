local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
-------------------------------------------------------------------------------
-- BASE BOBS (MCI) ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  pack_replace("battery-2", "blue", "orange")
  OV.remove_prereq("battery-2", "chemical-science-pack")
  pack_replace("gem-processing-2", "blue", "orange")
  OV.remove_prereq("gem-processing-2", "chemical-science-pack")
  OV.remove_science_pack("lubricant", "angels-science-pack-green")

  if not mods["bobtech"] then --alien resources
    pack_replace("alien-blue-research", "yellow", "blue")
    pack_replace("alien-orange-research", "yellow", "blue")
    pack_replace("alien-purple-research", "yellow", "blue")
    pack_replace("alien-yellow-research", "yellow", "blue")
    pack_replace("alien-green-research", "yellow", "blue")
    pack_replace("alien-red-research", "yellow", "blue")
  end
end

-------------------------------------------------------------------------------
-- BOB ASSMBLY ----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobassembly"] then
  --adds bobassembly stuffs
  -- burner assemblers and/ore tier 1 electric
  if settings.startup["bobmods-assembly-burner"].value == true then
    pack_replace("basic-automation", "red", "grey")
    pack_replace("automation", "grey", "red")
  end
  -- assemblers tier 2+
  OV.add_prereq("automation-3", "tech-orange-circuit")
  pack_replace("automation-4", "blue", "orange")
  OV.remove_prereq("automation-4", "chemical-science-pack")
  OV.add_prereq("automation-4", "tech-orange-packs")
  OV.add_prereq("automation-4", "tech-blue-circuit")
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
    pack_replace("bob-distillery-3", "blue", "orange")
    OV.remove_prereq("bob-distillery-3", "chemical-science-pack")
    OV.add_prereq("tech-blue-circuit", "bob-distillery-3")
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
--bob adjustable inserters automatically gets grabbed :D

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
    pack_replace("steel-axe-4", "blue", "orange")
    OV.remove_prereq("steel-axe-4", "chemical-science-pack")
  end
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
  pack_replace("logistics-0", "red", "grey")
  pack_replace("logistics", "grey", "red")
  -- repair packs
  pack_replace("bob-repair-pack-4", "green", "blue")
  pack_replace("bob-repair-pack-5", "green", "yellow")
  -- toolbelts
  pack_replace("toolbelt-2", "blue", "orange")
  OV.remove_prereq("toolbelt-2", "chemical-science-pack")
  -- modular roboports
  pack_replace("bob-robo-modular-1", "green", "orange")
  pack_replace("bob-robo-modular-2", "blue", "orange")
  OV.remove_prereq("bob-robo-modular-2", "chemical-science-pack")
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
  pack_replace("bob-plasma-turrets-3", "blue", "orange")
  pack_replace("bob-turrets-3", "green", "orange")
  pack_replace("bob-turrets-5", "blue", "yellow")
  pack_replace("bob-laser-turrets-2", "green", "orange")
  pack_replace("bob-plasma-turrets-2", "green", "orange")
  pack_replace("bob-sniper-turrets-2", "blue", "orange")
  OV.remove_prereq("bob-sniper-turrets-2", "chemical-science-pack")
  if mods["angelsexploration"] then
    pack_replace("angels-rocket-turret", "green", "orange")
  end
  --laser rifles
  pack_replace("bob-laser-rifle", "green", "blue")
  pack_replace("bob-laser-rifle-ammo-1", "green", "blue")
  pack_replace("bob-laser-rifle-ammo-4", "blue", "yellow")
  pack_replace("bob-laser-rifle-ammo-5", "blue", "yellow")
  pack_replace("bob-laser-rifle-ammo-6", "blue", "yellow")
  --Drones/CombatBots
  pack_replace("bob-robot-gun-1", "green", "orange")
  pack_replace("bob-robot-gun-drones", "green", "orange")
  pack_replace("bob-robot-plasma-drones", "green", "orange")
  pack_replace("bob-robot-laser-drones", "green", "orange")
  pack_replace("bob-robot-flamethrower-drones", "green", "orange")
  --Rockets
  pack_replace("rocketry", "green", "orange")
  pack_replace("bob-rocket", "green", "orange")
  pre_req_replace("bob-rocket", "tungsten-processing", "angels-explosives-1")
  --radars
  pack_replace("radars-4", "blue", "yellow")
  --small fixes
  pack_replace("follower-robot-count-1", "green", "orange")
  pack_replace("follower-robot-count-2", "green", "orange")
  OV.remove_prereq("nitroglycerin-processing", "chlorine-processing-2") -- no clue why it works nowhere else...
end

-------------------------------------------------------------------------------
-- BOBS VEHICLE EQUIPMENT -----------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobvehicleequipment"] then
  --adds bob vehicle equipment stuffs
  pack_replace("vehicle-roboport-equipment", "green", "orange")
  pack_replace("vehicle-roboport-modular-equipment-1", "green", "orange")
  pack_replace("vehicle-roboport-equipment", "green", "orange")
  pack_replace("vehicle-roboport-modular-equipment-1", "green", "orange")
end

-------------------------------------------------------------------------------
-- BOBS PERSONAL EQUIPMENT ----------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobequipment"] then
  --adds bob personal equipment stuffs
  pack_replace("personal-roboport-equipment", "green", "orange")
  pack_replace("personal-roboport-modular-equipment-1", "green", "orange")
  pack_replace("exoskeleton-equipment", "green", "orange")
  pack_replace("solar-panel-equipment-2", "green", "orange")
  pack_replace("solar-panel-equipment-4", "blue", "yellow")
end

-------------------------------------------------------------------------------
-- BOBS POWER -----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobpower"] then
  --adds bob power stuffs
  if settings.startup["bobmods-power-solar"].value == true then
    pack_replace("bob-solar-energy-2", "green", "orange")
  end
  if settings.startup["bobmods-power-accumulators"].value == true then
    pack_replace("bob-electric-energy-accumulators-2", "green", "orange")
  end
  if settings.startup["bobmods-power-fluidgenerator"].value == true then
    pack_replace("fluid-generator-1", "green", "orange")
  end
  if settings.startup["bobmods-power-steam"].value == true then
    pack_replace("bob-steam-engine-3", "green", "orange")
    pack_replace("bob-steam-turbine-1", "green", "orange")
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
  pre_req_replace("turrets", "military", "angels-components-weapons-basic")
end

-------------------------------------------------------------------------------
-- BOBS TECH ------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods.bobtech then
  if data.raw.tool["science-pack-gold"] and data.raw.recipe["science-pack-gold"] then
    data.raw.recipe["science-pack-gold"].ingredients = {
      {"angels-science-pack-blue", 1}
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
