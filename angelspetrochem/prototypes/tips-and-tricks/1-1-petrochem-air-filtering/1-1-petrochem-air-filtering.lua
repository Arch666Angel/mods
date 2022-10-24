--require "prototypes.tips-and-tricks.1-1-3-petrochem-air-filtering.1-1-petrochem-air-filtering-simulation-prototypes"

data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-air-filtering",

    is_title = false,
    tag = "[item=angels-air-filter]",
    localised_name = { "tips-and-tricks-name.angels-air-filtering" },
    localised_description = require("prototypes.tips-and-tricks.1-1-petrochem-air-filtering.1-1-petrochem-air-filtering-description"),

    category = "angels-petrochem",
    order = "b[petrochem]-a[air-filtering]",
    indent = 1,

    starting_status = "locked",
    dependencies = nil,
    trigger = {
      type = "research",
      technology = "angels-nitrogen-processing-1",
    },

    --[[simulation =
      {
        init_file = "__angelsrefining__/prototypes/tips-and-tricks/1-1-petrochem-air-filtering/1-1-petrochem-air-filtering-simulation-init.lua"
      },]]
  },
})
