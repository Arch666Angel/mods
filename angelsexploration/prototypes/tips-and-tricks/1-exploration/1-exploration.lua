data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angelsexploration",
    order = "c-f[exploration]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angelsexploration",

    is_title = true,
    tag = "[item=angels-heavy-tank]",
    localised_name = { "tips-and-tricks-name.angelsexploration" },
    localised_description = require("prototypes.tips-and-tricks.1-exploration.1-exploration-description"),

    category = "angelsexploration",
    order = "a-[exploration]",
    indent = 0,

    starting_status = "locked",
    -- TODO huh? dependencies = { "introduction" },
    trigger = {
      type = "or",
      triggers = {
        {
          type = "group-attack",
        },
        {
          type = "time-elapsed",
          ticks = 60 * 60 * 135, -- 135 minutes
        },
      },
    },

    --simulation = require "prototypes.tips-and-tricks.1-bio-processing.1-bio-processing-simulation",
  },
})
