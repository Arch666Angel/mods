data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-ore-sorting",

    is_title = false,
    tag = "[item=ore-sorting-facility]",
    localised_name = { "tips-and-tricks-name.angels-ore-sorting" },
    localised_description = require("prototypes.tips-and-tricks.1-2-ore-sorting.1-2-ore-sorting-description"),

    category = "angels-ore-generation",
    order = "b[ore-sorting]",
    indent = 1,

    starting_status = "dependencies-not-met",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "ore-crushing",
    },

    --simulation = require "prototypes.tips-and-tricks.1-ore-refining.1-ore-refining-simulation",
  },
})
