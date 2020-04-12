local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
--this is where pack_replace(techname,old_c,new_c),core_replace(techname,old_c,new_c),core_tier_up(techname,core_n) functions are stored
--SET COLOURED PACKS BEFORE ADDING CORES

-------------------------------------------------------------------------------
-- GREY SCIENCE PACKS ---------------------------------------------------------
-------------------------------------------------------------------------------
--replace starting tech requirements to needing grey (not red)
for _,tech_name in pairs({
  -- BASE GAME
  "automation",
  "logistics",
  "turrets",
  -- REFINING
  "water-treatment",
  -- SMELTING
  "angels-solder-smelting-basic",
  -- BIO PROCESSING
  "bio-processing-brown",
  "bio-paper-1",
  -- INDUSTRIES
  "tech-red-circuit",
  "angels-components-mechanical-1",
  "angels-components-weapons-basic",
}) do
  pack_replace(tech_name,"red","grey")
end
OV.remove_prereq("turrets", "military")
OV.add_prereq("turrets","angels-components-weapons-basic")

-------------------------------------------------------------------------------
-- RED SCIENCE PACKS ----------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
pack_replace("armor-making-2","green","red") --move armour making down a tier
angelsmods.functions.add_flag("automation-science-pack", "hidden")
OV.disable_recipe({"automation-science-pack"})
pack_replace("automation-2","green","red")
OV.remove_prereq("automation-2","logistic-science-pack")
-- SMELTING
pack_replace("angels-steel-smelting-1","green","red")
-- BIO PROCESSING
pack_count_update("bio-temperate-farming","angels-science-pack-red", 4)
pack_replace("bio-fermentation","green","red")
pack_replace("bio-arboretum-temperate-1","green","red")
-- INDUSTRIES
pack_replace("tech-green-circuit","green","red")
pack_replace("angels-components-construction-2","green","red")
pack_replace("angels-components-cabling-2","green","red")
pack_replace("angels-components-mechanical-2","green","red")

-------------------------------------------------------------------------------
-- GREEN SCIENCE PACKS --------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.global_replace_technology("logistic-science-pack", "tech-green-packs")
pack_replace("advanced-material-processing","red","green") --move advanced material processing up a tier
angelsmods.functions.add_flag("logistic-science-pack", "hidden")
OV.disable_recipe({"logistic-science-pack"})
-- INDUSTRIES
OV.add_prereq("angels-components-construction-3","tech-green-packs")
pack_replace("plastics","orange","green")
pack_replace("battery","orange","green")
pack_replace("circuit-network","orange","green")

