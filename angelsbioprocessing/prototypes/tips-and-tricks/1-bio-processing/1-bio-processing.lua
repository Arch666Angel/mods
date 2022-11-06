data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angelsbioprocessing",
    order = "c-d[bioprocessing]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angelsbioprocessing",

    is_title = true,
    tag = "[item=token-bio]",
    localised_name = { "tips-and-tricks-name.angelsbioprocessing" },
    localised_description = require("prototypes.tips-and-tricks.1-bio-processing.1-bio-processing-description"),

    category = "angelsbioprocessing",
    order = "a-[bioprocessing]",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "time-elapsed",
      ticks = 10 * 60,
    },

    --simulation = require "prototypes.tips-and-tricks.1-bio-processing.1-bio-processing-simulation",
  },
})
