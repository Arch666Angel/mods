data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-vegetables-1a",

    is_title = false,
    tag = "[item=crop-farm]",
    localised_name = { "tips-and-tricks-name.bio-vegetables-1a" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-2-1-bio-vegetables-farming.1-2-1-bio-vegetables-farming-description"
    ),

    category = "angelsbioprocessing",
    order = "a-b[vegetables]-a[farming]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-farm-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-2-1-bio-vegetables-farming.1-2-1-bio-vegetables-farming-simulation",
  },
})