-------------------------------------------------------------------------------
-- ORANGE SCIENCE PACKS -------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
--pack_replace("battery","green","orange")
pack_replace("oil-processing","green","orange")
--pack_replace("circuit-network","green","orange")
pack_replace("modular-armor","green","orange")
pack_replace("armor-making-3","green","orange")
pack_replace("belt-immunity-equipment","green","orange")
pack_replace("solar-energy","green","orange")
pack_replace("electric-engine","green","orange")
pack_replace("electric-energy-accumulators","green","orange")
pack_replace("energy-shield-equipment","green","orange")
pack_replace("night-vision-equipment","green","orange")
pack_replace("battery-equipment","green","orange")
pack_replace("solar-panel-equipment","green","orange")
pack_replace("sulfur-processing","green","orange")
--pack_replace("plastics","green","orange")
pack_replace("modules","green","orange")
pack_replace("speed-module","green","orange")
pack_replace("productivity-module","green","orange")
pack_replace("effectivity-module","green","orange")
pack_replace("combat-robotics","green","orange")
pack_replace("flamethrower-damage-1","green","orange")
pack_replace("bullet-damage-3","green","orange")
pack_replace("flying","green","orange")
pack_replace("robotics","green","orange")
pack_replace("lubricant","blue","orange")
OV.remove_prereq("lubricant","angels-advanced-oil-processing")
OV.add_prereq("lubricant","angels-oil-processing")
OV.remove_science_pack("robotics", "angels-science-pack-blue")
pack_replace("automated-construction","green","orange")
OV.remove_science_pack("automated-construction", "angels-science-pack-blue")
pack_replace("construction-robotics","green","orange")
OV.remove_science_pack("construction-robotics", "angels-science-pack-blue")
pack_replace("electric-energy-distribution-2","blue","orange")
--REFINING
pack_replace("water-treatment-3","green","orange")
pack_replace("ore-leaching","blue","orange")
pack_replace("geode-processing-2","green","orange")
pack_replace("advanced-ore-refining-2","green","orange")
--SMELTING
pack_replace("angels-stone-smelting-3","blue","orange")
--BIOPROCESSING
pack_replace("bio-wood-processing-3","green","orange")
--PETROCHEM
pack_replace("angels-advanced-chemistry-2", "green","orange")
pack_replace("plastic-1", "green","orange")
pack_replace("resin-3","blue","yellow")
--pack_replace("resin-2", "blue","orange") -- needs melamine, which is quite deep in the tree, leave as blue
pack_replace("rubber", "green","orange")
pack_replace("rocket-booster-1", "green","orange")
pack_replace("rocket-explosives-1", "green","orange")
pack_replace("angels-advanced-chemistry-2", "green","orange")
pack_replace("angels-advanced-chemistry-2", "green","orange")
--INDUSTRIES
pack_replace("tech-blue-circuit", "blue","orange")
OV.remove_science_pack("tech-blue-circuit", "chemical-science-pack")
pack_replace("angels-components-mechanical-4","green","orange")
OV.add_prereq("angels-components-construction-4","tech-orange-packs")
pack_replace("angels-components-construction-4", "blue","orange")
OV.remove_prereq("angels-components-construction-4", "chemical-science-pack")
pack_replace("angels-components-weapons-advanced", "green","orange")
pack_replace("angels-components-cabling-4","blue","orange")
OV.remove_prereq("angels-components-cabling-4", "chemical-science-pack")
pack_replace("cargo-robots-3","green","orange")
OV.add_prereq("cargo-robots-3","angels-components-mechanical-4")
pack_replace("angels-construction-robots-2","green","orange")
pack_replace("cargo-robots-3","green","orange")

-------------------------------------------------------------------------------
-- BLUE SCIENCE PACKS ---------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.global_replace_technology("chemical-science-pack", "tech-blue-packs")
OV.remove_science_pack("electric-engine", "angels-science-pack-blue")
pack_replace("logistic-robotics","green","blue")
pack_replace("electric-energy-distribution-2","orange","blue")
angelsmods.functions.add_flag("chemical-science-pack", "hidden")
OV.disable_recipe({"chemical-science-pack"})
-- INDUSTRIES
pack_replace("angels-components-construction-5","yellow","blue")
OV.remove_prereq("angels-components-construction-5", "utility-science-pack")
pack_replace("angels-components-cabling-5","yellow","blue")
OV.remove_prereq("angels-components-cabling-5", "utility-science-pack")
pack_replace("tech-yellow-circuit","yellow","blue")

-------------------------------------------------------------------------------
-- YELOW SCIENCE PACKS --------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.global_replace_technology("utility-science-pack", "tech-yellow-packs")
angelsmods.functions.add_flag("utility-science-pack", "hidden")
OV.disable_recipe({"utility-science-pack"})
--REFINING
pack_replace("advanced-ore-refining-4","blue","yellow")
--ADDONS
if mods["angelsaddons-warehouses"] then
  pack_replace("angels-logistic-warehouses","blue","yellow")
end
if mods["angelsaddons-oresilos"] then
  pack_replace("logistic-silos","blue","yellow")
end

-------------------------------------------------------------------------------
-- WHITE SCIENCE PACKS --------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
OV.set_science_pack("rocket-silo", "angels-science-pack-red")
OV.set_science_pack("rocket-silo", "angels-science-pack-green")
OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
OV.set_science_pack("rocket-silo", "angels-science-pack-blue")
