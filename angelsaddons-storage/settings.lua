data:extend({
  {
    type = "bool-setting",
    name = "angels-enable-oresilos",
    setting_type = "startup",
    default_value = mods["angelsrefining"] and true or false,
    order = "a-a",
  },
  {
    type = "bool-setting",
    name = "angels-enable-silos",
    setting_type = "startup",
    default_value = true,
    order = "a-b",
  },
  {
    type = "bool-setting",
    name = "angels-enable-warehouses",
    setting_type = "startup",
    default_value = true,
    order = "b",
  },
  {
    type = "bool-setting",
    name = "angels-enable-inline-tank",
    setting_type = "startup",
    default_value = true,
    order = "c-a",
  },
  {
    type = "bool-setting",
    name = "angels-enable-pressure-tank",
    setting_type = "startup",
    default_value = true,
    order = "c-b",
  },
  {
    type = "bool-setting",
    name = "angels-enable-storage-icon-scaling",
    setting_type = "startup",
    default_value = false,
    order = "d",
  },
})
