--GET ICON/ICONS FROM FLUID/ITEM
local function get_icons(object_name)
  for _, prototype in pairs({"item", "fluid"}) do
    local object = data.raw[prototype][object_name]
    if object then
      if object.icon then
        local scale = 32 / (object.icon_size or 32)
        return {
          {
            icon = object.icon,
            icon_size = object.icon_size or 32,
            scale = scale ~= 1 and scale or nil
          }
        }
      end
      if object.icons then
        return object.icons
      end
    end
  end
  --something is wrong here but we need to return something
  return "__angelsrefining__/graphics/icons/void.png"
end
angelsmods.functions.get_object_icons = get_icons

function angelsmods.functions.add_icon_layer(icon_layers, layers_to_add)
  local icon_layers = util.table.deepcopy(icon_layers)

  if layers_to_add[1] then
    for _, layer_to_add in pairs(layers_to_add) do
      table.insert(icon_layers, layer_to_add)
    end
  else
    table.insert(icon_layers, layers_to_add)
  end

  return icon_layers
end

local function unify_tint(tint)
  -- allows tints to be defined as {255, 255, 255, 255}
  -- meaing doesn't need keys rgba (but assumes that order)
  -- doesn't need to be in range 0..1, but up to 255 as well
  if tint then
    local unified_tint = {}

    unified_tint.r = tint.r or tint[1] or 0
    unified_tint.g = tint.g or tint[2] or 0
    unified_tint.b = tint.b or tint[3] or 0

    if unified_tint.r > 1 or unified_tint.g > 1 or unified_tint.b > 1 then
      unified_tint.r = (unified_tint.r <= 255 and unified_tint.r or 255) / 255
      unified_tint.g = (unified_tint.g <= 255 and unified_tint.g or 255) / 255
      unified_tint.b = (unified_tint.b <= 255 and unified_tint.b or 255) / 255
    end

    unified_tint.a = tint.a or tint[4] or 1
    unified_tint.a = unified_tint.a > 1 and unified_tint.a / 255 or unified_tint.a

    return unified_tint
  else
    return nil
  end
end

local function clean_table(t)
  -- removes nil values from a table so it becomes a table without holes
  if type(t) ~= "table" then
    return t
  end
  local i = 0
  for k, v in pairs(t or {}) do
    i = i + 1
    t[k] = nil
    t[i] = v
  end
  return t
end

local icon_tint_table = {
  c = {{044, 044, 044}, {140, 000, 000}, {140, 000, 000}}, -- Carbon
  k = {{069, 069, 069}, {054, 054, 054}, {036, 036, 036}}, -- Coal/Oil
  h = {{255, 255, 255}, {243, 243, 243}, {242, 242, 242}}, -- Hydrogen
  o = {{249, 013, 013}, {214, 012, 012}, {198, 011, 011}}, -- Oxygen
  d = {{224, 244, 202}, {206, 206, 173}, {196, 196, 156}}, -- Deuterium
  n = {{045, 075, 180}, {045, 076, 175}, {038, 063, 150}}, -- Nitrogen
  l = {{031, 229, 031}, {057, 211, 040}, {075, 195, 045}}, -- Chlorine
  s = {{225, 210, 000}, {216, 196, 017}, {210, 187, 030}}, -- Sulfur
  a = {{105, 135, 090}, {096, 122, 082}, {088, 113, 075}}, -- Natural Gas
  f = {{181, 208, 000}, {181, 208, 000}, {181, 208, 000}}, -- Fluoride
  i = {{142, 148, 148}, {142, 148, 148}, {142, 148, 148}}, -- Silicon
  t = {{135, 090, 023}, {nil, nil, nil}, {nil, nil, nil}}, -- Tungsten
  w = {{094, 114, 174}, {088, 104, 163}, {088, 101, 155}} -- Water/Steam
  --m = { r = 041, g = 041, b = 180 }, -- Complex
  --s = { r = 115, g = 063, b = 163 }, -- Sodium
  --p = { r = 244, g = 125, b = 001 }, -- Phosphorus
  --y = { r = 255, g = 105, b = 180 }, -- Syngas
}

