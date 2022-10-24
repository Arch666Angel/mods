data:extend({
  {
    type = "custom-input",
    name = "toggle-ghosting",
    key_sequence = "ALT + G",
    consuming = "game-only",
    action = "lua",
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
      flags = { "gui-icon" },
    },
    small_icon = {
      filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x24.png",
      priority = "extra-high-no-scale",
      size = 24,
      scale = 0.5,
      mipmap_count = 2,
      flags = { "gui-icon" },
    },
    disabled_icon = {
      filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x32.png",
      priority = "extra-high-no-scale",
      size = 32,
      scale = 0.5,
      mipmap_count = 2,
      flags = { "gui-icon" },
    },
    disabled_small_icon = {
      filename = "__angelsindustries__/graphics/icons/shortcut-toolbar/toggle-ghost-x24.png",
      priority = "extra-high-no-scale",
      size = 24,
      scale = 0.5,
      mipmap_count = 2,
      flags = { "gui-icon" },
    },
  },
  {
    type = "technology",
    name = "angels-hidden-ghosting",
    icon = "__angelsindustries__/graphics/technology/ghost.png",
    icon_size = 128,
    prerequisites = {},
    effects = {
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60 * 24 * 7,
      },
    },
    unit = {
      time = 1,
      ingredients = {},
      count = 1,
    },
    hidden = true,
  },
  {
    type = "technology",
    name = "angels-ghosting-angels-construction-robots",
    icon = "__angelsindustries__/graphics/technology/ghost.png",
    icon_size = 128,
    prerequisites = {
      angelsmods.industries.tech and "tech-specialised-labs-basic-logistic-1" or "engine",
    },
    unit = {
      count = 25,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-ghosting-construction-robots",
    localised_name = { "technology-name.angels-ghosting-angels-construction-robots" },
    localised_description = { "technology-description.angels-ghosting-angels-construction-robots" },
    icon = "__angelsindustries__/graphics/technology/ghost.png",
    icon_size = 128,
    prerequisites = {
      "robotics",
    },
    unit = {
      count = 25,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 30,
    },
  },
})
--update unlock techs for shortcuts
local unlocks = {
  "undo",
  "copy",
  "cut",
  "paste",
  "import-string",
  "give-blueprint",
  "give-blueprint-book",
  "give-deconstruction-planner",
  "give-upgrade-planner",
}
for _, i in pairs(unlocks) do
  local scut = data.raw.shortcut[i]
  scut.technology_to_unlock = "angels-hidden-ghosting"
end
