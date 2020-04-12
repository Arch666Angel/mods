--INITIALIZE
if not angelsmods then
  angelsmods = {}
end
if not angelsmods.industries then
  angelsmods.industries = {}
end
angelsmods.industries.number_tint = {r = 1, g = 0, b = 1, a = 0}

--TRIGGER CHECKS
angelsmods.industries.tech = settings.startup["angels-enable-tech"].value -- enable technology overhaul
--angelsmods.industries.tech=false --temp overrides to disable until ready

angelsmods.industries.components = settings.startup["angels-enable-components"].value
--Enforce components to be true if tech is true, can remove this later once we re-jig the recipes to allow tech without components.
if angelsmods.industries.tech == true then
  angelsmods.industries.components = true
end
--angelsmods.industries.components = false --temp overrides to disable until ready

angelsmods.industries.overhaul = settings.startup["angels-enable-industries"].value -- enable industries
if mods["bobplates"] or angelsmods.industries.components then
  angelsmods.industries.overhaul = true
end
--angelsmods.industries.overhaul=false --temp overrides

angelsmods.industries.return_ingredients = angelsmods.industries.components and settings.startup["angels-return-ingredients"].value or false

-- set triggers for other angel mods
require("prototypes.angels-industries-triggers")

--LOAD FUNCTIONS
if not angelsmods.industries.tech_exceptions then
  angelsmods.industries.tech_exceptions = {}
end

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
  --require("prototypes.buildings.angels-assemblers")

  --RECIPES
  --require("prototypes.recipes.components-entity")
  require("prototypes.recipes.components-electronics-recipes")
  require("prototypes.recipes.components-mechanical-recipes")
  require("prototypes.recipes.components-construction-recipes")
  require("prototypes.recipes.components-cabling-recipes")
  require("prototypes.recipes.components-blocks-recipes")
  require("prototypes.recipes.components-weapons-recipes")

  --TECHS
  require("prototypes.technology.components-electronics-technology")
  require("prototypes.technology.components-mechanical-technology")
  require("prototypes.technology.components-construction-technology")
  require("prototypes.technology.components-weapons-technology")
  require("prototypes.technology.components-cabling-technology")
end

--TECH
if angelsmods.industries.overhaul and angelsmods.industries.tech then
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
end

--ENTITIES
require("prototypes.buildings.angels-logistics-roboport")
require("prototypes.buildings.angels-logistics-charging-station")
require("prototypes.buildings.angels-logistics-zone-expander")
require("prototypes.buildings.angels-logistics-construction-zone-expander")
require("prototypes.buildings.angels-logistics-relay-station")
require("prototypes.buildings.angels-logistics-big-chest")
require("prototypes.buildings.angels-logistics-robot-construction")
require("prototypes.buildings.angels-logistics-robot-cargo")

require("prototypes.entities.crawler")
require("prototypes.entities.equipment")
require("prototypes.entities.bio-tile")

--RECIPES
require("prototypes.recipes.equipment-recipes")
require("prototypes.recipes.logistics-entity")
require("prototypes.recipes.vehicles-recipe")

require("prototypes.technology.vequip-technology")
require("prototypes.technology.logistics-technology")
