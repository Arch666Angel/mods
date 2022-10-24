data:extend({
  {
    type = "int-setting",
    name = "angels-infinite-yield",
    setting_type = "startup",
    default_value = 20,
    minimum_value = 1,
    maximum_value = 100,
    order = "a",
  },
  {
    type = "double-setting",
    name = "angels-lower-infinite-yield",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0.1,
    maximum_value = 1,
    order = "c",
  },
  {
    type = "bool-setting",
    name = "angels-enablefluidreq",
    setting_type = "startup",
    default_value = true,
    order = "d",
  },
  {
    type = "bool-setting",
    name = "angels-keepuranacid",
    setting_type = "startup",
    default_value = true,
    order = "d",
  },
})
