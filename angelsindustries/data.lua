--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.industries then angelsmods.industries = {} end

--TRIGGER CHECKS
angelsmods.industries.overhaul = settings.startup["angels-enable-industries"].value -- enable industries
angelsmods.industries.tech = settings.startup["angels-enable-tech"].value --false -- enable technology overhaul
--temp overrides to disable until ready
angelsmods.industries.tech=false
angelsmods.industries.components=false
--Final settings
--[[if settings.startup["angels-enable-tech"].value==true then
  --enforce components to be true if tech is true, can remove this later once we re-jig the recipes to allow tech without components.
  angelsmods.industries.components=true
else
  angelsmods.industries.components = settings.startup["angels-enable-components"].value --false -- enable hard mode
end]]



--LOAD FUNCTIONS
if not angelsmods.industries.tech_exceptions then angelsmods.industries.tech_exceptions = {} end

--LOAD PROTOTYPES
--CATEGORIES
require("prototypes.angels-industries-category")

--COMPONENTS
if angelsmods.industries.overhaul and angelsmods.industries.components then
  --ITEMS
  require("prototypes.items.components-electronics")
  require("prototypes.items.components-mechanical")
  require("prototypes.items.components-construction")
  require("prototypes.items.components-blocks")
  require("prototypes.items.components-weapons")
  require("prototypes.items.components-cabling")

  --ENTITIES
  require("prototypes.buildings.angels-assemblers")

  --RECIPES
  require("prototypes.recipes.components-entity")
  require("prototypes.recipes.components-electronics-recipes")
  require("prototypes.recipes.components-mechanical-recipes")
  require("prototypes.recipes.components-construction-recipes")
  require("prototypes.recipes.components-cabling-recipes")
  require("prototypes.recipes.components-blocks-recipes")
  require("prototypes.recipes.components-weapons-recipes")
end

--TECH
if angelsmods.industries.overhaul and angelsmods.industries.tech then
  --ITEMS
  require("prototypes.items.tech-science-packs")

  --ENTITIES
  require("prototypes.buildings.angels-labs")
  require("prototypes.buildings.angels-labs-enhance")
  require("prototypes.buildings.angels-labs-exploration")
  require("prototypes.buildings.angels-labs-energy")
  require("prototypes.buildings.angels-labs-logistic")
  require("prototypes.buildings.angels-labs-processing")
  require("prototypes.buildings.angels-labs-war")

  require("prototypes.buildings.angels-accelerator")

  --RECIPES
  require("prototypes.recipes.tech-science-packs-recipes")
  require("prototypes.recipes.tech-entity")

  --TECHS
  require("prototypes.technology.angels-tech-technology")
end

--ENTITIES
require("prototypes.buildings.cargo-roboport")
require("prototypes.buildings.cargo-robot")
require("prototypes.buildings.zone-expander")
require("prototypes.buildings.construction-robot")
require("prototypes.buildings.chests")

require("prototypes.entities.crawler")
require("prototypes.entities.crawler-train")
require("prototypes.entities.equipment")

require("prototypes.entities.bio-tile")

--RECIPES
require("prototypes.recipes.equipment-recipes")
require("prototypes.recipes.logistics-entity")
require("prototypes.recipes.vehicles-recipe")

require("prototypes.technology.angels-vequip-technology")
require("prototypes.technology.logistics-technology")
