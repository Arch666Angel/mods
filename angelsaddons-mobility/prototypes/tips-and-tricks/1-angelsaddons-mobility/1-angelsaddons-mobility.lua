data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angelsaddons-mobility",
    order = "c-ab[addons-mobility]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angelsaddons-mobility",

    is_title = true,
    tag = "[entity=crawler-locomotive-wagon]",
    localised_name = { "tips-and-tricks-name.angelsaddons-mobility" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-angelsaddons-mobility.1-angelsaddons-mobility-description"
    ),

    category = "angelsaddons-mobility",
    order = "aa-[mobility]",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "railway",
    },

    --simulation = require "prototypes.tips-and-tricks.1-angelsaddons-mobility.1-angelsaddons-mobility-simulation",
  },
})
