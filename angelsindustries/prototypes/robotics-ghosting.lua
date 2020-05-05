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
      order = "c[toggles]-c[ghosting]",
      action = "lua",
      toggleable = true,
      associated_control_input = "toggle-ghosting",
      technology_to_unlock = "angels-hidden-ghosting",
      icon = {
        filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x32.png",
        priority = "extra-high-no-scale",
        size = 32,
        scale = 0.5,
        mipmap_count = 2,
        flags = {"gui-icon"}
      },
      small_icon = {
        filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x24.png",
        priority = "extra-high-no-scale",
        size = 24,
        scale = 0.5,
        mipmap_count = 2,
        flags = {"gui-icon"}
      },
      disabled_icon = {
        filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x32.png",
        priority = "extra-high-no-scale",
        size = 32,
        scale = 0.5,
        mipmap_count = 2,
        flags = {"gui-icon"}
      },
      disabled_small_icon = {
        filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x24.png",
        priority = "extra-high-no-scale",
        size = 24,
        scale = 0.5,
        mipmap_count = 2,
        flags = {"gui-icon"}
      }
    },
    {
      type = "technology",
      name = "angels-hidden-ghosting",
      icon = "__angelsindustries__/graphics/technology/ghost.png",
      icon_size = 64,
      prerequisites = {},
      effects = {
        {
          type = "ghost-time-to-live",
          modifier = 60 * 60 * 60 * 24 * 7
        }
      },
      unit = {
        time = 1,
        ingredients = {},
        count = 1
      },
      disabled = true,
      hidden = true
    },
    {
      type = "technology",
      name = "angels-ghosting-angels-construction-robots",
      icon = "__angelsindustries__/graphics/technology/ghost.png",
      icon_size = 64,
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
      localised_name = {"technology-name.angels-ghosting-angels-construction-robots"},
      localised_description = {"technology-description.angels-ghosting-angels-construction-robots"},
      icon = "__angelsindustries__/graphics/technology/ghost.png",
      icon_size = 64,
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
