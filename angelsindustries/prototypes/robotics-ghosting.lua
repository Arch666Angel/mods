data:extend(
  {
    {
      type = "custom-input",
      name = "toggle-ghosting",
      key_sequence = "ALT + G",
      consuming = "none",
      action = "lua"
    },
    {
      type = "shortcut",
      name = "toggle-ghosting",
      localised_name = {"shortcut.toggle-ghosting"},
      order = "c[toggles]-c[ghosting]",
      action = "toggle-ghosting",
      associated_control_input = "toggle-ghosting",
      technology_to_unlock = "angels-hidden-ghosting",
      toggleable = true
    },
    {
      type = "technology",
      name = "angels-hidden-ghosting",
      prerequisites = {},
      effects = {
        {
          type = "ghost-time-to-live",
          modifier = 60 * 60 * 60 * 24 * 7
        }
      },
      hidden = true
    },
    {
      type = "technology",
      name = "angels-ghosting-angels-construction-robots",
      prerequisites = {
        "engine"
      },
      unit = {
        count = 25,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "angels-ghosting-construction-robots",
      localised_name = {"technology.angels-ghosting-angels-construction-robots"},
      prerequisites = {
        "robotics"
      },
      unit = {
        count = 25,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    }
  }
)
