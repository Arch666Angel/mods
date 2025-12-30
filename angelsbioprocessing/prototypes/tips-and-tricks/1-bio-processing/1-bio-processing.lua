data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angels-bioprocessing",
    order = "c-d[bioprocessing]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angels-bioprocessing",

    is_title = true,
    tag = "[item=angels-token-bio]",
    localised_name = { "tips-and-tricks-name.angels-bioprocessing" },
    localised_description = require("prototypes.tips-and-tricks.1-bio-processing.1-bio-processing-description"),

    category = "angels-bioprocessing",
    order = "a-[bioprocessing]",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger =
    {
      type = "research",
      technology = "angels-bio-processing-brown"
    },

    --simulation = require "prototypes.tips-and-tricks.1-bio-processing.1-bio-processing-simulation",
  },
})
