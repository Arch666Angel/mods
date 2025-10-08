data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angelsaddons-cab",
    order = "c-aa[angesaddons-cab]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angelsaddons-cab",

    is_title = true,
    tag = "[entity=angels-cab]",
    localised_name = { "tips-and-tricks-name.angelsaddons-cab" },
    localised_description = require("prototypes.tips-and-tricks.1-angelsaddons-cab.1-angelsaddons-cab-description"),

    category = "angelsaddons-cab",
    order = "aa-[cab]",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-cab",
    },

    --simulation = require "prototypes.tips-and-tricks.1-angelsaddons-cab.1-angelsaddons-cab-simulation",
  },
})
