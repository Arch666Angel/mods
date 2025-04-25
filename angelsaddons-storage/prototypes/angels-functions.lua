-------------------------------------------------------------------------------
-- SET ELEVATED RAIL COLLISION FOR BUILDINGS --------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.set_building_collision_mask(b_type, layers_to_add)
  -- Function can also be used for adding other collision layers

  if b_type == "asm" then
    b_type = "assembling-machine"
  end

  local mask_util = require("__core__/lualib/collision-mask-util")

  -- Default layers for buildings that elevated rails can pass over freely
  local collision_mask = mask_util.get_default_mask(b_type)

  -- Add elevated rail collision layer (and any other layers if applicable)
  for _, layer in pairs(layers_to_add) do
    collision_mask.layers[layer] = true
  end

  return collision_mask
end
