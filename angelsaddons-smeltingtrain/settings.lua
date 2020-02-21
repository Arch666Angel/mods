data:extend(
  {
    {
      type = "bool-setting",
      name = "angels-smeltingtrain-tier-enable",
      setting_type = "startup",
      default_value = false,
      order = "a"
    },
    {
      type = "int-setting",
      name = "angels-smeltingtrain-tier-amount",
      setting_type = "startup",
      default_value = 1,
      minimum_value = 1,
      maximum_value = 5,
      order = "b"
    }
  }
)
