data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angels-petrochem",
    order = "c-b[petrochem]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angels-petrochem",

    is_title = true,
    tag = "[item=angels-void]",
    localised_name = { "tips-and-tricks-name.angels-petrochem" },
    localised_description = require("prototypes.tips-and-tricks.1-petrochem.1-petrochem-description"),

    category = "angels-petrochem",
    order = "b",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-basic-chemistry",
    },

    --simulation = require "prototypes.tips-and-tricks.1-petrochem.1-petrochem-simulation",
  },
})
