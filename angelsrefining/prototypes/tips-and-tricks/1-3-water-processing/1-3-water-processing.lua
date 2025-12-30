data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-water-processing",

    is_title = false,
    tag = "[item=angels-hydro-plant]",
    localised_name = { "tips-and-tricks-name.angels-water-processing" },
    localised_description = require("prototypes.tips-and-tricks.1-3-water-processing.1-3-water-processing-description"),

    category = "angels-ore-generation",
    order = "c[water-processing]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-water-treatment",
    },

    --simulation = require "prototypes.tips-and-tricks.1-3-water-processing.1-3-water-processing-simulation",
  },
})
