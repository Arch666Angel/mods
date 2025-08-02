data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-nauvis-1",

    is_title = false,
    tag = "[item=angels-token-bio]",
    localised_name = { "tips-and-tricks-name.angels-bio-nauvis-1" },
    localised_description = require("prototypes.tips-and-tricks.1-1-bio-nauvis.1-1-bio-nauvis-description"),

    category = "angels-bioprocessing",
    order = "a-a[nauvis]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-bio-processing-brown",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-bio-nauvis.1-1-bio-nauvis-simulation",
  },
})
