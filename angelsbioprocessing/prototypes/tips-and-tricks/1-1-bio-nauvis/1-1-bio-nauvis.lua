data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-nauvis-1",

    is_title = false,
    tag = "[item=token-bio]",
    localised_name = { "tips-and-tricks-name.bio-nauvis-1" },
    localised_description = require("prototypes.tips-and-tricks.1-1-bio-nauvis.1-1-bio-nauvis-description"),

    category = "angelsbioprocessing",
    order = "a-a[nauvis]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-processing-brown",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-bio-nauvis.1-1-bio-nauvis-simulation",
  },
})
