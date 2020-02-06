local OV = angelsmods.functions.OV

OV.global_replace_technology("logistic-science-pack", "tech-green-labs")
OV.global_replace_technology("chemical-science-pack", "tech-blue-labs")
OV.global_replace_technology("high-tech-science-pack", "tech-yellow-labs")

OV.remove_science_pack("automation", "angels-science-pack-red")
OV.set_science_pack("automation", "angels-science-pack-grey")
OV.remove_science_pack("logistics", "angels-science-pack-red")
OV.set_science_pack("logistics", "angels-science-pack-grey")
OV.remove_science_pack("turrets", "angels-science-pack-red")
OV.set_science_pack("turrets", "angels-science-pack-grey")

OV.remove_science_pack("advanced-material-processing", "angels-science-pack-red")
OV.set_science_pack("advanced-material-processing", "angels-science-pack-green")

OV.remove_science_pack("armor-making-2", "angels-science-pack-green")
OV.set_science_pack("armor-making-2", "angels-science-pack-red")

OV.remove_science_pack("battery", "angels-science-pack-green")
OV.set_science_pack("battery", "angels-science-pack-orange")
OV.remove_science_pack("oil-processing", "angels-science-pack-green")
OV.set_science_pack("oil-processing", "angels-science-pack-orange")
OV.remove_science_pack("circuit-network", "angels-science-pack-green")
OV.set_science_pack("circuit-network", "angels-science-pack-orange")
OV.remove_science_pack("armor-making-3", "angels-science-pack-green")
OV.set_science_pack("armor-making-3", "angels-science-pack-orange")
OV.remove_science_pack("solar-energy", "angels-science-pack-green")
OV.set_science_pack("solar-energy", "angels-science-pack-orange")
OV.remove_science_pack("electric-engine", "angels-science-pack-green")
OV.set_science_pack("electric-engine", "angels-science-pack-orange")
OV.remove_science_pack("electric-energy-accumulators-1", "angels-science-pack-green")
OV.set_science_pack("electric-energy-accumulators-1", "angels-science-pack-orange")
OV.remove_science_pack("energy-shield-equipment", "angels-science-pack-green")
OV.set_science_pack("energy-shield-equipment", "angels-science-pack-orange")
OV.remove_science_pack("night-vision-equipment", "angels-science-pack-green")
OV.set_science_pack("night-vision-equipment", "angels-science-pack-orange")
OV.remove_science_pack("battery-equipment", "angels-science-pack-green")
OV.set_science_pack("battery-equipment", "angels-science-pack-orange")
OV.remove_science_pack("solar-panel-equipment", "angels-science-pack-green")
OV.set_science_pack("solar-panel-equipment", "angels-science-pack-orange")
OV.remove_science_pack("sulfur-processing", "angels-science-pack-green")
OV.set_science_pack("sulfur-processing", "angels-science-pack-orange")
OV.remove_science_pack("plastics", "angels-science-pack-green")
OV.set_science_pack("plastics", "angels-science-pack-orange")
OV.remove_science_pack("modules", "angels-science-pack-green")
OV.set_science_pack("modules", "angels-science-pack-orange")
OV.remove_science_pack("speed-module", "angels-science-pack-green")
OV.set_science_pack("speed-module", "angels-science-pack-orange")
OV.remove_science_pack("productivity-module", "angels-science-pack-green")
OV.set_science_pack("productivity-module", "angels-science-pack-orange")
OV.remove_science_pack("effectivity-module", "angels-science-pack-green")
OV.set_science_pack("effectivity-module", "angels-science-pack-orange")
OV.remove_science_pack("combat-robotics", "angels-science-pack-green")
OV.set_science_pack("combat-robotics", "angels-science-pack-orange")
OV.remove_science_pack("flamethrower-damage-1", "angels-science-pack-green")
OV.set_science_pack("flamethrower-damage-1", "angels-science-pack-orange")
OV.remove_science_pack("bullet-damage-3", "angels-science-pack-green")
OV.set_science_pack("bullet-damage-3", "angels-science-pack-orange")
OV.remove_science_pack("flying", "angels-science-pack-green")
OV.set_science_pack("flying", "angels-science-pack-orange")
OV.remove_science_pack("robotics", "angels-science-pack-green")
OV.set_science_pack("robotics", "angels-science-pack-orange")
OV.remove_science_pack("automated-construction", "angels-science-pack-green")
OV.set_science_pack("automated-construction", "angels-science-pack-orange")
OV.remove_science_pack("construction-robotics", "angels-science-pack-green")
OV.set_science_pack("construction-robotics", "angels-science-pack-orange")

