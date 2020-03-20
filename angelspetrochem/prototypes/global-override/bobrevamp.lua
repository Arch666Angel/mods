if bobmods then
  local OV = angelsmods.functions.OV

  if mods.bobrevamp then
    -- Move solid fuels arround
    local function create_solid_fuel_recipe_icon(fluid_name)
      local icon_layers = util.table.deepcopy(angelsmods.functions.get_object_icons(fluid_name))
      for layer_index, layer in pairs(icon_layers or {}) do
        layer.shift = layer.shift or {}
        layer.shift = {(layer.shift[1] or 0)/2-8, (layer.shift[2] or 0)/2+8}
        layer.scale = (layer.scale or 1)/2
      end
      return angelsmods.functions.add_icon_layer(angelsmods.functions.get_object_icons("solid-fuel"), icon_layers)
    end
    
    OV.remove_unlock("angels-oil-processing", "liquid-fuel")
    OV.remove_unlock("angels-oil-processing", "solid-fuel-from-hydrogen")
    OV.remove_unlock("angels-oil-processing", "solid-fuel-fuel-oil")
    OV.remove_unlock("angels-oil-processing", "solid-fuel-naphtha")
    OV.remove_unlock("gas-processing", "solid-fuel-methane")
    OV.add_unlock("flammables", "solid-fuel-from-hydrogen")
    data.raw.recipe["solid-fuel-from-hydrogen"].icons = create_solid_fuel_recipe_icon("gas-hydrogen")
    OV.add_unlock("flammables", "solid-fuel-naphtha")
    OV.add_unlock("flammables", "solid-fuel-fuel-oil")
    OV.add_unlock("flammables", "liquid-fuel")
    OV.add_unlock("angels-advanced-gas-processing", "solid-fuel-methane")
    OV.add_prereq("angels-advanced-gas-processing", "flammables")
    OV.add_prereq("angels-nitrogen-processing-3", "flammables")
    OV.add_prereq("chemical-processing-3", "flammables")
    OV.add_prereq("gas-synthesis", "flammables")
    OV.disable_technology({"solid-fuel"})
  end
end
