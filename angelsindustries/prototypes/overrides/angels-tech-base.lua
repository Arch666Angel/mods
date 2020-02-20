local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
--this is where pack_replace(techname,old_c,new_c),core_replace(techname,old_c,new_c),core_tier_up(techname,core_n) functions are stored
--SET COLOURED PACKS BEFORE ADDING CORES

--remove pre-requisites for vanilla packs, moving them across to the new lab techs
OV.global_replace_technology("logistic-science-pack", "tech-green-labs")
OV.global_replace_technology("chemical-science-pack", "tech-blue-labs")
OV.global_replace_technology("high-tech-science-pack", "tech-yellow-labs")
--replace starting tech requirements (automation, logistics, turrets) to needing grey not red
pack_replace("automation","red","grey")
pack_replace("logistics","red","grey")
pack_replace("turrets","red","grey")
--move advanced material processing up a tier
pack_replace("advanced-material-processing","red","green")
--move armour making down a tier
pack_replace("armor-making-2","green","red")
--general tier changes
pack_replace("battery","green","orange")
pack_replace("oil-processing","green","orange")
pack_replace("circuit-network","green","orange")
pack_replace("armor-making-3","green","orange")
pack_replace("solar-energy","green","orange")
pack_replace("electric-engine","green","orange")
OV.remove_science_pack("electric-engine", "angels-science-pack-blue")
pack_replace("electric-energy-accumulators-1","green","orange")
pack_replace("energy-shield-equipment","green","orange")
pack_replace("night-vision-equipment","green","orange")
pack_replace("battery-equipment","green","orange")
pack_replace("solar-panel-equipment","green","orange")
pack_replace("sulfur-processing","green","orange")
pack_replace("plastics","green","orange")
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
pack_replace("logistic-robotics","green","blue")

--set multi-colours for the silo
OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
OV.set_science_pack("rocket-silo", "angels-science-pack-red")
OV.set_science_pack("rocket-silo", "angels-science-pack-green")
OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
OV.set_science_pack("rocket-silo", "angels-science-pack-blue")
--REFINING
pack_replace("water-treatment","red","grey")
pack_replace("water-treatment-3","green","orange")
pack_replace("advanced-ore-refining-4","blue","yellow")
pack_replace("ore-leaching","blue","orange")
pack_replace("geode-processing-2","green","orange")
pack_replace("advanced-ore-refining-2","green","orange")
--BIOPROCESSING
pack_replace("bio-processing-brown","red","grey")
pack_replace("bio-paper-1","red","grey")
pack_replace("bio-wood-processing-3","green","orange")
pack_count_update("bio-temperate-farming","angels-science-pack-red", 4)
pack_replace("bio-fermentation","green","red")
pack_replace("bio-arboretum-temperate-1","green","red")
--PETROCHEM
pack_replace("angels-advanced-chemistry-2", "green","orange")
pack_replace("plastic-1", "green","orange")
pack_replace("resin-2", "blue","orange")
pack_replace("rubber", "green","orange")
pack_replace("rocket-booster-1", "green","orange")
pack_replace("rocket-explosives-1", "green","orange")
pack_replace("angels-advanced-chemistry-2", "green","orange")
pack_replace("angels-advanced-chemistry-2", "green","orange")
--RUN CORE BUILDER
OV.execute()
core_builder()
--CUSTOM FIXES (in Categories)--
OV.execute()
OV.set_science_pack("production-science-pack", "datacore-processing-1")
OV.set_science_pack("utility-science-pack", "datacore-enhance-1")
--vanilla
core_replace("automation","processing","basic")
core_replace("logistics","logistic","basic")
core_replace("space-science-pack","processing","exploration")
OV.remove_science_pack("worker-robots-storage-2", "datacore-processing-1")
OV.remove_science_pack("worker-robots-storage-3", "datacore-processing-1")
--REFINING
core_replace("water-treatment","processing","basic")
--BIOPROCESSING
core_replace("bio-processing-brown","processing","basic")
core_replace("bio-paper-1","processing","basic")
--Exploration
OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
core_replace("tanks", "processing","exploration")
OV.remove_science_pack("tanks", "datacore-war-1")
OV.set_science_pack("landfill", "datacore-exploration-1", 2)
OV.set_science_pack("angels-heavy-tank", "datacore-exploration-1", 2)
--Components
OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
OV.set_science_pack("angels-yellow-loader", "datacore-logistic-1", 2)
OV.set_science_pack("angels-red-loader", "datacore-logistic-1", 2)
OV.set_science_pack("angels-blue-loader", "datacore-logistic-1", 2)
--ENHANCEMENT
core_replace("effect-transmission","processing","enhance")
OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
OV.set_science_pack("optics", "datacore-enhance-1", 2)
--Addons
if angelsmods.addons then
	--PRESSURE TANKS
	if angelsmods.addons.pressuretanks then
		OV.set_science_pack("pressure-tanks", "datacore-logistic-1", 2)
	end
	--ORE SILORS
	if angelsmods.addons.oresilos then
		core_replace("ore-silos","processing","logistic")
		--OV.set_science_pack("ore-silos", "datacore-logistic-1", 2)
	end
	--WAREHOUSES
	if angelsmods.addons.warehouses then
		OV.set_science_pack("angels-warehouses", "datacore-logistic-1", 2)
		OV.set_science_pack("angels-logistic-warehouses", "datacore-logistic-1", 2)
	end
	--PETROTRAIN
	if angelsmods.addons.petrotrain then
		OV.set_science_pack("angels-petro-train", "datacore-logistic-1", 2)
	end
	--CAB
	if angelsmods.addons.cab then
		OV.set_science_pack("angels-cab", "datacore-exploration-2", 2)
	end
