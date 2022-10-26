data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "angelsaddons-storage",
    order = "c-ac[addons-storage]",
  },

  {
    type = "tips-and-tricks-item",
    name = "angelsaddons-storage",

    is_title = true,
    tag = "[item=angels-warehouse]",
    localised_name = { "tips-and-tricks-name.angelsaddons-storage" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-angelsaddons-storage.1-angelsaddons-storage-description"
    ),

    category = "angelsaddons-storage",
    order = "aa-[storage]",
    indent = 0,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "steel-processing",
    },

    --simulation = require "prototypes.tips-and-tricks.1-angelsaddons-storage.1-angelsaddons-storage-simulation",
  },
})
