require("prototypes.tips-and-tricks.1-1-1-crushing.1-1-1-crushing-simulation-prototypes")

data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-crushing",

    is_title = false,
    tag = "[item=ore-crusher]",
    localised_name = { "tips-and-tricks-name.angels-crushing" },
    localised_description = require("prototypes.tips-and-tricks.1-1-1-crushing.1-1-1-crushing-description"),

    category = "angels-ore-generation",
    order = "a[ore-refining]-a[crushing]",
    indent = 2,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "or",
      triggers = {
        {
          type = "build-entity",
          entity = "burner-ore-crusher",
          count = 1,
        },
        {
          type = "build-entity",
          entity = "ore-crusher",
          count = 1,
        },
        {
          type = "build-entity",
          entity = "ore-crusher-2",
          count = 1,
        },
        {
          type = "build-entity",
          entity = "ore-crusher-3",
          count = 1,
        },
      },
    },

    simulation = {
      init_file = "__angelsrefining__/prototypes/tips-and-tricks/1-1-1-crushing/1-1-1-crushing-simulation-init.lua",
    },
  },
})
