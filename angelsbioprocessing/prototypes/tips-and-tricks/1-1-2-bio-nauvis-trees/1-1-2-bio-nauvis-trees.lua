data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-nauvis-1b",

    is_title = false,
    tag = "[item=bio-generator-swamp-1]",
    localised_name = { "tips-and-tricks-name.bio-nauvis-1b" },
    localised_description = require("prototypes.tips-and-tricks.1-1-2-bio-nauvis-trees.1-1-2-bio-nauvis-trees-description"),

    category = "angelsbioprocessing",
    order = "a-a[nauvis]-b[trees]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-arboretum-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-2-bio-nauvis-trees.1-1-2-bio-nauvis-trees-simulation",
  },
})
