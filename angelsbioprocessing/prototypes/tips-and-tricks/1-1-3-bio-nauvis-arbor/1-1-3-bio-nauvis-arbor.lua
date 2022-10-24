data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-nauvis-1c",

    is_title = false,
    tag = "[item=bio-arboretum-1]",
    localised_name = { "tips-and-tricks-name.bio-nauvis-1c" },
    localised_description = require("prototypes.tips-and-tricks.1-1-3-bio-nauvis-arbor.1-1-3-bio-nauvis-arbor-description"),

    category = "angelsbioprocessing",
    order = "a-a[nauvis]-c[arbor]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-arboretum-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-3-bio-nauvis-arbor.1-1-3-bio-nauvis-arbor-simulation",
  },
})