-- CREATE GAS FLUID ICONS (NOT FOR RECIPES)
function angelsmods.functions.create_gas_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 32)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 32
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 32
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefining__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or {-10, -10}
    molecule_icon.scale = molecule_icon.scale or molecule_icon[4] or 15 / molecule_icon.icon_size

    molecule_icon[1] = nil
    molecule_icon[2] = nil
    molecule_icon[3] = nil
    molecule_icon[4] = nil
  else
    molecule_icon = nil
  end

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- allows a string of max 3 characters for default tints
  if tints then
    if type(tints) ~= "table" then
      tints = {
        top = unify_tint((icon_tint_table[string.sub(tints, 1, 1)] or {})[1]),
        mid = unify_tint((icon_tint_table[string.sub(tints, 2, 2)] or {})[2]),
        bot = unify_tint((icon_tint_table[string.sub(tints, 3, 3)] or {})[3])
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  return {
    {
      -- base layer required for background shadow
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-item-base.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7},
      shift = (not molecule_icon) and {-3.5, 0} or nil
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-item-top.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.top,
      shift = (not molecule_icon) and {-3.5, 0} or nil
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-item-mid.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.mid,
      shift = (not molecule_icon) and {-3.5, 0} or nil
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-item-bot.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.bot,
      shift = (not molecule_icon) and {-3.5, 0} or nil
    },
    molecule_icon
  }
end

-- CREATE GAS RECIPE ICONS (NOT FOR FLUIDS)
function angelsmods.functions.create_gas_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 32) or be a table with size defined
  bot_molecules_icon = clean_table(bot_molecules_icon) or {}
  for molecule_index, molecule_icon in pairs(bot_molecules_icon) do
    if type(molecule_icon) ~= "table" and get_icons(molecule_icon) ~= "__angelsrefining__/graphics/icons/void.png" then
      bot_molecules_icon[molecule_index] = util.table.deepcopy(get_icons(molecule_icon))
    end
  end

  for molecule_index, molecule_icon in pairs(bot_molecules_icon) do
    if type(molecule_icon) ~= "table" then
      bot_molecules_icon[molecule_index] = {
        {
          icon = molecule_icon,
          icon_size = 32
        }
      }
    elseif type(molecule_icon[1]) ~= "table" then
      local mi = util.table.deepcopy(molecule_icon)
      bot_molecules_icon[molecule_index] = {
        {
          icon = mi.icon or mi[1] or nil,
          shift = mi.shift or mi[3] or nil,
          scale = mi.scale or mi[4] or nil,
          tint = mi.tint or mi[5] or nil
        }
      }
      if bot_molecules_icon[molecule_index][1].icon then
        bot_molecules_icon[molecule_index][1].icon_size = mi.icon_size or mi[2] or 32
        if bot_molecules_icon[molecule_index][1].icon_size ~= 32 then
          bot_molecules_icon[molecule_index][1].scale =
            (bot_molecules_icon[molecule_index][1].scale or 1) * 32 / bot_molecules_icon[molecule_index][1].icon_size
        end
      else
        --something is wrong here but we need to return something
        bot_molecules_icon[molecule_index] = {
          {
            icon = "__angelsrefining__/graphics/icons/void.png",
            icon_size = 32
          }
        }
      end
    else
      for molecule_icon_layer_index, molecule_icon_layer in pairs(molecule_icon) do
        if not molecule_icon_layer.icon_size then
          bot_molecules_icon[molecule_index][molecule_icon_layer_index].icon_size = 32
        end
      end
    end
    molecule_icon = bot_molecules_icon[molecule_index]

    -- now shift this icon to its correct position
    molecule_shift = ({{-11.5, 12}, {11.5, 12}, {0, 12}})[molecule_index] or {0, 0}
    molecule_scale = 10.24 / 32 -- assume base size 32
    for layer_index, layer in pairs(molecule_icon) do
      layer.scale = layer.scale or 1
      layer.shift = {(layer.shift or {})[1] or 0, (layer.shift or {})[2] or 0}

      layer.shift = {
        layer.shift[1] * molecule_scale + molecule_shift[1],
        layer.shift[2] * molecule_scale + molecule_shift[2]
      }
      layer.scale = layer.scale * molecule_scale

      molecule_icon[layer_index].scale = layer.scale
      molecule_icon[layer_index].shift = layer.shift
    end
    bot_molecules_icon[molecule_index] = clean_table(molecule_icon)
  end
  bot_molecules_icon = clean_table(bot_molecules_icon)

  top_molecules_icon = clean_table(top_molecules_icon) or {}
  for molecule_index, molecule_icon in pairs(top_molecules_icon) do
    if type(molecule_icon) ~= "table" and get_icons(molecule_icon) ~= "__angelsrefining__/graphics/icons/void.png" then
      top_molecules_icon[molecule_index] = util.table.deepcopy(get_icons(molecule_icon))
    end
  end

  for molecule_index, molecule_icon in pairs(top_molecules_icon) do
    if type(molecule_icon) ~= "table" then
      top_molecules_icon[molecule_index] = {
        {
          icon = molecule_icon,
          icon_size = 32
        }
      }
    elseif type(molecule_icon[1]) ~= "table" then
      local mi = util.table.deepcopy(molecule_icon)
      top_molecules_icon[molecule_index] = {
        {
          icon = mi.icon or mi[1] or nil,
          shift = mi.shift or mi[3] or nil,
          scale = mi.scale or mi[4] or nil,
          tint = mi.tint or mi[5] or nil
        }
      }
      if top_molecules_icon[molecule_index][1].icon then
        top_molecules_icon[molecule_index][1].icon_size = mi.icon_size or mi[2] or 32
        if top_molecules_icon[molecule_index][1].icon_size ~= 32 then
          top_molecules_icon[molecule_index][1].scale =
            (top_molecules_icon[molecule_index][1].scale or 1) * 32 / top_molecules_icon[molecule_index][1].icon_size
        end
      else
        --something is wrong here but we need to return something
        top_molecules_icon[molecule_index] = {
          {
            icon = "__angelsrefining__/graphics/icons/void.png",
            icon_size = 32
          }
        }
      end
    else
      for molecule_icon_layer_index, molecule_icon_layer in pairs(molecule_icon) do
        if not molecule_icon_layer.icon_size then
          top_molecules_icon[molecule_index][molecule_icon_layer_index].icon_size = 32
        end
      end
    end
    molecule_icon = top_molecules_icon[molecule_index]

    -- now shift this icon to its correct position
    molecule_shift = ({{-11.5, -12}, {11.5, -12}, {0, -12}})[molecule_index] or {0, 0}
    molecule_scale = 10.24 / 32 -- assume base size 32
    for layer_index, layer in pairs(molecule_icon) do
      layer.scale = layer.scale or 1
      layer.shift = {(layer.shift or {})[1] or 0, (layer.shift or {})[2] or 0}

      layer.shift = {
        layer.shift[1] * molecule_scale + molecule_shift[1],
        layer.shift[2] * molecule_scale + molecule_shift[2]
      }
      layer.scale = layer.scale * molecule_scale

      molecule_icon[layer_index].scale = layer.scale
      molecule_icon[layer_index].shift = layer.shift
    end
    top_molecules_icon[molecule_index] = clean_table(molecule_icon)
  end
  top_molecules_icon = clean_table(top_molecules_icon)

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- allows a string of max 3 characters for default tints
  if tints then
    if type(tints) ~= "table" then
      tints = {
        top = unify_tint((icon_tint_table[string.sub(tints, 1, 1)] or {})[1]),
        mid = unify_tint((icon_tint_table[string.sub(tints, 2, 2)] or {})[2]),
        bot = unify_tint((icon_tint_table[string.sub(tints, 3, 3)] or {})[3])
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  local recipe_icons = {
    {
      -- base layer required for background shadow
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-recipe-base.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7}
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-recipe-top.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.top
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-recipe-mid.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.mid
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-gas/gas-recipe-bot.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.bot
    }
  }
  for _, bot_molecule_icon in pairs(bot_molecules_icon) do
    for _, bot_molecule_icon_layer in pairs(bot_molecule_icon) do
      table.insert(recipe_icons, bot_molecule_icon_layer)
    end
  end
  for _, top_molecule_icon in pairs(top_molecules_icon) do
    for _, top_molecule_icon_layer in pairs(top_molecule_icon) do
      table.insert(recipe_icons, top_molecule_icon_layer)
    end
  end
  return recipe_icons
