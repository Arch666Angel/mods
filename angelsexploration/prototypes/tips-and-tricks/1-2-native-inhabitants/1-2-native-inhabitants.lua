data:extend({
  {
    type = "tips-and-tricks-item",
    name = "angels-native-inhabitants",

    is_title = false,
    tag = "[entity=small-biter]",
    localised_name = { "tips-and-tricks-name.angels-native-inhabitants" },
    localised_description = require("prototypes.tips-and-tricks.1-2-native-inhabitants.1-2-native-inhabitants-description"),

    category = "angelsexploration",
    order = "b[native-inhabitants]",
    indent = 1,

    starting_status = "dependencies-not-met", -- no additional trigger
    dependencies = { "angels-native-inhabitants" },
    --trigger =
    --{
    --  type = "research",
    --  technology = "ore-crushing"
    --},

    --simulation = require "prototypes.tips-and-tricks.1-ore-refining.1-ore-refining-simulation",
  },
})
