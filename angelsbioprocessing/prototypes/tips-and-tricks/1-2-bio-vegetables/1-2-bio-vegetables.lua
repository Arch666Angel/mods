data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-vegetables-1",

    is_title = false,
    tag = "[item=token-bio]",
    localised_name = { "tips-and-tricks-name.bio-vegetables-1" },
    localised_description = require("prototypes.tips-and-tricks.1-2-bio-vegetables.1-2-bio-vegetables-description"),

    category = "angelsbioprocessing",
    order = "a-b[vegetables]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "gardens",
    },

    --simulation = require "prototypes.tips-and-tricks.1-2-bio-vegetables.1-2-bio-vegetables-simulation",
  },
})