end
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
core_replace("turrets","war","basic")
OV.remove_science_pack("power-armor-mk2", "datacore-war-1")
OV.remove_science_pack("atomic-bomb", "datacore-processing-1")
--PETROCHEM
OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
OV.set_science_pack("angels-coal-cracking", "datacore-processing-1", 2)
OV.set_science_pack("oil-gas-extraction", "datacore-processing-1", 2)
OV.set_science_pack("angels-flare-stack", "datacore-processing-1", 2)
OV.set_science_pack("gas-synthesis", "datacore-processing-1", 2)
OV.set_science_pack("angels-electric-boiler", "datacore-energy-1", 2)
OV.set_science_pack("resin-1", "datacore-processing-1", 2)
OV.set_science_pack("resin-2", "datacore-processing-1", 2)
OV.set_science_pack("resin-3", "datacore-processing-1", 2)
OV.set_science_pack("rubber", "datacore-processing-1", 2)
OV.remove_science_pack("angels-rocket-fuel", "datacore-war-1")
OV.set_science_pack("angels-rocket-fuel", "datacore-processing-2", 2)
core_replace("rocket-booster-1","war","processing")
core_replace("rocket-booster-2","war","processing")
core_replace("rocket-fuel","war","enhance")
OV.remove_science_pack("rocket-silo", "datacore-processing-1")
OV.remove_science_pack("rocket-silo", "datacore-war-1")

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
  elseif string.find(rec_4tech,"braking")~=nil  then
    OV.remove_science_pack(rec_4tech, "datacore-processing-1")
  end