end

-- CREATE LIQUID FLUID ICONS (NOT FOR RECIPES)
function angelsmods.functions.create_liquid_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 32)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 32
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 32
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefining__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or {-10, -10}
    molecule_icon.scale = molecule_icon.scale or molecule_icon[4] or 15 / molecule_icon.icon_size
    molecule_icon.tint = molecule_icon.tint or molecule_icon[5] or nil

    molecule_icon[1] = nil
    molecule_icon[2] = nil
    molecule_icon[3] = nil
    molecule_icon[4] = nil
    molecule_icon[5] = nil
  else
    molecule_icon = nil
  end

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- allows a string of max 3 characters for default tints
  if tints then
    if type(tints) ~= "table" then
      tints = {
        top = unify_tint((icon_tint_table[string.sub(tints, 1, 1)] or {})[1]),
        mid = unify_tint((icon_tint_table[string.sub(tints, 2, 2)] or {})[2]),
        bot = unify_tint((icon_tint_table[string.sub(tints, 3, 3)] or {})[3])
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  return {
    {
      -- base layer required for background shadow
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-item-base.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7},
      shift = molecule_icon and {3.5, 0} or nil
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-item-top.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.top,
      shift = molecule_icon and {3.5, 0} or nil
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-item-mid.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.mid,
      shift = molecule_icon and {3.5, 0} or nil
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-item-bot.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.bot,
      shift = molecule_icon and {3.5, 0} or nil
    },
    molecule_icon
  }
