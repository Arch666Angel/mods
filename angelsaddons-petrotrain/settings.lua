data:extend(
  {
    {
      type = "bool-setting",
      name = "angels-petrotrain-tier-enable",
      setting_type = "startup",
      default_value = false,
      order = "a"
    },
    {
      type = "int-setting",
      name = "angels-petrotrain-tier-amount",
      setting_type = "startup",
      default_value = 1,
      minimum_value = 1,
      maximum_value = 5,
      order = "b"
    }
  }
)
