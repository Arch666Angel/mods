data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-nauvis-1a",

    is_title = false,
    tag = "[item=angels-algae-farm]",
    localised_name = { "tips-and-tricks-name.angels-bio-nauvis-1a" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-1-1-bio-nauvis-algae.1-1-1-bio-nauvis-algae-description"
    ),

    category = "angels-bioprocessing",
    order = "a-a[nauvis]-a[algae]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-bio-processing-brown",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-bio-nauvis.1-1-bio-nauvis-simulation",
  },
})