OV.remove_science_pack("electric-energy-distribution-2", "angels-science-pack-blue")
OV.set_science_pack("electric-energy-distribution-2", "angels-science-pack-orange")
OV.remove_science_pack("logistic-robotics", "angels-science-pack-green")
OV.set_science_pack("logistic-robotics", "angels-science-pack-blue")

OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
OV.set_science_pack("rocket-silo", "angels-science-pack-red")
OV.set_science_pack("rocket-silo", "angels-science-pack-green")
OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
OV.set_science_pack("rocket-silo", "angels-science-pack-blue")
OV.remove_science_pack("rocket-silo", "datacore-processing-1")
--OV.remove_science_pack("rocket-silo", "datacore-war-1")

-- Start of research Automated Stack...
for rec_4tech in pairs(data.raw.technology) do
  --personal-equipment and other enhancements take priority
  if string.find(rec_4tech,"module")~=nil or string.find(rec_4tech,"equipment")~=nil or string.find(rec_4tech,"armor")~=nil or string.find(rec_4tech,"axe")~=nil or string.find(rec_4tech,"personal")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-enhance-1", 2)
    --war takes next priority
  elseif string.find(rec_4tech,"military")~=nil or string.find(rec_4tech,"laser")~=nil or string.find(rec_4tech,"combat")~=nil or string.find(rec_4tech,"damage")~=nil or string.find(rec_4tech,"shell")~=nil or string.find(rec_4tech,"flam")~=nil or string.find(rec_4tech,"bullet")~=nil or string.find(rec_4tech,"rocket")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-war-1", 2)
    --exploration is next
  elseif string.find(rec_4tech,"explor")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-exploration-1", 2)
    --energy is next
  elseif string.find(rec_4tech,"energy")~=nil or string.find(rec_4tech,"power")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-energy-1", 2)
    --logistics is next
  elseif string.find(rec_4tech,"insert")~=nil or string.find(rec_4tech,"logistic")~=nil or string.find(rec_4tech,"rail")~=nil or string.find(rec_4tech,"braking")~=nil or string.find(rec_4tech,"robot")~=nil or string.find(rec_4tech,"fluid")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-logistic-1", 2)
    --production is up next
  elseif string.find(rec_4tech,"processing")~=nil or string.find(rec_4tech,"automation")~=nil or string.find(rec_4tech,"plastic")~=nil or string.find(rec_4tech,"mining")~=nil or string.find(rec_4tech,"research")~=nil or string.find(rec_4tech,"battery")~=nil or string.find(rec_4tech,"electronic")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
    --smelting and metallurgy
  elseif string.find(rec_4tech,"smelting")~=nil or string.find(rec_4tech,"casting")~=nil or string.find(rec_4tech,"metallurgy")~=nil or string.find(rec_4tech,"cool")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
    --Bioprocessing updates
  elseif string.find(rec_4tech,"bio")~=nil or string.find(rec_4tech,"farm")~=nil or string.find(rec_4tech,"arbor")~=nil or string.find(rec_4tech,"cool")~=nil or string.find(rec_4tech,"garden")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
    --more war updates
  elseif string.find(rec_4tech,"wall")~=nil or string.find(rec_4tech,"gate")~=nil or string.find(rec_4tech,"shoot")~=nil or string.find(rec_4tech,"turret")~=nil or string.find(rec_4tech,"explo")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-war-1", 2)
    --petrochem and refining updates
  elseif string.find(rec_4tech,"chemistry")~=nil or string.find(rec_4tech,"ore")~=nil or string.find(rec_4tech,"crack")~=nil or string.find(rec_4tech,"science-pack")~=nil then
    OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
  end
