data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-bio-nauvis-1b",

    is_title = false,
    tag = "[item=angels-bio-generator-swamp-1]",
    localised_name = { "tips-and-tricks-name.angels-bio-nauvis-1b" },
    localised_description = require(
      "prototypes.tips-and-tricks.1-1-2-bio-nauvis-trees.1-1-2-bio-nauvis-trees-description"
    ),

    category = "angels-bioprocessing",
    order = "a-a[nauvis]-b[trees]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-bio-arboretum-1",
    },

    --simulation = require "prototypes.tips-and-tricks.1-1-2-bio-nauvis-trees.1-1-2-bio-nauvis-trees-simulation",
  },
})
