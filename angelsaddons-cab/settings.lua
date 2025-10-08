data:extend({
  {
    setting_type = "startup",
    name = "angels-cab-energy-transfer-rate-mk1",
    localised_name = {
      "mod-setting-name.angels-cab-energy-transfer-rate",
      { "equipment-name.angels-cab-energy-interface", "MK1" },
    },
    localised_description = { "mod-setting-description.angels-cab-energy-transfer-rate", "500 000" },
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
})
