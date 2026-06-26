data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-animals-1",

    is_title = false,
    tag = "[entity=angels-puffer-nest]",
    localised_name = { "tips-and-tricks-name.angels-bio-animals-1" },
    localised_description = require("prototypes.tips-and-tricks.1-3-bio-animals.1-3-bio-animals-description"),

    category = "angels-bioprocessing",
    order = "a-c[animals]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-bio-refugium-fish-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-3-bio-animals.1-3-bio-animals-simulation",
  },
})
