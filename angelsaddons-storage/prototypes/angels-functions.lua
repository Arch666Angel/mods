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

if not mods["angelsrefining"] then
  angelsmods.functions.OV = {}

  angelsmods.functions.OV.set_science_pack = function(technology, pack, amount)
    local tech = data.raw.technology[technology]
    local item = data.raw.item[pack]
    if tech and tech.unit and item then
      tech.unit.ingredients = tech.unit.ingredients or {}
      local found = false
      for _, ingredient in pairs(tech.unit.ingredients) do
        if ingredient[1] == pack then
          found = true
          break
        end
      end

      if not found then
        table.insert(tech.unit.ingredients, { pack, amount or 1 })
      end
    end
  end

  angelsmods.functions.OV.add_prereq = function(technology, prereq)
    local tech = data.raw.technology[technology]
    local prereq_tech = data.raw.technology[prereq]
    if tech and prereq_tech then
      tech.prerequisites = tech.prerequisites or {}
      local found = false
      for _, existing_prereq in pairs(tech.prerequisites) do
        if existing_prereq == prereq then
          found = true
          break
        end
      end

      if not found then
        table.insert(tech.prerequisites, prereq)
      end
    end
  end

  angelsmods.functions.OV.execute = function()
  end
end