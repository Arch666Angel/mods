data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-vegetables-1b",

    is_title = false,
    tag = "[item=angels-bio-processor]",
    localised_name = { "tips-and-tricks-name.angels-bio-vegetables-1b" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-2-2-bio-vegetables-crops.1-2-2-bio-vegetables-crops-description"
    ),

    category = "angels-bioprocessing",
    order = "a-b[vegetables]-b[crops]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-bio-farm-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-2-2-bio-vegetables-crops.1-2-2-bio-vegetables-crops-simulation",
  },
})