end

-- CREATE LIQUID RECIPE ICONS (NOT FOR FLUIDS)
function angelsmods.functions.create_liquid_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 32) or be a table with size defined
  bot_molecules_icon = bot_molecules_icon or {}
  for molecule_index, molecule_icon in pairs(bot_molecules_icon) do
    if type(molecule_icon) ~= "table" and get_icons(molecule_icon) ~= "__angelsrefining__/graphics/icons/void.png" then
      bot_molecules_icon[molecule_index] = util.table.deepcopy(get_icons(molecule_icon))
    end
  end

  for molecule_index, molecule_icon in pairs(bot_molecules_icon) do
    if type(molecule_icon) ~= "table" then
      bot_molecules_icon[molecule_index] = {
        {
          icon = molecule_icon,
          icon_size = 32
        }
      }
    elseif type(molecule_icon[1]) ~= "table" then
      local mi = util.table.deepcopy(molecule_icon)
      bot_molecules_icon[molecule_index] = {
        {
          icon = mi.icon or mi[1] or nil,
          shift = mi.shift or mi[3] or nil,
          scale = mi.scale or mi[4] or nil,
          tint = mi.tint or mi[5] or nil
        }
      }
      if bot_molecules_icon[molecule_index][1].icon then
        bot_molecules_icon[molecule_index][1].icon_size = mi.icon_size or mi[2] or 32
        if bot_molecules_icon[molecule_index][1].icon_size ~= 32 then
          bot_molecules_icon[molecule_index][1].scale =
            (bot_molecules_icon[molecule_index][1].scale or 1) * 32 / bot_molecules_icon[molecule_index][1].icon_size
        end
      else
        --something is wrong here but we need to return something
        bot_molecules_icon[molecule_index] = {
          {
            icon = "__angelsrefining__/graphics/icons/void.png",
            icon_size = 32
          }
        }
      end
    else
      for molecule_icon_layer_index, molecule_icon_layer in pairs(molecule_icon) do
        if not molecule_icon_layer.icon_size then
          bot_molecules_icon[molecule_index][molecule_icon_layer_index].icon_size = 32
        end
      end
    end
    molecule_icon = bot_molecules_icon[molecule_index]

    -- now shift this icon to its correct position
    molecule_shift = ({{-11.5, 12}, {11.5, 12}, {0, 12}})[molecule_index] or {0, 0}
    molecule_scale = 10.24 / 32 -- assume base size 32
    for layer_index, layer in pairs(molecule_icon) do
      layer.scale = layer.scale or 1
      layer.shift = {(layer.shift or {})[1] or 0, (layer.shift or {})[2] or 0}

      layer.shift = {
        layer.shift[1] * molecule_scale + molecule_shift[1],
        layer.shift[2] * molecule_scale + molecule_shift[2]
      }
      layer.scale = layer.scale * molecule_scale

      molecule_icon[layer_index].scale = layer.scale
      molecule_icon[layer_index].shift = layer.shift
    end
    bot_molecules_icon[molecule_index] = clean_table(molecule_icon)
  end
  bot_molecules_icon = clean_table(bot_molecules_icon)

  top_molecules_icon = top_molecules_icon or {}
  for molecule_index, molecule_icon in pairs(top_molecules_icon) do
    if type(molecule_icon) ~= "table" and get_icons(molecule_icon) ~= "__angelsrefining__/graphics/icons/void.png" then
      top_molecules_icon[molecule_index] = util.table.deepcopy(get_icons(molecule_icon))
    end
  end

  for molecule_index, molecule_icon in pairs(top_molecules_icon) do
    if type(molecule_icon) ~= "table" then
      top_molecules_icon[molecule_index] = {
        {
          icon = molecule_icon,
          icon_size = 32
        }
      }
    elseif type(molecule_icon[1]) ~= "table" then
      local mi = util.table.deepcopy(molecule_icon)
      top_molecules_icon[molecule_index] = {
        {
          icon = mi.icon or mi[1] or nil,
          shift = mi.shift or mi[3] or nil,
          scale = mi.scale or mi[4] or nil,
          tint = mi.tint or mi[5] or nil
        }
      }
      if top_molecules_icon[molecule_index][1].icon then
        top_molecules_icon[molecule_index][1].icon_size = mi.icon_size or mi[2] or 32
        if top_molecules_icon[molecule_index][1].icon_size ~= 32 then
          top_molecules_icon[molecule_index][1].scale =
            (top_molecules_icon[molecule_index][1].scale or 1) * 32 / top_molecules_icon[molecule_index][1].icon_size
        end
      else
        --something is wrong here but we need to return something
        top_molecules_icon[molecule_index] = {
          {
            icon = "__angelsrefining__/graphics/icons/void.png",
            icon_size = 32
          }
        }
      end
    else
      for molecule_icon_layer_index, molecule_icon_layer in pairs(molecule_icon) do
        if not molecule_icon_layer.icon_size then
          top_molecules_icon[molecule_index][molecule_icon_layer_index].icon_size = 32
        end
      end
    end
    molecule_icon = top_molecules_icon[molecule_index]

    -- now shift this icon to its correct position
    molecule_shift = ({{-11.5, -12}, {11.5, -12}, {0, -12}})[molecule_index] or {0, 0}
    molecule_scale = 10.24 / 32 -- assume base size 32
    for layer_index, layer in pairs(molecule_icon) do
      layer.scale = layer.scale or 1
      layer.shift = {(layer.shift or {})[1] or 0, (layer.shift or {})[2] or 0}

      layer.shift = {
        layer.shift[1] * molecule_scale + molecule_shift[1],
        layer.shift[2] * molecule_scale + molecule_shift[2]
      }
      layer.scale = layer.scale * molecule_scale

      molecule_icon[layer_index].scale = layer.scale
      molecule_icon[layer_index].shift = layer.shift
    end
    top_molecules_icon[molecule_index] = clean_table(molecule_icon)
  end
  top_molecules_icon = clean_table(top_molecules_icon)

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- allows a string of max 3 characters for default tints
  if tints then
    if type(tints) ~= "table" then
      tints = {
        top = unify_tint((icon_tint_table[string.sub(tints, 1, 1)] or {})[1]),
        mid = unify_tint((icon_tint_table[string.sub(tints, 2, 2)] or {})[2]),
        bot = unify_tint((icon_tint_table[string.sub(tints, 3, 3)] or {})[3])
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  local recipe_icons = {
    {
      -- base layer required for background shadow
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-recipe-base.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7}
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-recipe-top.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.top
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-recipe-mid.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.mid
    },
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-recipe-bot.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.bot
    }
  }
  for _, bot_molecule_icon in pairs(bot_molecules_icon) do
    for _, bot_molecule_icon_layer in pairs(bot_molecule_icon) do
      table.insert(recipe_icons, bot_molecule_icon_layer)
    end
  end
  for _, top_molecule_icon in pairs(top_molecules_icon) do
    for _, top_molecule_icon_layer in pairs(top_molecule_icon) do
      table.insert(recipe_icons, top_molecule_icon_layer)
    end
  end
  return recipe_icons