end
OV.execute()
core_tier_upgrade()
OV.execute()
--Manual Updates to pack upgrades (not sure why the auto-script misses these)--allmost all seem to be infinite tech stuffs
core_tier_up("stronger-explosives-3","war")
core_tier_up("stronger-explosives-4","war")
core_tier_up("stronger-explosives-5","war")
core_tier_up("stronger-explosives-6","war")
core_tier_up("stronger-explosives-7","war")
core_tier_up("refined-flammables-4","war")
core_tier_up("refined-flammables-5","war")
core_tier_up("refined-flammables-6","war")
core_tier_up("refined-flammables-7","war")
core_tier_up("laser-turrets","war")
core_tier_up("laser-turret-speed-1","war")
core_tier_up("laser-turret-speed-2","war")
--core_tier_up("laser-turret-shooting-speed-3","war")
--core_tier_up("laser-turret-shooting-speed-4","war")
core_tier_up("laser-turret-speed-5","war")
core_tier_up("laser-turret-speed-6","war")
core_tier_up("laser-turret-speed-7","war")
core_tier_up("energy-weapons-damage-1","war")
core_tier_up("energy-weapons-damage-2","war")
core_tier_up("energy-weapons-damage-3","war")
core_tier_up("energy-weapons-damage-4","war")
core_tier_up("energy-weapons-damage-5","war")
core_tier_up("energy-weapons-damage-6","war")
core_tier_up("energy-weapons-damage-7","war")
core_tier_up("physical-projectile-damage-6","war")
core_tier_up("physical-projectile-damage-7","war")
core_tier_up("weapon-shooting-speed-6","war")
core_tier_up("weapon-shooting-speed-7","war")
core_tier_up("military-4","war")
core_tier_up("uranium-ammo","war")
core_tier_up("combat-robotics-3","war")
core_tier_up("follower-robot-count-5","war")
core_tier_up("follower-robot-count-6","war")
core_tier_up("follower-robot-count-7","war")
core_tier_up("atomic-bomb","war")
core_tier_up("artillery","war")
core_tier_up("artillery-shell-range-1","war")
core_tier_up("artillery-shell-speed-1","war")
core_tier_up("space-science-pack","exploration")
core_tier_up("angels-garden-mutations","processing")
core_tier_up("worker-robots-storage-3", "logistic")
core_tier_up("worker-robots-storage-2", "logistic")
core_tier_up("worker-robots-storage-2", "logistic")
core_tier_up("ore-processing-4", "processing")
core_tier_up("ore-processing-5", "processing")
core_tier_up("powder-metallurgy-4", "processing")
core_tier_up("strand-casting-4", "processing")
core_tier_up("mining-productivity-3", "processing")
core_tier_up("mining-productivity-4", "processing")
core_tier_up("research-speed-6", "processing")
core_tier_up("mining-productivity-4", "processing")
core_tier_up("character-logistic-trash-slots-5", "logistic")
OV.remove_science_pack("character-logistic-trash-slots-5", "datacore-processing-1")
core_tier_up("worker-robots-speed-5", "logistic")
OV.remove_science_pack("worker-robots-speed-5", "datacore-processing-1")
core_tier_up("worker-robots-speed-6", "logistic")
OV.remove_science_pack("worker-robots-speed-6", "datacore-processing-1")
core_tier_up("character-logistic-slots-6", "logistic")
OV.remove_science_pack("character-logistic-slots-6", "datacore-processing-1")
OV.execute()

