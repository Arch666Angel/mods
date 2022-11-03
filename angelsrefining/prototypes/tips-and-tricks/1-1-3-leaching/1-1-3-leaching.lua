require("prototypes.tips-and-tricks.1-1-3-leaching.1-1-3-leaching-simulation-prototypes")

data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-leaching",

    is_title = false,
    tag = "[item=ore-leaching-plant]",
    localised_name = { "tips-and-tricks-name.angels-leaching" },
    localised_description = require("prototypes.tips-and-tricks.1-1-3-leaching.1-1-3-leaching-description"),

    category = "angels-ore-generation",
    order = "a[ore-refining]-c[leaching]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "ore-leaching",
    },

    simulation = {
      init_file = "__angelsrefining__/prototypes/tips-and-tricks/1-1-3-leaching/1-1-3-leaching-simulation-init.lua",
    },
  },
})
