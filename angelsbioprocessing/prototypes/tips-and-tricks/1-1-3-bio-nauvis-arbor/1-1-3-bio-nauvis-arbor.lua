data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-nauvis-1c",

    is_title = false,
    tag = "[item=angels-bio-arboretum-1]",
    localised_name = { "tips-and-tricks-name.angels-bio-nauvis-1c" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-1-3-bio-nauvis-arbor.1-1-3-bio-nauvis-arbor-description"
    ),

    category = "angels-bioprocessing",
    order = "a-a[nauvis]-c[arbor]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-bio-arboretum-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-3-bio-nauvis-arbor.1-1-3-bio-nauvis-arbor-simulation",
  },
})
