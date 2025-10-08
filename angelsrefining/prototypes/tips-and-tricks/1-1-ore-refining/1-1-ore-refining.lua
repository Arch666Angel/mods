data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-ore-refining",

    is_title = false,
    tag = "[item=angels-void]",
    localised_name = { "tips-and-tricks-name.angels-ore-refining" },
    localised_description = require("prototypes.tips-and-tricks.1-1-ore-refining.1-1-ore-refining-description"),

    category = "angels-ore-generation",
    order = "a[ore-refining]",
    indent = 1,

    starting_status = "dependencies-not-met",
    dependencies = nil,
    trigger = {
      type = "time-elapsed",
      ticks = 10 * 60,
    }, -- unlock together with the dependencies

    --simulation = require "prototypes.tips-and-tricks.1-ore-refining.1-ore-refining-simulation",
  },
})
