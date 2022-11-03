data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angels-ore-generation",
    order = "c-a[ore-generation]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angels-ore-generation",

    is_title = true,
    tag = "[item=angels-void]",
    localised_name = { "tips-and-tricks-name.angels-ore-generation" },
    localised_description = require("prototypes.tips-and-tricks.1-ore-generation.1-ore-generation-description"),

    category = "angels-ore-generation",
    order = "a",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "time-elapsed",
      ticks = 10 * 60,
    },

    --simulation = require "prototypes.tips-and-tricks.1-ore-generation.1-ore-generation-simulation",
  },
})
