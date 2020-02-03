local __DebugAdapter = mods["debugadapter"] and require("__debugadapter__/debugadapter.lua")

data:extend(
{
  {
    type = "bool-setting",
    name = "angels-enable-industries",
    setting_type = "startup",
    default_value = false,
    order = "a",
  },
  {
    type = "bool-setting",
    name = "angels-enable-tech",
    setting_type = "startup",
    default_value = false,
    order = "b",
  },
  {
    type = "bool-setting",
    name = "angels-enable-components",
    setting_type = "startup",
    default_value = false,
    order = "c",
  },
}
)
