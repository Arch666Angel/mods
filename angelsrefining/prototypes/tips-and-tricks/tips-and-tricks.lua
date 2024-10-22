require("prototypes.tips-and-tricks-functions")
require("prototypes.tips-and-tricks.1-ore-generation.1-ore-generation")
require("prototypes.tips-and-tricks.1-1-ore-refining.1-1-ore-refining")
require("prototypes.tips-and-tricks.1-1-1-crushing.1-1-1-crushing")
require("prototypes.tips-and-tricks.1-1-2-floatation.1-1-2-floatation")
require("prototypes.tips-and-tricks.1-1-3-leaching.1-1-3-leaching")
require("prototypes.tips-and-tricks.1-1-4-purification.1-1-4-purification")
require("prototypes.tips-and-tricks.1-2-ore-sorting.1-2-ore-sorting")
require("prototypes.tips-and-tricks.1-3-water-processing.1-3-water-processing")

-- modify base game tips-and-tricks to prevent crashes
if data.raw["tutorial"]["trains-stations"]["scenario"] == "trains-stations" then
  data:extend({
    {
      type = "tutorial",
      name = "angels-trains-stations",
      scenario = "angels-trains-stations",
    },
  })
  data.raw["tips-and-tricks-item"]["train-stops"]["tutorial"] = "angels-trains-stations"
end
