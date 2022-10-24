data:extend({
  {
    -- create shred spawnpoint
    type = "bool-setting",
    name = "deco-shred-create-spawn-logo",
    setting_type = "startup",
    default_value = false,
    order = "shred-a[deco]-a",
  },

  {
    -- create technology to unlock decorations
    type = "bool-setting",
    name = "deco-shred-create-tech",
    setting_type = "startup",
    default_value = true,
    order = "shred-a[deco]-b",
  },

  {
    -- create technology to unlock decorations
    type = "bool-setting",
    name = "deco-shred-create-shrine-offer",
    setting_type = "startup",
    default_value = true,
    order = "shred-a[deco]-c",
  },
})
