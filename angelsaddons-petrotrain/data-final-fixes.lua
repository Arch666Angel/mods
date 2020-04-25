local fluid_wagons = {
  angelsmods.addons.petrotrain.tier_amount >= 1 and "petro-tank1" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 2 and "petro-tank1-2" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 3 and "petro-tank1-3" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 4 and "petro-tank1-4" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 5 and "petro-tank1-5" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 1 and "petro-tank2" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 2 and "petro-tank2-2" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 3 and "petro-tank2-3" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 4 and "petro-tank2-4" or nil,
  angelsmods.addons.petrotrain.tier_amount >= 5 and "petro-tank2-5" or nil
}

for _, prototype_type in pairs {
  "train-stop",
  "locomotive",
  "cargo-wagon"
} do
  -- add wagon to other prototypes
  for _, prototype in pairs(data.raw[prototype_type]) do
    local additional_pastable_entities = prototype.additional_pastable_entities or {}
    for _, wagon_name in pairs(fluid_wagons) do
      table.insert(additional_pastable_entities, wagon_name)
    end
    prototype.additional_pastable_entities = additional_pastable_entities
  end

  local wagon_prototype = data.raw["fluid-wagon"]
  -- add other prototypes to the wagons
  for _, wagon_name in pairs(fluid_wagons) do
    local additional_pastable_entities = wagon_prototype[wagon_name].additional_pastable_entities or {}
    for prototype_name, _ in pairs(data.raw[prototype_type]) do
      table.insert(additional_pastable_entities, prototype_name)
    end
    wagon_prototype[wagon_name].additional_pastable_entities = additional_pastable_entities
  end
end