end

-- CREATE VISCOUS LIQUID FLUID ICONS (NOT FOR RECIPES)
function angelsmods.functions.create_viscous_liquid_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 32)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 32
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 32
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefining__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or {-10, -10}
    molecule_icon.scale = molecule_icon.scale or molecule_icon[4] or 15 / molecule_icon.icon_size

    molecule_icon[1] = nil
    molecule_icon[2] = nil
    molecule_icon[3] = nil
    molecule_icon[4] = nil
  else
    molecule_icon = nil
  end

  -- tints is a table of 5 tints, for the top, bot_left top_mask, bot_mask, bot_right,
  -- if bot_left is present, but not bot_right (nil), then both bottom sides will have
  -- the same tint as defined in bot_left
  if tints then
    if type(tints) ~= "table" then
      tints = {}
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.bot_left = unify_tint(tints.bot_left or tints[2] or nil)
      tints.bot_right = unify_tint(tints.bot_right or tints[5] or nil)

      tints.top_mask = unify_tint(tints.top_mask or tints[3] or nil)
      tints.bot_mask = unify_tint(tints.bot_mask or tints[4] or nil)

      if tints.bot_left and tints.bot_right then
        tints.bot = nil
      else
        tints.bot = tints.bot_left or tints.bot_right or nil
        tints.bot_left = nil
        tints.bot_right = nil
      end
    end
  else
    tints = {}
  end

  return clean_table {
    (tints.bot or tints.bot_left or tints.bot_right or tints.bot_mask) and
      {
        -- base layer required for background shadow
        icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-base.png",
        icon_size = 256,
        scale = 32 / 256,
        tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7},
        shift = molecule_icon and {3.5, 0} or nil
      } or
      nil,
    tints.bot and
      {
        icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-bot.png",
        icon_size = 256,
        scale = 32 / 256,
        tint = tints.bot,
        shift = molecule_icon and {3.5, 0} or nil
      } or
      nil,
    tints.bot_left and
      {
        icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-bot-left.png",
        icon_size = 256,
        scale = 32 / 256,
        tint = tints.bot_left,
        shift = molecule_icon and {3.5, 0} or nil
      } or
      nil,
    tints.bot_left and
      {
        icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-bot-right.png",
        icon_size = 256,
        scale = 32 / 256,
        tint = tints.bot_right,
        shift = molecule_icon and {3.5, 0} or nil
      } or
      nil,
    tints.bot_mask and
      {
        icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-bot-mask.png",
        icon_size = 256,
        scale = 32 / 256,
        tint = tints.bot_mask,
        shift = molecule_icon and {3.5, 0} or nil
      } or
      nil,
    {
      icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-top.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.top,
      shift = molecule_icon and {3.5, 0} or nil
    },
    tints.top_mask and
      {
        icon = "__angelsrefining__/graphics/icons/angels-liquid/liquid-viscous-item-top-mask.png",
        icon_size = 256,
        scale = 32 / 256,
        tint = tints.top_mask,
        shift = molecule_icon and {3.5, 0} or nil
      } or
      nil,
    molecule_icon
  }
