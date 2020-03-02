local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
-- catch most of the cores with the core builder
core_builder()
OV.execute()

-- now the custom fixes
-------------------------------------------------------------------------------
-- NO CORES -------------------------------------------------------------------
-------------------------------------------------------------------------------
OV.remove_science_pack("rocket-silo", "datacore-war-1")

-------------------------------------------------------------------------------
-- BASIC CORES ----------------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
core_replace("automation", "processing", "basic")
core_replace("logistics", "logistic", "basic")
core_replace("turrets","war","basic")
-- REFINING
core_replace("water-treatment", "processing", "basic")
-- SMELTING
core_replace("angels-solder-smelting-basic", "processing", "basic")
-- BIO PROCESSING
core_replace("bio-processing-brown", "processing", "basic")
core_replace("bio-paper-1", "processing", "basic")
-- INDUSTRIES
OV.set_science_pack("tech-red-circuit", "datacore-basic", 2)
OV.set_science_pack("tech-green-circuit", "datacore-basic", 2)
OV.set_science_pack("tech-orange-circuit", "datacore-basic", 2)
OV.set_science_pack("tech-blue-circuit", "datacore-basic", 2)
OV.set_science_pack("tech-yellow-circuit", "datacore-basic", 2)
-- DECORATION ADDONS
if angelsmods.addons.decorations then
  OV.set_science_pack("nilaus", "datacore-basic", 2)
  OV.set_science_pack("deco-shred", "datacore-basic", 2)
end

-------------------------------------------------------------------------------
-- EXPLORATION CORES ----------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.set_science_pack("landfill", "datacore-exploration-1", 2)
OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
core_replace("space-science-pack", "processing", "exploration")
-- EXPLORATION
OV.set_science_pack("angels-heavy-tank", "datacore-exploration-1", 2)
-- CAB ADDONS
if angelsmods.addons.cab then
  OV.set_science_pack("angels-cab", "datacore-exploration-1", 2)
end
-- DECORATION ADDONS
if angelsmods.addons.decorations then
  OV.set_science_pack("nilaus-truck", "datacore-exploration-1", 2)
end

-------------------------------------------------------------------------------
-- ENHANCEMENT CORES ----------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
core_replace("effect-transmission", "processing", "enhance")
OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
OV.set_science_pack("optics", "datacore-enhance-1", 2)
core_replace("rocket-fuel","war","enhance")
-- PETROCHEM
core_replace("angels-rocket-fuel","war","enhance")

-------------------------------------------------------------------------------
-- ENERGY CORES ---------------------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- LOGISTIC CORES -------------------------------------------------------------
-------------------------------------------------------------------------------
-- PETROCHEM
OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
-- INDUSTRIES
OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
OV.set_science_pack("angels-yellow-loader", "datacore-logistic-1", 2)
OV.set_science_pack("angels-red-loader", "datacore-logistic-1", 2)
OV.set_science_pack("angels-blue-loader", "datacore-logistic-1", 2)
-- PRESSURE TANKS ADDONS
if angelsmods.addons.pressuretanks then
  OV.set_science_pack("pressure-tanks", "datacore-logistic-1", 2)
end
--ORE SILO ADDONS
if angelsmods.addons.oresilos then
  core_replace("ore-silos", "processing", "logistic")
end
-------------------------------------------------------------------------------
-- WARFARE CORES --------------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
for rec_4tech,_ in pairs(data.raw.technology) do --fix follower robot count techs
  if string.find(rec_4tech,"follower")~=nil and string.find(rec_4tech,"robot")~=nil then
    core_replace(rec_4tech, "logistic", "war")
  end
end
-------------------------------------------------------------------------------
-- PRODUCTION CORES -----------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.set_science_pack("concrete", "datacore-processing-1", 2)
OV.set_science_pack("circuit-network", "datacore-processing-1", 2)
OV.set_science_pack("engine", "datacore-processing-1", 2)
OV.set_science_pack("electric-engine", "datacore-processing-1", 2)
OV.set_science_pack("lubricant", "datacore-processing-1", 2)
OV.set_science_pack("low-density-structure", "datacore-processing-1", 2)
-- REFINING
OV.set_science_pack("geode-crystallization", "datacore-processing-1", 2)
OV.set_science_pack("thermal-water-extraction", "datacore-processing-1", 2)
-- PETROCHEM
OV.set_science_pack("angels-coal-cracking", "datacore-processing-1", 2)
OV.set_science_pack("oil-gas-extraction", "datacore-processing-1", 2)
OV.set_science_pack("angels-flare-stack", "datacore-processing-1", 2)
OV.set_science_pack("gas-synthesis", "datacore-processing-1", 2)
OV.set_science_pack("resin-1", "datacore-processing-1", 2)
OV.set_science_pack("resin-2", "datacore-processing-1", 2)
OV.set_science_pack("resin-3", "datacore-processing-1", 2)
OV.set_science_pack("rubber", "datacore-processing-1", 2)
core_replace("rocket-booster-1","war","processing")
core_replace("rocket-booster-2","war","processing")

OV.execute() ------------------------------------------------------------------

-- now upgrade the cores to tier 2 and let them depend on the correct technology
core_tier_upgrade()
OV.execute()

if false then



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
  --OV.add_unlock("angels-tin-smelting-1", "basic-tinned-copper-wire")
  --OV.add_unlock("angels-silver-smelting-1", "basic-silvered-copper-wire")
  --OV.add_unlock("angels-silicon-smelting-1","angels-silicon-wafer")
  --OV.add_unlock("angels-glass-smelting-2","angels-coil-glass-fiber")
  --OV.add_unlock("angels-gold-smelting-1","angels-wire-gold")
end


end