--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.industries = angelsmods.industries or {}
angelsmods.industries.number_tint = { r = 1, g = 0, b = 1, a = 1 }
angelsmods.industries.tech_exceptions = angelsmods.industries.tech_exceptions or {}

--TRIGGER CHECKS
angelsmods.industries.tech = settings.startup["angels-enable-tech"].value -- enable technology overhaul

angelsmods.industries.components = settings.startup["angels-enable-components"].value
angelsmods.industries.blocks = angelsmods.industries.blocks or {}
angelsmods.industries.blocks.exploration = false
angelsmods.industries.blocks.logistic = false
angelsmods.industries.blocks.warfare = false
angelsmods.industries.blocks.enhancement5 = false
angelsmods.industries.blocks.energy5 = false

if angelsmods.industries.tech == true then
  angelsmods.industries.components = true
  angelsmods.industries.blocks.exploration = true
  angelsmods.industries.blocks.logistic = true
  angelsmods.industries.blocks.warfare = true
  angelsmods.industries.blocks.enhancement5 = true
  angelsmods.industries.blocks.energy5 = true
  if mods["bobtech"] then
    bobmods.tech.advanced_logistic_science = false
  end
end

angelsmods.industries.return_ingredients = angelsmods.industries.components
    and settings.startup["angels-return-ingredients"].value
  or false
angelsmods.industries.block_stack_size = settings.startup["angels-components-stack-size"].value

angelsmods.industries.component_result_multiplier = 1
angelsmods.industries.component_crafting_time_multiplier = 1
local component_result_multiplier = settings.startup["angels-components-component-difficulty"].value
if component_result_multiplier == "normal" then
  angelsmods.industries.component_result_multiplier = 2
  angelsmods.industries.component_crafting_time_multiplier = 2
elseif component_result_multiplier == "easy" then
  angelsmods.industries.component_result_multiplier = 2
  angelsmods.industries.component_crafting_time_multiplier = 1
elseif component_result_multiplier ~= "hard" then
  console.log(
    "Error: Angels startup setting 'angels-components-component-difficulty' has an invalid value '"
      .. block_result_multiplier
      .. "' configured! Falling back to default..."
  )
end

angelsmods.industries.block_result_multiplier = 1
angelsmods.industries.block_crafting_time_multiplier = 1
local block_result_multiplier = settings.startup["angels-components-block-difficulty"].value
if block_result_multiplier == "normal" then
  angelsmods.industries.block_result_multiplier = 2
  angelsmods.industries.block_crafting_time_multiplier = 2
elseif block_result_multiplier == "easy" then
  angelsmods.industries.block_result_multiplier = 2
  angelsmods.industries.block_crafting_time_multiplier = 1
elseif block_result_multiplier ~= "hard" then
  console.log(
    "Error: Angels startup setting 'angels-components-block-difficulty' has an invalid value '"
      .. block_result_multiplier
      .. " configured! Falling back to default..."
  )
end

-- set triggers for other angel mods
require("prototypes.angels-industries-triggers")

--LOAD FUNCTIONS
require("prototypes.overrides.industries-override-functions")

--LOAD PROTOTYPES
--CATEGORIES
require("prototypes.angels-industries-category")

--COMPONENTS OVERHAUL --------------------------------------------------
--ITEMS
require("prototypes.items.components-electronics")
require("prototypes.items.components-mechanical")
require("prototypes.items.components-construction")
require("prototypes.items.components-blocks")
require("prototypes.items.components-weapons")
require("prototypes.items.components-cabling")
require("prototypes.items.components-batteries")
require("prototypes.items.components-rocket")
--RECIPES
require("prototypes.recipes.components-electronics-recipes")
require("prototypes.recipes.components-mechanical-recipes")
require("prototypes.recipes.components-construction-recipes")
require("prototypes.recipes.components-cabling-recipes")
require("prototypes.recipes.components-blocks-recipes")
require("prototypes.recipes.components-weapons-recipes")
require("prototypes.recipes.components-batteries-recipes")
require("prototypes.recipes.components-rocket-recipes")
--ENTITIES
--require("prototypes.buildings.angels-assemblers")
--TECHS
require("prototypes.technology.components-electronics-technology")
require("prototypes.technology.components-mechanical-technology")
require("prototypes.technology.components-construction-technology")
require("prototypes.technology.components-weapons-technology")
require("prototypes.technology.components-cabling-technology")
require("prototypes.technology.components-batteries-technology")
require("prototypes.technology.components-rocket-technology")

--TECH OVERHAUL  -------------------------------------------------------
--ITEMS
require("prototypes.items.tech-science-packs")
--ENTITIES
require("prototypes.buildings.angels-labs-main")
require("prototypes.buildings.angels-labs-basic")
require("prototypes.buildings.angels-labs-enhance")
require("prototypes.buildings.angels-labs-exploration")
require("prototypes.buildings.angels-labs-energy")
require("prototypes.buildings.angels-labs-logistic")
require("prototypes.buildings.angels-labs-processing")
require("prototypes.buildings.angels-labs-war")
--require("prototypes.buildings.angels-accelerator")
--RECIPES
require("prototypes.recipes.tech-science-cores-recipes")
require("prototypes.recipes.tech-science-packs-recipes")
require("prototypes.recipes.tech-entity")
--TECHS
require("prototypes.technology.tech-lab-technology")
require("prototypes.technology.tech-pack-technology")

-- LOGISTICS -----------------------------------------------------------

--ENTITIES
require("prototypes.buildings.angels-logistics-lamp")
require("prototypes.buildings.angels-logistics-roboport")
require("prototypes.buildings.angels-logistics-charging-station")
require("prototypes.buildings.angels-logistics-zone-expander")
require("prototypes.buildings.angels-logistics-construction-zone-expander")
require("prototypes.buildings.angels-logistics-relay-station")
require("prototypes.buildings.angels-logistics-big-chest")
require("prototypes.buildings.angels-logistics-robot-construction")
require("prototypes.buildings.angels-logistics-robot-cargo")
--RECIPES
require("prototypes.recipes.logistics-entity")
--TECHS
require("prototypes.technology.logistics-technology")
