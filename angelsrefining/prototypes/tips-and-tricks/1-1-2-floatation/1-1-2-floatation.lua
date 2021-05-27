data:extend(
  {
    {
      type = "tips-and-tricks-item",
      name = "angels-floatation",

      is_title = false,
      tag = "[item=ore-floatation-cell]",
      localised_name = {"tips-and-tricks-name.angels-floatation"},
      localised_description = require "prototypes.tips-and-tricks.1-1-2-floatation.1-1-2-floatation-description",
      
      category = "angels-ore-generation",
      order = "a[ore-refining]-b[floatation]",
      indent = 2,

      starting_status = "locked",
      dependencies = nil,
      trigger =
      {
        type = "research",
        technology = "ore-floatation"
      },

      --simulation = require "prototypes.tips-and-tricks.1-ore-refining.1-ore-refining-simulation",
    }
  }
)