end

-- CREATE VISCOUS LIQUID FLUID ICONS FOR RECIPES
function angelsmods.functions.create_viscous_liquid_fluid_recipe_icon(fluid_name, overlay_icon, icon_divide, icon_minus)
  icon_divide = icon_divide or 2
  icon_minus = icon_minus or 10

  if not overlay_icon then
    return angelsmods.functions.get_object_icons(fluid_name)
  end
  local icon_layers = util.table.deepcopy(angelsmods.functions.get_object_icons(overlay_icon))
  for layer_index, layer in pairs(icon_layers) do
    layer.shift = layer.shift or {}
    layer.shift = {(layer.shift[1] or 0) / icon_divide - icon_minus, (layer.shift[2] or 0) / icon_divide - icon_minus}
    layer.scale = (layer.scale or 1) / icon_divide 
  end
  return angelsmods.functions.add_icon_layer(angelsmods.functions.get_object_icons(fluid_name), icon_layers)
end

--COMPARES ARGUMENT (ARG) AGAINST A TABLE (EXCEP), RETURNS FALSE IF ARG == EXCEP ELSE TRUE
function angelsmods.functions.check_exception(arg, excep)
  for _, exception in pairs(excep) do
    if exception == arg then
      return false
    end
  end
  return true
end

--ADDS A TECH TO IGNORE FOR THE TECH MOD
function angelsmods.functions.add_exception(to_add)
  if --type(to_add) == string and
    angelsmods.industries and angelsmods.industries.tech_exceptions then
    table.insert(angelsmods.industries.tech_exceptions, to_add)
  end
end

--REMOVE PRODUCTIVITY RESTRICTION
function angelsmods.functions.allow_productivity(recipe_name)
  if data.raw.recipe[recipe_name] then
    for i, module in pairs(data.raw.module) do
      if module.limitation and module.effect.productivity then
        table.insert(module.limitation, recipe_name)
      end
    end
  end
end

--OVERRIDES SET CONDITION FOR LIST OF ITEMS
function angelsmods.functions.override_item_conditions(override)
  for i, items in pairs(override.list) do
    if data.raw.item[items] then
      if data.raw.item[items].stack_size <= override.value then
        data.raw.item[items].stack_size = override.value
      end
    end
  end
end

--MODIFY FLAGS
function angelsmods.functions.add_flag(entity, flag)
  local to_add = data.raw.item[entity] or data.raw.tool[entity] or data.raw["item-with-entity-data"][entity] or nil
  if to_add then
    if to_add.flags then
      table.insert(to_add.flags, flag)
    else
      to_add.flags = {flag}
    end
  end
end

--MODIFY LOCATION
function angelsmods.functions.move_item(i_name, i_subgroup, i_order, i_type)
  i_type = i_type or "item"

  local i = data.raw[i_type] and data.raw[i_type][i_name] or {}
  i.subgroup = i_subgroup or i.subgroup
  i.order = i_order or i.order
end