end

--CUSTOM FIXES--

--Early Game Overrides
OV.set_science_pack("automation", "datacore-basic", 2)
OV.remove_science_pack("logistics", "datacore-logistic-1")
OV.set_science_pack("logistics", "datacore-basic", 2)
OV.remove_science_pack("automation", "datacore-processing-1")
OV.remove_science_pack("bio-processing-brown", "datacore-processing-1")
OV.set_science_pack("bio-processing-brown", "datacore-basic", 2)
OV.remove_science_pack("bio-paper-1", "datacore-processing-1")
OV.set_science_pack("bio-paper-1", "datacore-basic", 2)

--Custom Fix's (in Categories)
--Exploration
OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
OV.set_science_pack("tanks", "datacore-exploration-1", 2)
OV.remove_science_pack("tanks", "datacore-processing-1")
OV.remove_science_pack("tanks", "datacore-war-1")
OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
OV.set_science_pack("landfill", "datacore-exploration-1", 2)
--ENHANCEMENT
OV.set_science_pack("effect-transmission", "datacore-enhance-1", 2)
OV.remove_science_pack("effect-transmission", "datacore-processing-1")
OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
OV.set_science_pack("optics", "datacore-enhance-1", 2)
--LOGISTIC
OV.set_science_pack("flying", "datacore-logistic-1", 2) --does this even exist?
OV.set_science_pack("automated-construction", "datacore-logistic-1", 2) --does this even exist?
-- (im not sure why i need to actually do these, will have to check the other override files for shenanigans)
OV.remove_science_pack("inserter-capacity-bonus-4", "datacore-processing-1")
OV.remove_science_pack("inserter-capacity-bonus-5", "datacore-processing-1")
OV.remove_science_pack("inserter-capacity-bonus-6", "datacore-processing-1")
OV.remove_science_pack("inserter-capacity-bonus-7", "datacore-processing-1")
OV.remove_science_pack("logistics-3", "datacore-processing-1")
--PROCESSING
OV.set_science_pack("concrete", "datacore-processing-1", 2)
OV.set_science_pack("circuit-network", "datacore-processing-1", 2)
OV.set_science_pack("engine", "datacore-processing-1", 2)
OV.set_science_pack("electric-engine", "datacore-processing-1", 2)
OV.set_science_pack("geode-crystallization", "datacore-processing-1", 2)
OV.set_science_pack("lubricant", "datacore-processing-1", 2)
OV.set_science_pack("thermal-water-extraction", "datacore-processing-1", 2)
OV.set_science_pack("low-density-structure", "datacore-processing-1", 2)

--WAR
OV.remove_science_pack("turrets", "datacore-war-1")
OV.set_science_pack("turrets", "datacore-basic", 2)
OV.remove_science_pack("power-armor-mk2", "datacore-war-1")
OV.remove_science_pack("atomic-bomb", "datacore-processing-1")

-- Start of research Automated Stack removal overrides
for rec_4tech in pairs(data.raw.technology) do
  --fix follower robot tech needing multi-core
if string.find(rec_4tech,"follower")~=nil  then
  OV.remove_science_pack(rec_4tech, "datacore-logistic-1")
  OV.remove_science_pack(rec_4tech, "datacore-processing-1")
--fix modules
elseif string.find(rec_4tech,"module")~=nil  then
  OV.remove_science_pack(rec_4tech, "datacore-processing-1")
  --update equipment
  --fix modules
elseif string.find(rec_4tech,"equipment")~=nil  then
    OV.remove_science_pack(rec_4tech, "datacore-war-1")
end
end
