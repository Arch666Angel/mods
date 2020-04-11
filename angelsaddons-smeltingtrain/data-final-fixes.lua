local cargo_wagons = {
  angelsmods.addons.smeltingtrain.tier_amount >= 1 and "smelting-wagon-1" or nil,
  angelsmods.addons.smeltingtrain.tier_amount >= 2 and "smelting-wagon-1-2" or nil,
  angelsmods.addons.smeltingtrain.tier_amount >= 3 and "smelting-wagon-1-3" or nil,
  angelsmods.addons.smeltingtrain.tier_amount >= 4 and "smelting-wagon-1-4" or nil,
  angelsmods.addons.smeltingtrain.tier_amount >= 5 and "smelting-wagon-1-5" or nil
}

for _, prototype_type in pairs {
  "train-stop",
  "locomotive",
  "fluid-wagon"
} do
  -- add wagon to other prototypes
  for _, prototype in pairs(data.raw[prototype_type]) do
    local additional_pastable_entities = prototype.additional_pastable_entities or {}
    for _, wagon_name in pairs(cargo_wagons) do
      table.insert(additional_pastable_entities, wagon_name)
    end
    prototype.additional_pastable_entities = additional_pastable_entities
  end

  -- add other prototypes to the wagons
  local wagon_protoype = data.raw["cargo-wagon"]
  for _, wagon_name in pairs(cargo_wagons) do
    local additional_pastable_entities = wagon_protoype[wagon_name].additional_pastable_entities or {}
    for prototype_name, _ in pairs(data.raw[prototype_type]) do
      table.insert(additional_pastable_entities, prototype_name)
    end
    wagon_protoype[wagon_name].additional_pastable_entities = additional_pastable_entities
  end
end
