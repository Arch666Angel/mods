data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-nauvis-1a",

    is_title = false,
    tag = "[item=algae-farm]",
    localised_name = { "tips-and-tricks-name.bio-nauvis-1a" },
    localised_description = require("prototypes.tips-and-tricks.1-1-1-bio-nauvis-algae.1-1-1-bio-nauvis-algae-description"),

    category = "angelsbioprocessing",
    order = "a-a[nauvis]-a[algae]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-processing-brown",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-bio-nauvis.1-1-bio-nauvis-simulation",
  },
})
