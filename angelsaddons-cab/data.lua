if not angelsmods then
  angelsmods = {}
end
if not angelsmods.addons then
  angelsmods.addons = {}
end
if not angelsmods.addons.cab then
  angelsmods.addons.cab = {}
end

require("prototypes.cab-category")

require("prototypes.entities.cab")
require("prototypes.entities.equipment")

require("prototypes.recipes.cab-recipe")
require("prototypes.recipes.equipment-recipe")

require("prototypes.technology.cab-technology")
