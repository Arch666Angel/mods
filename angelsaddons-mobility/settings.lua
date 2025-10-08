data:extend({
  {
    type = "int-setting",
    name = "angels-crawlertrain-tier-amount",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0, --0 disables
    maximum_value = 5,
    order = "a[trains]-a",
  },
  {
    type = "int-setting",
    name = "angels-petrotrain-tier-amount",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0, --0 disables
    maximum_value = 5,
    order = "a[trains]-b",
  },
  {
    type = "int-setting",
    name = "angels-smeltingtrain-tier-amount",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0, --0 disables
    maximum_value = 5,
    order = "a[trains]-c",
  },
})