--MODIFY BARRELING RECIPES
function angelsmods.functions.disable_barreling_recipes(fluid_to_disable)
  angelsmods.functions.OV.disable_recipe("fill-" .. fluid_to_disable .. "-barrel")
  angelsmods.functions.OV.disable_recipe("empty-" .. fluid_to_disable .. "-barrel")
  angelsmods.functions.OV.disable_recipe("fill-" .. fluid_to_disable .. "-liquid-bot")
  angelsmods.functions.OV.disable_recipe("empty-" .. fluid_to_disable .. "-liquid-bot")
  for nx, item in pairs(data.raw.item) do
    if item.name == fluid_to_disable .. "-barrel" then
      if item.flags then
        table.insert(item.flags, "hidden")
      else
        item.flags = {"hidden"}
      end
    end
    if item.name == fluid_to_disable .. "-liquid-bot" then
      if item.flags then
        table.insert(item.flags, "hidden")
      else
        item.flags = {"hidden"}
      end
    end
  end
end

function angelsmods.functions.modify_barreling_icon()
  for ix, item in pairs(data.raw.item) do
    if item.subgroup == "fill-barrel" then
      icon_name = string.sub(item.name, 1, -8)
      for kx, fluid in pairs(data.raw.fluid) do
        if fluid.name == icon_name then
          if item.icons then
            if fluid.icon then
              if fluid.icon_size then
                size = fluid.icon_size
              else
                size = 32
              end
              table.insert(item.icons, {icon = fluid.icon, icon_size = size, shift = {0, 5}, scale = 16 / size})
            end
            if fluid.icons then
              item.icons = util.combine_icons(item.icons, fluid.icons, {scale = 16 / size, shift = {0, 5}})
            end
          end
        end
      end
    end
  end
end

function angelsmods.functions.modify_barreling_recipes()
  angelsmods.functions.modify_barreling_icon()
  local auto_barreling = angelsmods.trigger.enable_auto_barreling
  for _, recipe in pairs(data.raw.recipe) do
    if recipe.subgroup == "empty-barrel" or recipe.subgroup == "fill-barrel" then
      if auto_barreling then
        recipe.hidden = true
      end
      recipe.category = "barreling-pump"
    end
  end
end

--CREATE VOID RECIPES
function angelsmods.functions.make_void(fluid_name, void_category) --categories: chemical (flare-stack), water(clarifier)
  --LOCAL DEFINITIONS
  local void_hidden = angelsmods.trigger.enable_hide_void
  local recipe = {}

  if data.raw.fluid[fluid_name] then
    local fluid_icon = get_icons(fluid_name)
    if type(fluid_icon) == "table" then
      recipe.icons = fluid_icon
    else
      recipe.icon = fluid_icon
    end
    if data.raw.fluid[fluid_name].icon_size then
      recipe.icon_size = data.raw.fluid[fluid_name].icon_size
    else
      recipe.icon_size = 32
    end
    if void_category == "water" then
      void_amount = 400
      void_item = "water-void"
      void_time = 5
      void_type = "fluid"
      void = 0
    end
    if void_category == "chemical" then
      void_amount = 100
      void_item = "chemical-void"
      void_time = 1
      void_type = "fluid"
      void = 0
    end
  else
    if data.raw.item[fluid_name] then
      fluid_icon = data.raw.item[fluid_name].icon
      if void_category == "bio" then
        void_amount = 1
        void_item = "solid-compost"
        void_time = 1
        void_type = "item"
        void = 1
      end
    end
  end

  recipe.type = "recipe"
  recipe.name = "angels-" .. void_category .. "-void-" .. fluid_name
  recipe.category = "angels-" .. void_category .. "-void"
  recipe.enabled = "true"
  recipe.hidden = void_hidden
  recipe.energy_required = void_time
  recipe.ingredients = {{type = void_type, name = fluid_name, amount = void_amount}}
  recipe.results = {{type = "item", name = void_item, amount = 1, probability = void}}
  recipe.subgroup = "angels-void"
  recipe.order = "angels-" .. void_category .. "-void-" .. fluid_name

  data:extend({recipe})
end

