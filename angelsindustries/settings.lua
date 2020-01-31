local __DebugAdapter = mods["debugadapter"] and require("__debugadapter__/debugadapter.lua")

data:extend(
  {
    {
      type = "bool-setting",
      name = "angels-industries-enable-overhaul",
      setting_type = "startup",
      default_value = false,
      order = "a"
    },
    {
      type = "bool-setting",
      name = "angels-industries-enable-tech",
      setting_type = "startup",
      default_value = false,
      order = "b"
    },
    {
      type = "bool-setting",
      name = "angels-industries-enable-components",
      setting_type = "startup",
      default_value = false,
      order = "b"
    }
  }
)