if angelsmods.industries.overhaul and angelsmods.industries.components then
  -- MODIFY MINABLE RESULTS TO DROP BLOCKS
  for _, recipes in pairs(data.raw.recipe) do
    if recipes.normal and recipes.normal.ingredients then
      for _, subtab in pairs(recipes.normal.ingredients) do
        for _, ingredient in pairs(subtab) do
          if type(ingredient) == "string" and string.sub(ingredient, 1, 6) == "block-" then
            if data.raw["assembling-machine"][recipes.normal.result] then
              data.raw["assembling-machine"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
            if data.raw["furnace"][recipes.normal.result] then
              data.raw["furnace"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
            if data.raw["mining-drill"][recipes.normal.result] then
              data.raw["mining-drill"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
            if data.raw["offshore-pump"][recipes.normal.result] then
              data.raw["offshore-pump"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
          end
        end
      end
    end
  end
end

OV.execute()
--loader updates
if not loaders_graphics then
  data.raw["item"]["loader"].icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png"
  data.raw["item"]["loader"].icon_size = 32
  data.raw["item"]["loader"].icon_mipmaps = 1
  data.raw["loader"]["loader"].icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png"
  data.raw["loader"]["loader"].icon_size = 32
  data.raw["loader"]["loader"].icon_mipmaps = 1
  data.raw["loader"]["loader"].structure = {
    direction_in = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
        priority = "extra-high",
        width = 128,
        height = 128
      }
    },
    direction_out = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        y = 128
      }
    }
  }

  data.raw["item"]["fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-red-ico.png"
  data.raw["item"]["fast-loader"].icon_size = 32
  data.raw["item"]["fast-loader"].icon_mipmaps = 1
  data.raw["loader"]["fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-red-ico.png"
  data.raw["loader"]["fast-loader"].icon_size = 32
  data.raw["loader"]["fast-loader"].icon_mipmaps = 1
  data.raw["loader"]["fast-loader"].structure = {
    direction_in = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
        priority = "extra-high",
        width = 128,
        height = 128
      }
    },
    direction_out = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        y = 128
      }
    }
  }

  data.raw["item"]["express-loader"].icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png"
  data.raw["item"]["express-loader"].icon_size = 32
  data.raw["item"]["express-loader"].icon_mipmaps = 1
  data.raw["loader"]["express-loader"].icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png"
  data.raw["loader"]["express-loader"].icon_size = 32
  data.raw["loader"]["express-loader"].icon_mipmaps = 1
  data.raw["loader"]["express-loader"].structure = {
    direction_in = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-blue.png",
        priority = "extra-high",
        width = 128,
        height = 128
      }
    },
    direction_out = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-blue.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        y = 128
      }
    }
  }

  if data.raw["item"]["faster-loader"] then
    data.raw["item"]["faster-loader"].icon = "__angelsindustries__/graphics/icons/loader-green-ico.png"
    data.raw["item"]["faster-loader"].icon_size = 32
    data.raw["loader"]["faster-loader"].icon = "__angelsindustries__/graphics/icons/loader-green-ico.png"
    data.raw["loader"]["faster-loader"].icon_size = 32
    data.raw["loader"]["faster-loader"].structure = {
      direction_in = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-green.png",
          priority = "extra-high",
          width = 128,
          height = 128
        }
      },
      direction_out = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-green.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          y = 128
        }
      }
    }
  end
  if data.raw["item"]["extremely-fast-loader"] then
    data.raw["item"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-purple-ico.png"
    data.raw["item"]["extremely-fast-loader"].icon_size = 32
    data.raw["loader"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-purple-ico.png"
    data.raw["loader"]["extremely-fast-loader"].icon_size = 32
    data.raw["loader"]["extremely-fast-loader"].structure = {
      direction_in = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-purple.png",
          priority = "extra-high",
          width = 128,
          height = 128
        }
      },
      direction_out = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-purple.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          y = 128
        }
      }
    }
  end
  if data.raw["technology"]["loader"] then
    data.raw["technology"]["loader"].icon = "__angelsindustries__/graphics/technology/yellow-loader-tech.png"
    data.raw["technology"]["loader"].icon_size = 128
  end
  if data.raw["technology"]["fast-loader"] then
    data.raw["technology"]["fast-loader"].icon = "__angelsindustries__/graphics/technology/red-loader-tech.png"
    data.raw["technology"]["fast-loader"].icon_size = 128
  end
  if data.raw["technology"]["express-loader"] then
    data.raw["technology"]["express-loader"].icon = "__angelsindustries__/graphics/technology/blue-loader-tech.png"
    data.raw["technology"]["express-loader"].icon_size = 128
  end
  if data.raw["technology"]["faster-loader"] then
    data.raw["technology"]["faster-loader"].icon = "__angelsindustries__/graphics/technology/green-loader-tech.png"
    data.raw["technology"]["faster-loader"].icon_size = 128
  end
  if data.raw["technology"]["extremely-fast-loader"] then
    data.raw["technology"]["extremely-fast-loader"].icon =
    "__angelsindustries__/graphics/technology/purple-loader-tech.png"
    data.raw["technology"]["extremely-fast-loader"].icon_size = 128
  end
end
--ensure that it is possible to produce the packs at each stage
if angelsmods.industries and angelsmods.industries.components then
	OV.add_unlock("angels-tin-smelting-1", "basic-tinned-copper-wire")
	OV.add_unlock("angels-silver-smelting-1", "basic-silvered-copper-wire")
	OV.add_unlock("angels-silicon-smelting-1","angels-silicon-wafer")
	OV.add_unlock("angels-glass-smelting-2","angels-coil-glass-fiber")
	OV.add_unlock("angels-gold-smelting-1","angels-wire-gold")
end
