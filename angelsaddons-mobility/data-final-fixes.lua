local funcs = require("prototypes.train-functions")
require("prototypes.tips-and-tricks.tips-and-tricks")

local wagons = {
  angelsmods.addons.mobility.petrotrain.tier_amount >= 1 and "petro-tank1" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 2 and "petro-tank1-2" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 3 and "petro-tank1-3" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 4 and "petro-tank1-4" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 5 and "petro-tank1-5" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 1 and "petro-tank2" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 2 and "petro-tank2-2" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 3 and "petro-tank2-3" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 4 and "petro-tank2-4" or nil,
  angelsmods.addons.mobility.petrotrain.tier_amount >= 5 and "petro-tank2-5" or nil,
  angelsmods.addons.mobility.smeltingtrain.tier_amount >= 1 and "smelting-wagon-1" or nil,
  angelsmods.addons.mobility.smeltingtrain.tier_amount >= 2 and "smelting-wagon-1-2" or nil,
  angelsmods.addons.mobility.smeltingtrain.tier_amount >= 3 and "smelting-wagon-1-3" or nil,
  angelsmods.addons.mobility.smeltingtrain.tier_amount >= 4 and "smelting-wagon-1-4" or nil,
  angelsmods.addons.mobility.smeltingtrain.tier_amount >= 5 and "smelting-wagon-1-5" or nil,
}

for _, prototype_type in pairs({
  "train-stop",
  "locomotive",
  "cargo-wagon",
}) do
  -- add wagon to other prototypes
  for _, prototype in pairs(data.raw[prototype_type]) do
    local additional_pastable_entities = prototype.additional_pastable_entities or {}
    for _, wagon_name in pairs(wagons) do
      table.insert(additional_pastable_entities, wagon_name)
    end
    prototype.additional_pastable_entities = additional_pastable_entities
  end
  --fluid wagon updates
  local wagon_prototypes = { data.raw["fluid-wagon"], data.raw["cargo-wagon"] }
  -- add other prototypes to the wagons
  for _, wagon_name in pairs(wagons) do
    for _, wagon_proto in pairs(wagon_prototypes) do
      if wagon_proto[wagon_name] then
        local additional_pastable_entities = wagon_proto[wagon_name].additional_pastable_entities or {}
        for prototype_name, _ in pairs(data.raw[prototype_type]) do
          table.insert(additional_pastable_entities, prototype_name)
        end
        wagon_proto[wagon_name].additional_pastable_entities = additional_pastable_entities
      end
    end
  end
end

funcs.add_speed_locale()
