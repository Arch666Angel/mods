data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-vegetables-1b",

    is_title = false,
    tag = "[item=bio-processor]",
    localised_name = { "tips-and-tricks-name.bio-vegetables-1b" },
    localised_description = require("prototypes.tips-and-tricks.1-2-2-bio-vegetables-crops.1-2-2-bio-vegetables-crops-description"),

    category = "angelsbioprocessing",
    order = "a-b[vegetables]-b[crops]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-farm-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-2-2-bio-vegetables-crops.1-2-2-bio-vegetables-crops-simulation",
  },
})