--CREATE CONVERTER RECIPES (PETROCHEM)
function angelsmods.functions.make_converter(fluid_name_other, fluid_name_angels)
  if angelsmods.trigger.enableconverter then
    if data.raw.fluid[fluid_name_angels] and data.raw.fluid[fluid_name_other] then
      --LOCALS
      hide_converter = angelsmods.trigger.hideconverter

      --ORDER COUNTER
      if not angelsmods.functions.converter_counter then
        angelsmods.functions.converter_counter = 0
      end
      angelsmods.functions.converter_counter = angelsmods.functions.converter_counter + 1

      data:extend(
        {
          {
            type = "recipe",
            name = "converter-other-" .. fluid_name_other,
            localised_name = {
              "recipe-name.converter-angels",
              {"fluid-name." .. fluid_name_other},
              {"fluid-name." .. fluid_name_angels}
            },
            category = "angels-converter",
            subgroup = "angels-converter",
            energy_required = 0.5,
            enabled = "true",
            hidden = hide_converter,
            ingredients = {
              {type = "fluid", name = fluid_name_angels, amount = 50}
            },
            results = {
              {type = "fluid", name = fluid_name_other, amount = 50}
            },
            icon_size = 32,
            order = "a" .. angelsmods.functions.converter_counter
          },
          {
            type = "recipe",
            name = "converter-angels-" .. fluid_name_angels,
            localised_name = {
              "recipe-name.converter-angels",
              {"fluid-name." .. fluid_name_other},
              {"fluid-name." .. fluid_name_angels}
            },
            category = "angels-converter",
            subgroup = "angels-converter",
            energy_required = 0.5,
            enabled = "true",
            hidden = hide_converter,
            ingredients = {
              {type = "fluid", name = fluid_name_other, amount = 50}
            },
            results = {
              {type = "fluid", name = fluid_name_angels, amount = 50}
            },
            icon_size = 32,
            order = "b" .. angelsmods.functions.converter_counter
          }
        }
      )
      if angelsmods.trigger.hideconverter then
        angelsmods.functions.OV.hide_recipe(
          {"converter-other-" .. fluid_name_other, "converter-angels-" .. fluid_name_angels}
        )
      end
    end
  end
end

--MODIFY LOCALIZATION STRINGS
local function get_add_localization(args)
  local add = {""}
  local length = #args
  for i, res in ipairs(args) do
    table.insert(add, {"item-description.loc-" .. res})
    if i == length - 1 then
      table.insert(add, {"item-description.loc-space"})
      table.insert(add, {"item-description.loc-and"})
      table.insert(add, {"item-description.loc-space"})
    elseif i < length then
      table.insert(add, {"item-description.loc-dot"})
      table.insert(add, {"item-description.loc-space"})
    end
  end

  return add
end

function angelsmods.functions.add_localization(res_name, translate, ...)
  local description = {
    "item-description." .. translate
  }

  table.insert(description, get_add_localization({...}))

  if data.raw.resource[res_name] then
    data.raw.resource[res_name].localised_description = description
  end
  if data.raw.resource["infinite-" .. res_name] then
    data.raw.resource["infinite-" .. res_name].localised_description = description
  end
  if data.raw.item[res_name] then
    data.raw.item[res_name].localised_description = description
  end
end

function angelsmods.functions.add_recipe_localization(res_name, translate, ...)
  local description = {
    "recipe-name." .. translate
  }

  table.insert(description, get_add_localization({...}))

  if data.raw.recipe[res_name] then
    data.raw.recipe[res_name].localised_name = description
  end
end

-- Barreling
function angelsmods.functions.create_barreling_fluid_subgroup(fluids_to_move)
  local auto_barreling = angelsmods.trigger.enable_auto_barreling
  -- no need to modify since it will happen automaticly
  if auto_barreling then
    return
  end

  local subgroups = data.raw["item-subgroup"]
  local recipes = data.raw.recipe
  local items = data.raw.item
  if not fluids_to_move or #fluids_to_move == 0 then
    fluids_to_move = data.raw.fluid
  end

  for fn, fd in pairs(fluids_to_move) do
    local recipe = recipes[fn]
    local subgroup = fd.subgroup or (recipe and recipe.subgroup) or "vanilla"
    local order = fd.order or (recipe and recipe.order) or false
    local barrel = items[fn .. "-barrel"]

    if subgroup and barrel then
      if not data.raw["item-subgroup"]["angels-fluid-control-" .. subgroup] then
        data:extend(
          {
            {
              type = "item-subgroup",
              name = "angels-fluid-control-" .. subgroup,
              group = "angels-fluid-control",
              order = "z-" .. (subgroups[subgroup] and subgroups[subgroup].order or subgroup)
            }
          }
        )
      end
      order = order or barrel.order

      barrel.subgroup = "angels-fluid-control-" .. subgroup
      barrel.order = order

      if recipes["fill-" .. fn .. "-barrel"] then
        recipes["fill-" .. fn .. "-barrel"].subgroup = "angels-fluid-control-" .. subgroup
        recipes["fill-" .. fn .. "-barrel"].order = order .. "-a"
        recipes["empty-" .. fn .. "-barrel"].subgroup = "angels-fluid-control-" .. subgroup
        recipes["empty-" .. fn .. "-barrel"].order = order .. "-b"
      end
    end
  end
end
