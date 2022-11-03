data:extend({
  {
    type = "tips-and-tricks-item",
    name = "bio-animals-1",

    is_title = false,
    tag = "[item=puffer-nest]",
    localised_name = { "tips-and-tricks-name.bio-animals-1" },
    localised_description = require("prototypes.tips-and-tricks.1-3-bio-animals.1-3-bio-animals-description"),

    category = "angelsbioprocessing",
    order = "a-c[animals]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "bio-refugium-fish-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-3-bio-animals.1-3-bio-animals-simulation",
  },
})
