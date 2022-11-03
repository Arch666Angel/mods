local OV = angelsmods.functions.OV
-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobassembly"] then
  if data.raw["assembling-machine"]["chemical-plant-2"] then
    data.raw["assembling-machine"]["chemical-plant-2"].energy_usage = "300kW"
    data.raw["assembling-machine"]["chemical-plant-2"].crafting_speed = 2
    data.raw["assembling-machine"]["chemical-plant-2"].module_specification = { module_slots = 4 }
  end

  if data.raw["assembling-machine"]["chemical-plant-3"] then
    data.raw["assembling-machine"]["chemical-plant-3"].energy_usage = "390kW"
    data.raw["assembling-machine"]["chemical-plant-3"].crafting_speed = 2.75
    data.raw["assembling-machine"]["chemical-plant-3"].module_specification = { module_slots = 5 }
  end

  if data.raw["assembling-machine"]["chemical-plant-4"] then
    data.raw["assembling-machine"]["chemical-plant-4"].energy_usage = "480kW"
    data.raw["assembling-machine"]["chemical-plant-4"].crafting_speed = 3.5
    data.raw["assembling-machine"]["chemical-plant-4"].module_specification = { module_slots = 6 }
  end
  if not angelsmods.trigger.disable_bobs_chemical_plants then
    --add icon number overlays
    for i, plant in pairs({ "chemical-plant-2", "chemical-plant-3", "chemical-plant-4" }) do
      if data.raw["assembling-machine"][plant] then
        data.raw["item"][plant].icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons(plant),
          i + 1,
          angelsmods.petrochem.number_tint
        )
        data.raw["item"][plant].icon = nil
        data.raw["item"][plant].icon_size = nil
        data.raw["assembling-machine"][plant].icon = nil
        data.raw["assembling-machine"][plant].icon_size = nil
        data.raw["assembling-machine"][plant].icons = util.table.deepcopy(data.raw["item"][plant].icons)
        data.raw["assembling-machine"][plant].fast_replaceable_group = "chemical-plant"
      end
    end
  end
end

-------------------------------------------------------------------------------
-- OIL REFINERIES -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobassembly"] then
  if data.raw["assembling-machine"]["oil-refinery-2"] then
    data.raw["assembling-machine"]["oil-refinery-2"].energy_usage = "720kW"
    data.raw["assembling-machine"]["oil-refinery-2"].crafting_speed = 1.75
    data.raw["assembling-machine"]["oil-refinery-2"].module_specification = { module_slots = 3 }
  end

  if data.raw["assembling-machine"]["oil-refinery-3"] then
    data.raw["assembling-machine"]["oil-refinery-3"].energy_usage = "1MW"
    data.raw["assembling-machine"]["oil-refinery-3"].crafting_speed = 2.5
    data.raw["assembling-machine"]["oil-refinery-3"].module_specification = { module_slots = 4 }
  end

  if data.raw["assembling-machine"]["oil-refinery-4"] then
    data.raw["assembling-machine"]["oil-refinery-4"].energy_usage = "1.35MW"
    data.raw["assembling-machine"]["oil-refinery-4"].crafting_speed = 3.5
    data.raw["assembling-machine"]["oil-refinery-4"].module_specification = { module_slots = 5 }
  end
end
