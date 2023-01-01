data:extend({
  {
    type = "bool-setting",
    name = "angels-enable-industries",
    setting_type = "startup",
    default_value = false,
    order = "a",
  },
  {
    type = "bool-setting",
    name = "angels-enable-components",
    setting_type = "startup",
    default_value = false,
    order = "b",
  },
  {
    type = "bool-setting",
    name = "angels-enable-tech",
    setting_type = "startup",
    default_value = false,
    order = "c",
  },
  {
    type = "bool-setting",
    name = "angels-return-ingredients",
    setting_type = "startup",
    default_value = true,
    order = "d",
  },
  {
    type = "int-setting",
    name = "angels-components-stack-size",
    setting_type = "startup",
    default_value = 1000,
    minimum_value = 200,
    maximum_value = 10000,
    order = "e",
  },
})
