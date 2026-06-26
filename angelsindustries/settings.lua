data:extend({
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
  {
    type = "string-setting",
    name = "angels-components-component-difficulty",
    setting_type = "startup",
    allowed_values = {
      "easy", -- twice the resulting intermediate components (= half the resource cost, double the speed)
      "normal", -- twice the resulting intermediate components, but twice as slow (= half the resource cost)
      "hard", -- base reference
    },
    default_value = "hard",
    order = "f-a",
  },
  {
    type = "string-setting",
    name = "angels-components-block-difficulty",
    setting_type = "startup",
    allowed_values = {
      "easy", -- twice the resulting intermediate components (= half the resource cost, double the speed)
      "normal", -- twice the resulting intermediate components, but twice as slow (= half the resource cost)
      "hard", -- base reference
    },
    default_value = "hard",
    order = "f-b",
  },
})
