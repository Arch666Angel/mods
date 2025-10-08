data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-vegetables-1",

    is_title = false,
    tag = "[item=angels-token-bio]",
    localised_name = { "tips-and-tricks-name.angels-bio-vegetables-1" },
    localised_description = require("prototypes.tips-and-tricks.1-2-bio-vegetables.1-2-bio-vegetables-description"),

    category = "angels-bioprocessing",
    order = "a-b[vegetables]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-gardens",
    },

    --simulation = require "prototypes.tips-and-tricks.1-2-bio-vegetables.1-2-bio-vegetables-simulation",
  },
})
