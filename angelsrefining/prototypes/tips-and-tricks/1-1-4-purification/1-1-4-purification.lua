require("prototypes.tips-and-tricks.1-1-4-purification.1-1-4-purification-simulation-prototypes")

data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-purification",

    is_title = false,
    tag = "[item=angels-ore-refinery]",
    localised_name = { "tips-and-tricks-name.angels-purification" },
    localised_description = require("prototypes.tips-and-tricks.1-1-4-purification.1-1-4-purification-description"),

    category = "angels-ore-generation",
    order = "a[ore-refining]-d[purification]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-ore-refining",
    },

    simulation = {
      init_file = "__angelsrefining__/prototypes/tips-and-tricks/1-1-4-purification/1-1-4-purification-simulation-init.lua",
    },
  },
})
