data:extend(
  {
    {
      type = "bool-setting",
      name = "angels-enable-cab",
      setting_type = "startup",
      default_value = true,
      order = "a"
    },
    {
      type = "int-setting",
      name = "angels-crawlertrain-tier-amount",
      setting_type = "startup",
      default_value = 1,
      minimum_value = 0, --0 disables
      maximum_value = 5,
      order = "b[trains]-a"
    },
    {
      type = "int-setting",
      name = "angels-petrotrain-tier-amount",
      setting_type = "startup",
      default_value = 1,
      minimum_value = 0, --0 disables
      maximum_value = 5,
      order = "b[trains]-b"
    },
    {
      type = "int-setting",
      name = "angels-smeltingtrain-tier-amount",
      setting_type = "startup",
      default_value = 1,
      minimum_value = 0, --0 disables
      maximum_value = 5,
      order = "b[trains]-c"
    },
    {
      setting_type = "startup",
      name = "angels-cab-energy-transfer-rate-mk1",
      localised_name = {"mod-setting-name.angels-cab-energy-transfer-rate", {"equipment-name.angels-cab-energy-interface", "MK1"}},
      localised_description = {"mod-setting-description.angels-cab-energy-transfer-rate", "500 000"},
      type = "int-setting",
      minimum_value = 1,
      default_value = 500000, --500 kW
      order = "a[settings]-a[transfer-rate]-a[mk1]",
    },
    --[[{
      setting_type = "startup",
      name = "angels-cab-energy-transfer-rate-mk2",
      localised_name = {"mod-setting-name.angels-cab-energy-transfer-rate", {"equipment-name.angels-cab-energy-interface", "MK2"}},
      localised_description = {"mod-setting-description.angels-cab-energy-transfer-rate", "5 000 000"},
      type = "int-setting",
      minimum_value = 1,
      default_value = 5000000, --5 MW
      order = "a[settings]-a[transfer-rate]-b[mk2]",
    },]]
  }
)