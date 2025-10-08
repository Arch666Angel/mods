-------------------------------------------------------------------------------
-- GET ICON/ICONS FROM FLUID/ITEM ---------------------------------------------
-------------------------------------------------------------------------------
local function get_icons(object_name)
  for _, prototype in pairs({ "item", "fluid", "ammo", "capsule" }) do
    local object = data.raw[prototype][object_name]
    if object then
      if object.icons then -- icons has precedence over icon
        return object.icons
      end
      if object.icon then
        return {
          {
            icon = object.icon,
            icon_size = object.icon_size or 64,
            scale = 32 / (object.icon_size or 64),
          },
        }
      end
    end
  end
  --something is wrong here but we need to return something
  return "__angelsrefininggraphics__/graphics/icons/void.png"
end
angelsmods.functions.get_object_icons = get_icons

function angelsmods.functions.add_icon_layer(icon_layers, layers_to_add, layer_shift, layer_scale)
  local icon_layers = util.table.deepcopy(icon_layers)

  if layers_to_add[1] then
    for _, layer_to_add in pairs(layers_to_add) do
      table.insert(icon_layers, {
        icon = layer_to_add.icon,
        icon_size = layer_to_add.icon_size,
        tint = layer_to_add.tint,
        scale = (layer_to_add.scale or 1) * (layer_scale or 1),
        shift = {
          (layer_to_add.shift and (layer_to_add.shift[1] or layer_to_add.shift.x) or 0) * (layer_scale or 1)
            + (layer_shift and (layer_shift[1] or layer_shift.x) or 0),
          (layer_to_add.shift and (layer_to_add.shift[2] or layer_to_add.shift.y) or 0) * (layer_scale or 1)
            + (layer_shift and (layer_shift[2] or layer_shift.y) or 0),
        },
      })
    end
  else
    table.insert(icon_layers, {
      icon = layers_to_add.icon,
      icon_size = layers_to_add.icon_size,
      tint = layers_to_add.tint,
      scale = (layers_to_add.scale or 1) * (layer_scale or 1),
      shift = {
        (layers_to_add.shift and (layers_to_add.shift[1] or layers_to_add.shift.x) or 0) * (layer_scale or 1)
          + (layer_shift and (layer_shift[1] or layer_shift.x) or 0),
        (layers_to_add.shift and (layers_to_add.shift[2] or layers_to_add.shift.y) or 0) * (layer_scale or 1)
          + (layer_shift and (layer_shift[2] or layer_shift.y) or 0),
      },
    })
  end

  return icon_layers
end

function angelsmods.functions.modify_icon_layers(icon_layers, layer_shift, layer_scale)
  return angelsmods.functions.add_icon_layer({}, icon_layers, layer_shift, layer_scale)
end

local function unify_tint(tint)
  -- allows tints to be defined as {255, 255, 255, 255}
  -- meaning doesn't need keys rgba (but assumes that order)
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
  local clone = {}
  for k, v in pairs(t or {}) do
    t[k] = nil
    table.insert(clone, v)
  end
  for i, v in ipairs(clone) do
    t[i] = v
  end
  return t
end
angelsmods.functions.clean_ingredient_list = clean_table
angelsmods.functions.clean_localised_description = clean_table

function angelsmods.functions.add_number_icon_layer(icon_layers, number_tier, number_tint, outline_tint)
  -- adds a new layer to icon_layers to show the tier number (with a color)
  -- outline_tint is optional
  local icon_size_scale = 1
  local icon_size_shift = { 0, 0 }

  icon_layers = icon_layers or {}
  if #icon_layers == 0 then
    -- if the icon_layer is empty, we make sure it will be a full sized number after usage in the recipe functions
    icon_size_scale = 32 / 10.24
    icon_size_shift = { 11.5 * icon_size_scale, 12 * icon_size_scale }
  elseif type(icon_layers) == "string" then --to deal with errors passing the void icon as a string
    icon_layers = { { icon = icon_layers, icon_size = 32 } }
  elseif icon_layers[1].scale then
    icon_size_scale = (icon_layers[1].icon_size or 64) * icon_layers[1].scale / 32
  else
    icon_layers[1].scale = 32 / (icon_layers[1].icon_size or 64)
  end

  return angelsmods.functions.add_icon_layer(icon_layers, {
    {
      icon = "__angelsrefininggraphics__/graphics/icons/numerals/num-" .. number_tier .. "-outline.png",
      icon_size = 64,
      tint = unify_tint(outline_tint or { 0, 0, 0, 1 }),
      scale = 0.5 * icon_size_scale,
      shift = icon_size_shift,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/numerals/num-" .. number_tier .. ".png",
      icon_size = 64,
      tint = unify_tint(number_tint),
      scale = 0.5 * icon_size_scale,
      shift = icon_size_shift,
    },
  })
end

-------------------------------------------------------------------------------
-- ICON GENERATION ------------------------------------------------------------
-------------------------------------------------------------------------------
local icon_tints_table = {
  --Sourced from:
  --https://sciencenotes.org/molecule-atom-colors-cpk-colors/
  -- Sorted by periodic atomic number
  H = { { 255, 255, 255 }, { 243, 243, 243 }, { 242, 242, 242 } }, --Hydrogen
  Hd = { { 255, 255, 192 }, { 206, 206, 173 }, { 196, 196, 156 } }, --Deuterium
  Li = { { 204, 128, 255 } }, --Lithium
  C = { { 044, 044, 044 }, { 064, 064, 064 }, { 090, 090, 090 } }, --Carbon -- but darkened
  N = { { 048, 080, 248 }, { 045, 076, 175 }, { 038, 063, 150 } }, --Nitrogen
  O = { { 255, 013, 013 }, { 214, 012, 012 }, { 198, 011, 011 } }, --Oxygen
  F = { { 144, 224, 080 }, { 181, 208, 000 }, { 181, 208, 000 } }, --Fluorine
  Na = { { 171, 092, 242 } }, --Sodium
  Mg = { { 138, 255, 000 } }, --Magnesium
  Al = { { 191, 166, 166 } }, --Aluminium
  Si = { { 240, 200, 160 } }, --Silicon
  P = { { 255, 128, 000 } }, --Phosphorus
  S = { { 255, 255, 048 }, { 216, 196, 017 }, { 210, 187, 030 } }, --Sulfur
  Cl = { { 031, 240, 031 }, { 057, 211, 040 }, { 075, 195, 045 } }, --Chlorine
  K = { { 143, 064, 212 } }, --Potassium
  Ca = { { 061, 255, 000 } }, --Calcium
  Ti = { { 191, 194, 199 } }, --Titanium
  Cr = { { 138, 153, 199 } }, --Chrome
  Mn = { { 156, 122, 199 } }, --Manganese
  Fe = { { 224, 102, 051 } }, --Iron
  Co = { { 240, 144, 160 } }, --Cobalt
  Ni = { { 080, 208, 080 } }, --Nickel
  Cu = { { 200, 128, 051 } }, --Copper
  Zn = { { 125, 128, 176 } }, --Zinc
  Ag = { { 192, 192, 192 } }, --Silver
  Sn = { { 102, 128, 128 } }, --Tin
  Cs = { { 087, 023, 143 } }, --Cesium
  W = { { 033, 148, 214 } }, --Tungsten (Wolfram)
  Os = { { 038, 102, 150 } }, --Osmium
  Pt = { { 208, 208, 224 } }, --Platium
  Au = { { 255, 209, 035 } }, --Gold
  Hg = { { 184, 184, 208 } }, --Mercury
  Pb = { { 087, 089, 097 } }, --Lead
  Po = { { 171, 092, 000 } }, --Polonium
  Th = { { 000, 186, 255 } }, --Thorium
  Pa = { { 000, 161, 255 } }, --Protactinium
  U = { { 000, 143, 255 } }, --Uranium
  Np = { { 000, 128, 255 } }, --Neptunium
  Pu = { { 000, 107, 255 } }, --Plutonium
  Am = { { 084, 092, 242 } }, --Americium
  Cm = { { 120, 092, 227 } }, --Curium
  --fake/compicated/custom tints
  Tw = { { 243, 135, 000 } }, --Thermal water
  Oi = { { 069, 069, 069 }, { 054, 054, 054 }, { 036, 036, 036 } }, --Coal/Oil
  Xx = { { 041, 041, 180 } }, --Complex (really strange materials)
  Ws = { { 094, 114, 174 }, { 088, 104, 163 }, { 088, 101, 155 } }, --Water/Steam
  Sg = { { 255, 105, 180 } }, --Syngas
  Ng = { { 105, 135, 090 }, { 096, 122, 082 }, { 088, 113, 075 } }, --Natural Gas
  Cb = { { 015, 015, 015 } }, --Other Carbon Solids
  Ax = { { 241, 050, 238 } }, --Alien Stuffs
  Aw = { { 194, 227, 091 }, { 184, 239, 000 }, { 156, 207, 000 } }, --Alien Feed (gas/water)
  Oc = { { 044, 044, 044 }, { 140, 000, 000 }, { 140, 000, 000 } }, -- Carbon (oxides) darker for less contrast
}
--[[{ unused materials
  Ne = {{179, 227, 245}}, Ar = {{128, 209, 227}}, Sc = {{230, 230, 230}}, V  = {{166, 166, 171}}, Ga = {{194, 143, 143}}, Ge = {{102, 143, 143}}, As = {{189, 128, 227}}, Se = {{255, 161, 000}}, 
  Br = {{166, 041, 041}}, Kr = {{092, 184, 209}}, Rb = {{112, 046, 176}}, Sr = {{000, 255, 000}}, Y  = {{148, 255, 255}}, Zr = {{148, 224, 224}}, Nb = {{115, 194, 201}}, Mo = {{084, 181, 181}}, 
  Tc = {{059, 158, 158}}, Ru = {{036, 143, 143}}, Rh = {{010, 125, 140}}, Pd = {{000, 105, 133}}, Cd = {{255, 217, 143}}, In = {{166, 117, 115}}, Sb = {{158, 099, 181}}, Te = {{212, 122, 000}}, 
  I  = {{148, 000, 148}}, Xe = {{066, 158, 176}}, Ba = {{000, 201, 000}}, La = {{112, 212, 255}}, Ce = {{255, 255, 199}}, Pr = {{217, 255, 199}}, Nd = {{199, 255, 199}}, Pm = {{163, 255, 199}}, 
  Sm = {{143, 255, 199}}, Eu = {{097, 255, 199}}, Gd = {{069, 255, 199}}, Tb = {{048, 255, 199}}, Dy = {{031, 255, 199}}, Ho = {{000, 255, 156}}, Er = {{000, 230, 117}}, Tm = {{000, 212, 082}},  
  Yb = {{000, 191, 056}}, Lu = {{000, 171, 036}}, Hf = {{077, 194, 255}}, Ta = {{077, 166, 255}}, Re = {{038, 125, 171}}, Ir = {{023, 084, 135}}, Tl = {{166, 084, 077}}, Bi = {{158, 079, 181}}, 
  At = {{117, 079, 069}}, Rn = {{066, 130, 150}}, Fr = {{066, 000, 102}}, Ra = {{000, 125, 000}}, Ac = {{112, 171, 250}}, Bk = {{138, 079, 227}}, Cf = {{161, 054, 212}}, Es = {{179, 031, 212}}, 
  Fm = {{179, 031, 186}}, Md = {{179, 013, 166}}, No = {{189, 013, 135}}, Lr = {{199, 000, 102}}, Rf = {{204, 000, 089}}, Db = {{209, 000, 079}}, Sg = {{217, 000, 069}}, Bh = {{224, 000, 056}}, 
  Hs = {{230, 000, 046}}, Mt = {{235, 000, 038}}, }]]

local function get_molecule_codes(molec_formula)
  local orig = molec_formula
  local string_codes = {} --subtables of tint codes eg. {{form = Ws ,amount = 12},}
  while string.len(molec_formula) > 0 do
    --take first segment (or throw error) and trim each code off and repeat until empty or error
    local trim = 1 --always trim at least 1 per code
    if string.find(molec_formula, "^%u%l%d+") == 1 then --Two letter code with number
      table.insert(string_codes, {
        form = string.sub(molec_formula, 1, 2),
        amount = tonumber(string.sub(molec_formula, string.find(molec_formula, "%d+"))),
      })
      trim = string.len(tostring(string_codes[#string_codes].amount)) + 1
    elseif string.find(molec_formula, "^%u%l") == 1 then --Two letter code without number
      table.insert(string_codes, { form = string.sub(molec_formula, 1, 2), amount = 1 }) --no amount-default 1
    elseif string.find(molec_formula, "^%u%d+") == 1 then --One letter code with number
      table.insert(string_codes, {
        form = string.sub(molec_formula, 1, 1),
        amount = tonumber(string.sub(molec_formula, string.find(molec_formula, "%d+"))),
      })
      trim = string.len(tostring(string_codes[#string_codes].amount)) + 1
    elseif string.find(molec_formula, "^%u") == 1 then --One letter code without number
      table.insert(string_codes, { form = string.sub(molec_formula, 1, 1), amount = 1 }) --no amount-default 1
    else --none of the above segments
      error(
        "Cannot determine next string code in '"
          .. (molec_formula or "")
          .. " of original code "
          .. orig
          .. "'. Please report this to the Angel's dev team."
      )
    end
    --trim string correctly
    local symbol = string_codes[#string_codes].form
    trim = trim + string.len(symbol)
    molec_formula = string.sub(molec_formula, trim)
  end
  return string_codes
end

local function create_recipe_molecule_icons(molecules_icon, molecules_shift, molecules_scale)
  molecules_icon = clean_table(molecules_icon) or {}
  molecules_shift = molecules_shift or { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } }
  molecules_scale = molecules_scale or (10.24 / 32) -- assume base 64 size, scaled by 0.5

  for molecule_index, molecule_icon in pairs(molecules_icon) do
    if type(molecule_icon) ~= "table" and get_icons(molecule_icon) ~= "__angelsrefininggraphics__/graphics/icons/void.png" then
      molecules_icon[molecule_index] = util.table.deepcopy(get_icons(molecule_icon))
    end
  end

  for molecule_index, molecule_icon in pairs(molecules_icon) do
    if type(molecule_icon) ~= "table" then
      molecules_icon[molecule_index] = {
        {
          icon = molecule_icon,
          icon_size = 32,
        },
      }
    elseif type(molecule_icon[1]) ~= "table" then
      local mi = util.table.deepcopy(molecule_icon)
      molecules_icon[molecule_index] = {
        {
          icon = mi.icon or mi[1] or nil,
          shift = mi.shift or mi[3] or nil,
          scale = mi.scale or mi[4] or nil,
          tint = mi.tint or mi[5] or nil,
          floating = mi.floating or nil,
        },
      }
      if molecules_icon[molecule_index][1].icon then
        molecules_icon[molecule_index][1].icon_size = mi.icon_size or mi[2] or 64
        if molecules_icon[molecule_index][1].icon_size ~= 32 then
          molecules_icon[molecule_index][1].scale = (molecules_icon[molecule_index][1].scale or 1)
            * 32
            / molecules_icon[molecule_index][1].icon_size
        end
      else
        --something is wrong here but we need to return something
        molecules_icon[molecule_index] = {
          {
            icon = "__angelsrefininggraphics__/graphics/icons/void.png",
            icon_size = 32,
          },
        }
      end
    else
      for molecule_icon_layer_index, molecule_icon_layer in pairs(molecule_icon) do
        if not molecule_icon_layer.icon_size then
          molecules_icon[molecule_index][molecule_icon_layer_index].icon_size = 64
          molecules_icon[molecule_index][molecule_icon_layer_index].scale = 0.5
        end
      end
    end
    molecule_icon = molecules_icon[molecule_index]

    -- now shift this icon to its correct position
    local molecule_shift = molecules_shift[molecule_index] or { 0, 0 }
    local molecule_scale = molecules_scale
    for layer_index, layer in pairs(molecule_icon) do
      layer.scale = layer.scale or 1
      layer.shift = { (layer.shift or {})[1] or 0, (layer.shift or {})[2] or 0 }

      layer.shift = {
        layer.shift[1] * molecule_scale + molecule_shift[1],
        layer.shift[2] * molecule_scale + molecule_shift[2],
      }
      layer.scale = layer.scale * molecule_scale

      molecule_icon[layer_index].scale = layer.scale
      molecule_icon[layer_index].shift = layer.shift
    end
    molecules_icon[molecule_index] = clean_table(molecule_icon)
  end

  return clean_table(molecules_icon)
end

-- CREATE GAS FLUID ICONS (NOT FOR RECIPES)
function angelsmods.functions.create_gas_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 32)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 32,
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 32
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefininggraphics__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or { -10, -10 }
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
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
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
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-base.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-top.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.top,
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-mid.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.mid,
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-bot.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.bot,
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    molecule_icon,
  }
end

-- CREATE GAS RECIPE ICONS (NOT FOR FLUIDS)
function angelsmods.functions.create_gas_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } })
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } })

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
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
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-base.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-top.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.top,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-mid.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.mid,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-bot.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.bot,
    },
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

-- CREATE GAS TECH ICONS
function angelsmods.functions.create_gas_tech_icon(tints)
  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
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
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-base.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-top.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = tints.top,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-mid.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = tints.mid,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-bot.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = tints.bot,
    },
  }
end

-- CREATE LIQUID FLUID ICONS (NOT FOR RECIPES)
function angelsmods.functions.create_liquid_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 64)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 64,
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 64
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefininggraphics__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or { -10, -10 }
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
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
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
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-base.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-top.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.top,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-mid.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.mid,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-bot.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.bot,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    molecule_icon,
  }
end

-- CREATE LIQUID RECIPE ICONS (NOT FOR FLUIDS)
function angelsmods.functions.create_liquid_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } } )
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } } )

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
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
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-base.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-top.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.top,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-mid.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.mid,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-bot.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.bot,
    },
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
  -- molecule_icon can be a string (assumes icon_size 64)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 64,
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 64
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefininggraphics__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or { -10, -10 }
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

  return clean_table({
    (tints.bot or tints.bot_left or tints.bot_right or tints.bot_mask)
        and {
          -- base layer required for background shadow
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-base.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
          shift = molecule_icon and { 3.5, 0 } or nil,
        }
      or nil,
    tints.bot and {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.bot,
      shift = molecule_icon and { 3.5, 0 } or nil,
    } or nil,
    tints.bot_left and {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot-left.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.bot_left,
      shift = molecule_icon and { 3.5, 0 } or nil,
    } or nil,
    tints.bot_left and {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot-right.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.bot_right,
      shift = molecule_icon and { 3.5, 0 } or nil,
    } or nil,
    tints.bot_mask and {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot-mask.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.bot_mask,
      shift = molecule_icon and { 3.5, 0 } or nil,
    } or nil,
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-top.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.top,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    tints.top_mask and {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-top-mask.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.top_mask,
      shift = molecule_icon and { 3.5, 0 } or nil,
    } or nil,
    molecule_icon,
  })
end

-- CREATE VISCOUS LIQUID RECIPE ICONS (NOT FOR FLUIDS)
function angelsmods.functions.create_viscous_liquid_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } } )
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } } )

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

  local recipe_icons = {
    (tints.bot or tints.bot_left or tints.bot_right or tints.bot_mask)
        and {
          -- base layer required for background shadow
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-base.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
        }
      or nil,
    tints.bot
        and {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = tints.bot,
        }
      or nil,
    tints.bot_left
        and {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot-left.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = tints.bot_left,
        }
      or nil,
    tints.bot_left
        and {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot-right.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = tints.bot_right,
        }
      or nil,
    tints.bot_mask
        and {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-bot-mask.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = tints.bot_mask,
        }
      or nil,
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-top.png",
      icon_size = 256,
      scale = 32 / 256,
      tint = tints.top,
    },
    tints.top_mask
        and {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-viscous-item-top-mask.png",
          icon_size = 256,
          scale = 32 / 256,
          tint = tints.top_mask,
        }
      or nil,
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
  return clean_table(recipe_icons)
end

-- CREATE VISCOUS LIQUID FILTERING RECIPE ICONS (NOT FOR FLUIDS)
function angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
  filter_type,
  tints,
  bot_molecules_icon,
  top_molecules_icon
)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } } )
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } } )

  -- filter_type is a string, can be "coal" or "ceramic"
  local valid_filter_type = {
    ["coal"] = true,
    ["ceramic"] = true,
  }
  filter_type = valid_filter_type[filter_type] and filter_type or "coal"

  local viscous_liquid_fluid_icon = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, tints)

  local recipe_icons = {
    viscous_liquid_fluid_icon[1], -- base layer required for background shadow
    {
      icon = string.format("__angelsrefininggraphics__/graphics/icons/filter-%s.png", filter_type),
      icon_size = 32,
      scale = 0.85,
    },
  }
  viscous_liquid_fluid_icon[1] = nil
  viscous_liquid_fluid_icon = clean_table(viscous_liquid_fluid_icon)
  for _, viscous_liquid_fluid_icon_layer in pairs(viscous_liquid_fluid_icon) do
    table.insert(recipe_icons, viscous_liquid_fluid_icon_layer)
  end
  table.insert(recipe_icons, {
    icon = string.format("__angelsrefininggraphics__/graphics/icons/angels-liquid/filter-%s-front.png", filter_type),
    icon_size = 32,
    scale = 0.85,
  })
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
  return clean_table(recipe_icons)
end

-- CREATE SOLID RECIPE ICONS (NOT FOR ICONS)
function angelsmods.functions.create_solid_recipe_icon(bot_molecules_icon, solid_item_name, top_molecules_icon)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } } )
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } } )

  local recipe_icons = util.table.deepcopy(get_icons(solid_item_name))

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

function angelsmods.functions.get_fluid_recipe_tint(fluid_name)
  -- returns a crafting_machine_tint depending on the fluid color
  local fluid = data.raw.fluid[fluid_name]
  return fluid
      and {
        primary = {
          r = fluid.base_color.r or 0,
          g = fluid.base_color.g or 0,
          b = fluid.base_color.b or 0,
          a = 185 / 255,
        },
        secondary = {
          r = fluid.flow_color.r or 0,
          g = fluid.flow_color.g or 0,
          b = fluid.flow_color.b or 0,
          a = 185 / 255,
        },
      }
    or nil
end

function angelsmods.functions.get_recipe_tints(layers, opacity)
  --can parse direct colours or search for items (currently only works for multiple fluids)
  local tints = {}
  local opacity = opacity or 185 / 255
  local alpha = opacity > 1 and opacity / 255 or opacity
  for index, name in pairs(layers) do
    if type(name) == "table" then
      tints[index] = name
      --ammend alpha
      tints[index].a = opacity
        or (
          tints[index].a and tints[index].a --if alpha, maintain
          or ((tints[index].r < 1 and tints[index].g < 1) and alpha or alpha * 255)
        )
    elseif name == nil then --skip
    elseif type(name) == "string" then
      --search through items and fluids
      local found = ""
      for _, type in pairs({
        "fluid",--[[,"item"]]
      }) do
        if data.raw[type][name] then
          local base = data.raw[type][name]
          tints[index] = {
            r = base.base_color.r or 0,
            g = base.base_color.g or 0,
            b = base.base_color.b or 0,
            a = base.base_color.a --if alpha, maintain
              or (((base.base_color.r or base.base_color[1]) < 1 and (base.base_color.g or base.base_color[2]) < 1) and alpha or alpha * 255),
          }
          break
        end
      end
    end
  end
  return {
    primary = (layers[1] ~= nil) and tints[1] or nil,
    secondary = (layers[2] ~= nil) and tints[2] or nil,
    tertiary = (layers[3] ~= nil) and tints[3] or nil,
    quaternary = (layers[4] ~= nil) and tints[4] or nil,
    --[[quinary = (layers[5] ~= nil) and tints[5] or nil, --this and the remaining ones are not currently supported by base game
    senary = (layers[6] ~= nil) and tints[6] or nil,
    septenary = (layers[7] ~= nil) and tints[7] or nil,
    octanry = (layers[8] ~= nil) and tints[8] or nil,
    nonary = (layers[9] ~= nil) and tints[9] or nil,
    denary = (layers[10] ~= nil) and tints[10] or nil]]
  }
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
-------------------------------------------------------------------------------
-- FLUID FLOW AND RECIPE COLOUR FUNCTIONS -------------------------------------
-------------------------------------------------------------------------------
--the following functions were gratefully donated by @Maxreader on Discord
local function isColor(input)
  if type(input) ~= "table" then
    return nil
  end
  local length = table_size(input)
  if length ~= 3 and length ~= 4 then
    return nil
  end
  local is_small = true
  for _, v in pairs(input) do
    if v > 1 then
      is_small = false
      break
    end
  end
  if not is_small then
    for k, v in pairs(input) do
      input[k] = v / 255
    end
  end
  local color = {
    r = input.r or input[1],
    g = input.g or input[2],
    b = input.b or input[3],
    a = input.a or input[4] or 1,
  }
  return color
end

local function findRGB(inputString)
  if type(inputString) ~= "string" then
    return nil
  end
  if inputString:find("%a") then
    return nil
  end
  local rawColor = util.split(inputString:gsub("%D", " "), " ")
  if #rawColor < 3 then
    return nil
  end
  local color = {}
  for k, v in pairs(rawColor) do
    color[k] = v / 255
  end
  return {
    r = color[1],
    g = color[2],
    b = color[3],
    a = color[4] or 1,
  }
end

--modified version of util.color provided by API
local function findHex(hex)
  if type(hex) ~= "string" then
    return nil
  end
  if hex:find("%X") or #hex > 8 or #hex == 5 or #hex == 7 then
    return nil
  end

  local function h(i, j)
    return j and tonumber("0x" .. hex:sub(i, j)) / 255 or tonumber("0x" .. hex:sub(i, i)) / 15
  end

  hex = hex:gsub("#", "")
  return #hex == 6 and { r = h(1, 2), g = h(3, 4), b = h(5, 6) }
    or #hex == 3 and { r = h(1), g = h(2), b = h(3) }
    or #hex == 8 and { r = h(1, 2), g = h(3, 4), b = h(5, 6), a = h(7, 8) }
    or #hex == 4 and { r = h(1), g = h(2), b = h(3), a = h(4) }
    or #hex == 2 and { r = h(1, 2), g = h(1, 2), b = h(1, 2) }
    or #hex == 1 and { r = h(1), g = h(1), b = h(1) }
    or { r = 1, g = 1, b = 1 }
end

local function toColor(color)
  return isColor(color) or findHex(color) or findRGB(color) or { r = 0, g = 0, b = 0, a = 1 }
end
local function RGBtoHSV(color)
  color = toColor(color)
  local r, g, b = color.r, color.g, color.b
  local max = math.max(r, g, b)
  local min = math.min(r, g, b)
  local range = max - min
  local h
  if range == 0 then
    h = 0
  elseif max == r then
    h = (g - b) / range * 60
  elseif max == g then
    h = (2 + (b - r) / range) * 60
  elseif max == b then
    h = (4 + (r - g) / range) * 60
  end
  if h < 0 then
    h = h + 360
  end
  local v = max
  local s = range / max
  return {
    h = h,
    s = s,
    v = v,
    a = color.a or 1,
  }
end

local function HSVtoRGB(color)
  local h, s, v, a = color.h, color.s, color.v, color.a
  local function f(n)
    local k = (n + h / 60) % 6
    return v - v * s * math.max(math.min(k, 4 - k, 1), 0)
  end
  return {
    r = f(5),
    g = f(3),
    b = f(1),
    a = color.a or 1,
  }
end

local function rgb_fetch(chemical_formula)
  local rgb = {}
  local codes = get_molecule_codes(chemical_formula)
  for i = 1, #codes do
    local tint_table = icon_tints_table[codes[i].form]
    if tint_table then
      rgb[i] = #tint_table <= i and tint_table[i] or tint_table[1]
    else
      rgb[i] = { 0, 0, 0 }
    end
  end
  return rgb
end

local function total_shade(chemical_formula)
  local change = 0
  local array = get_molecule_codes(chemical_formula)
  for i = 1, #array do
    change = change + array[i].amount
  end
  return change
end

function angelsmods.functions.fluid_color(chemical_formula) --color blending based on a general chemical formula
  local color = {}
  local arrays = get_molecule_codes(chemical_formula)
  local lettering, multi, rgb = {}, {}, {}
  for i = 1, #arrays do
    table.insert(lettering, arrays[i].form)
    table.insert(multi, arrays[i].amount)
    --table.insert(rgb, arrays[i].rgb)
  end
  rgb = rgb_fetch(chemical_formula)
  --local rgb = formula_extraction_1a(chemical_formula)--formula_extraction_1(chemical_formula)
  --local multi = formula_extraction_2(chemical_formula)
  --should only consist of the first 3 items, with an optional 4th
  local red, green, blue, alpha, comb = 0, 0, 0, 0, 0
  local ave_denom = #rgb
  if
    ave_denom == 2
    and (
      (rgb[1] == icon_tints_table["C"][1] and rgb[2] == icon_tints_table["H"][1])
      or (rgb[1] == icon_tints_table["H"][1] and rgb[2] == icon_tints_table["C"][1])
    )
  then
    -- Hydrocarbon only
    local m_c = tonumber(multi[1]) / 8
    local m_h = tonumber(multi[2]) / 12
    local value = ((m_h / m_c / 4) ^ 2.2) / 0.41
    local function sigmoid(x, b, c) --more maxreader madness :D
      return 1 / (1 + 2 ^ (-b * (x + c)))
    end
    value = sigmoid(value, 20, -0.25)
    for i, j in pairs({ "r", "g", "b" }) do
      color[j] = value
    end
  else --everything else
    for i, colour in pairs(rgb) do
      alpha = colour[4] or 1
      red = red + ((colour[1] / 255) ^ 2 * tonumber(multi[i]) * alpha)
      green = green + ((colour[2] / 255) ^ 2 * tonumber(multi[i]) * alpha)
      blue = blue + ((colour[3] / 255) ^ 2 * tonumber(multi[i]) * alpha)
      comb = comb + tonumber(multi[i] * alpha)
    end
    color = { r = math.sqrt(red / comb), g = math.sqrt(green / comb), b = math.sqrt(blue / comb), a = 1 }
    --normalise
    local HSV = RGBtoHSV(color)
    HSV.v = 0.8 * HSV.v
    HSV.s = 1 - 0.60 * (1 - HSV.s)
    color = HSVtoRGB(HSV)
  end
  return color
end

function angelsmods.functions.flow_color(chemical_formula) --makes it lighter by some margin
  local change = total_shade(chemical_formula) * 6
  local chemical_formula = chemical_formula .. "H" .. change --table.insert(chemical_formula,"H"..change)
  local color = angelsmods.functions.fluid_color(chemical_formula)
  return color
end

-------------------------------------------------------------------------------
-- ADDS A TECH TO IGNORE FOR THE TECH MOD -------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.add_exception(to_add)
  if --type(to_add) == string and
    angelsmods.industries and angelsmods.industries.tech_exceptions
  then
    table.insert(angelsmods.industries.tech_exceptions, to_add)
  end
end

-------------------------------------------------------------------------------
-- PRODUCTIVITY RESTRICTION ---------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.allow_productivity(recipe_name)
  local recipe = data.raw.recipe[recipe_name] 
  if recipe then
    recipe.allow_productivity = true
  end
end

function angelsmods.functions.remove_productivity(recipe_name)
  local recipe = data.raw.recipe[recipe_name] 
  if recipe then
    recipe.allow_productivity = nil
  end
end

function angelsmods.functions.allow_bio_productivity(entity_name)
  if data.raw["assembling-machine"][entity_name] then
    angelsmods.refining.productivity_exception[entity_name] = true
  end
end

function angelsmods.functions.remove_bio_productivity(entity_name)
  angelsmods.refining.productivity_exception[entity_name] = nil
end

-------------------------------------------------------------------------------
-- OVERRIDES STACK SET CONDITION FOR LIST OF ITEMS ----------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.override_item_conditions(override)
  for i, items in pairs(override.list) do
    if data.raw.item[items] then
      if data.raw.item[items].stack_size <= override.value then
        data.raw.item[items].stack_size = override.value
      end
    end
  end
end

-------------------------------------------------------------------------------
-- MODIFY FLAGS ---------------------------------------------------------------
-------------------------------------------------------------------------------
local building_types = {
  "assembling-machine",
  "furnace",
  "mining-drill",
  "lab",
  "offshore-pump",
  "pump",
  "pipe",
  "pipe-to-ground",
  "rocket-silo",
  "radar",
  "beacon",
  "boiler",
  "generator",
  "solar-panel",
  "accumulator",
  "reactor",
  "heat-pipe",
  "electric-pole",
  "wall",
  "gate",
  "container",
  "storage-tank",
}
function angelsmods.functions.add_flag(entity, flag) -- Adds a flag to an item/fluid (may be a table containing a list of items/fluids)
  if type(entity) == "table" then
    for _, ent in pairs(entity) do
      angelsmods.functions.add_flag(ent, flag)
    end
    return
  end
  if type(flag) == "table" then
    for _, f in pairs(flag) do
      angelsmods.functions.add_flag(entity, f)
    end
    return
  end

  for _, type in pairs({ "item", "tool", "item-with-entity-data", "fluid" }) do --list of things to hide
    local to_add = data.raw[type][entity] or nil
    if to_add then
      if to_add.flags then
        table.insert(to_add.flags, flag)
      else
        to_add.flags = { flag }
      end
    end
  end
end

function angelsmods.functions.remove_flag(entity, flag_to_remove) -- Removes a flag to an item/fluid (may be a table containing a list of items/fluids)
  if type(entity) == "table" then
    for _, ent in pairs(entity) do
      angelsmods.functions.remove_flag(ent, flag_to_remove)
    end
    return
  end
  if type(flag_to_remove) == "table" then
    for _, f in pairs(flag_to_remove) do
      angelsmods.functions.remove_flag(entity, f)
    end
    return
  end

  for _, type in pairs({ "item", "tool", "item-with-entity-data", "fluid" }) do
    local to_remove = data.raw[type][entity]
    if to_remove and to_remove.flags then
      for i, f in pairs(to_remove.flags) do
        if f == flag_to_remove then
          table.remove(to_remove.flags, i)
          break
        end
      end
    end
  end
end

-------------------------------------------------------------------------------
-- HIDE / UNHIDE --------------------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.hide(entity)
  if type(entity) == "table" then
    for _, ent in pairs(entity) do
      angelsmods.functions.hide(ent)
    end
    return
  end

  for _, type in pairs({ "item", "tool", "item-with-entity-data", "fluid" }) do --list of things to hide
    local to_add = data.raw[type][entity] or nil
    if to_add then
      to_add.hidden = true
      if type == "fluid" then --also remove barrel if a fluid
        angelsmods.functions.disable_barreling_recipes(entity)

        -- disable bob's voiding recipe
        angelsmods.functions.OV.disable_recipe("void-" .. entity)

        -- ...and angel's voiding recipe(s)
        for _, void_category in pairs({ "water", "chemical" }) do
          angelsmods.functions.OV.disable_recipe("angels-" .. void_category .. "-void-" .. entity)
        end
      end

      -- hide actual (building) entity if not not just an item
      if to_add.place_result == entity then
        for _, type in pairs(building_types) do
          to_add = data.raw[type][entity] -- entity-types...
          if to_add and not to_add.autoplace then -- do not hide entities that are autoplaced (required for editor mode)
            to_add.hidden = true
            -- also have to make sure next_upgrade is not set to this (hidden) entity
            if to_add.fast_replaceable_group then
              for _, type in pairs(building_types) do
                for _, entity in pairs(data.raw[type]) do
                  if
                    entity.fast_replaceable_group == to_add.fast_replaceable_group
                    and entity.next_upgrade == to_add.name
                  then
                    entity.next_upgrade = to_add.next_upgrade
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

function angelsmods.functions.unhide(entity)
  if type(entity) == "table" then
    for _, ent in pairs(entity) do
      angelsmods.functions.unhide(ent)
    end
    return
  end

  for _, type in pairs({ "item", "tool", "item-with-entity-data", "fluid" }) do
    local to_remove = data.raw[type][entity]
    if to_remove then
      to_remove.hidden = false
      -- THIS DOES NOT RE-ENABLE THE BARRELING RECIPES FOR THIS FLUID!

      -- actual entity if not not just an item
      if to_remove.place_result == entity then
        for _, type in pairs(building_types) do
          to_remove = data.raw[type][entity] --entity-types...
          if to_remove then
            to_remove.hidden = false
          end
        end
      end
    end
  end
end

-------------------------------------------------------------------------------
-- MODIFY LOCATION ------------------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.move_item(i_name, i_subgroup, i_order, i_type)
  i_type = i_type or "item"

  local i = data.raw[i_type] and data.raw[i_type][i_name] or {}
  i.subgroup = i_subgroup or i.subgroup
  i.order = i_order or i.order
end

-------------------------------------------------------------------------------
-- MODIFY BARRELING RECIPES ---------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.disable_barreling_recipes(fluid_to_disable)
  angelsmods.functions.OV.disable_recipe(fluid_to_disable .. "-barrel")
  angelsmods.functions.OV.disable_recipe("empty-" .. fluid_to_disable .. "-barrel")
  --angelsmods.functions.OV.disable_recipe(fluid_to_disable .. "-liquid-bot")
  --angelsmods.functions.OV.disable_recipe("empty-" .. fluid_to_disable .. "-liquid-bot")
  angelsmods.functions.hide(fluid_to_disable .. "-barrel")
end

function angelsmods.functions.modify_barreling_icon()
  for ix, item in pairs(data.raw.item) do
    if item.subgroup and string.sub(item.name, -6, -1) == "barrel" then
      local icon_name = string.sub(item.name, 1, -8)
      for kx, fluid in pairs(data.raw.fluid) do
        if fluid.name == icon_name then
          if item.icons then
            if fluid.icons then
              item.icons =
                util.combine_icons(item.icons, fluid.icons, { scale = 0.5, shift = { 0, 5 } }, 64)
            elseif fluid.icon then
              local icon_size = fluid.icon_size or 64
              table.insert(item.icons, {
                icon = fluid.icon,
                icon_size = icon_size,
                shift = { 0, 5 },
                scale = 16 / icon_size,
              })
            end
          end
        end
      end
    end
  end
end

function angelsmods.functions.modify_barreling_recipes()
  angelsmods.functions.modify_barreling_icon()
  if angelsmods.trigger.enable_auto_barreling then
    local items = data.raw.item
    local recipes = data.raw.recipe

    for fn, _ in pairs(data.raw.fluid) do
      if data.raw.item[fn .. "-barrel"] then
        if recipes[fn .. "-barrel"] then
          recipes[fn .. "-barrel"].hidden = true
          recipes[fn .. "-barrel"].category = "angels-barreling-pump"
        end
        if recipes["empty-" .. fn .. "-barrel"] then
          recipes["empty-" .. fn .. "-barrel"].hidden = true
          recipes["empty-" .. fn .. "-barrel"].category = "angels-barreling-pump"
        end
      end
    end
  end
end

function angelsmods.functions.create_barreling_fluid_subgroup(fluids_to_move)
  local groups = data.raw["item-group"]
  local subgroups = data.raw["item-subgroup"]

  local items = data.raw.item
  local recipes = data.raw.recipe

  if not fluids_to_move or #fluids_to_move == 0 then
    fluids_to_move = data.raw.fluid
  end

  for fn, fd in pairs(fluids_to_move) do
    local barrel = items[fn .. "-barrel"]

    if barrel then
      local recipe = recipes[fn]
      local subgroup_name
      if barrel.subgroup ~= "barrel" then
        subgroup_name = barrel.subgroup
      elseif fd.subgroup then
        subgroup_name = fd.subgroup
      elseif recipe and recipe.subgroup then
        if recipe.subgroup == "fluid-recipes" then
          subgroup_name = "vanilla"
        else
          subgroup_name = recipe.subgroup
        end
      else
        subgroup_name = "vanilla"
      end
      local subgroup = subgroups[subgroup_name]
      local subgroup_order = subgroup and subgroup.order or "z"

      local group = groups[subgroup and subgroup.group or "vanilla"]
      local group_order = group and group.order or "z"

      barrel.subgroup = "angels-fluid-control-" .. subgroup_name
      barrel.order = fd.order or (recipe and recipe.order) or "z"

      if not data.raw["item-subgroup"][barrel.subgroup] then
        data:extend({
          {
            type = "item-subgroup",
            name = barrel.subgroup,
            group = "angels-fluid-control",
            order = "z-" .. group_order .. "-" .. subgroup_order,
          },
        })
      end

      if recipes[fn .. "-barrel"] then
        recipes[fn .. "-barrel"].subgroup = barrel.subgroup
        recipes[fn .. "-barrel"].order = barrel.order .. "-a"
        recipes["empty-" .. fn .. "-barrel"].subgroup = barrel.subgroup
        recipes["empty-" .. fn .. "-barrel"].order = barrel.order .. "-b"
      end
    end
  end
end

-------------------------------------------------------------------------------
-- CREATE VOID RECIPES --------------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.make_void(fluid_name, void_category, void_amount) -- categories: chemical (fluid, flare-stack)
  --LOCAL DEFINITIONS                                                           --             water (fluild, clarifier)
  local recipe = {} --             bio (item, compost)
  local void_input_amount -- amount(optional): amount of input/output, default 1
  local void_input_type
  local void_input_subgroup
  local void_process_time
  local void_output_item
  local void_output_amount
  local void_output_probability
  local void_tint

  if data.raw.fluid[fluid_name] then -- fluid voids
    if void_category == "water" then
      void_amount = void_amount or 400
      void_input_amount = void_amount > 1 and void_amount or 1
      void_input_type = "fluid"
      void_input_subgroup = data.raw.fluid[fluid_name].subgroup or "angels-void"
      void_process_time = 5
      void_output_item = "angels-water-void"
      void_output_amount = void_amount < 1 and void_amount or 1
      void_output_probability = 0
      void_tint = angelsmods.functions.get_fluid_recipe_tint(fluid_name--[[,"water"]])
    elseif void_category == "chemical" then
      void_amount = void_amount or 100
      void_input_amount = void_amount > 1 and void_amount or 1
      void_input_type = "fluid"
      void_input_subgroup = data.raw.fluid[fluid_name].subgroup or "angels-void"
      void_process_time = 1
      void_output_item = "angels-chemical-void"
      void_output_amount = void_amount < 1 and void_amount or 1
      void_output_probability = 0
      void_tint = angelsmods.functions.get_fluid_recipe_tint(fluid_name)
    else
      recipe = nil -- no valid void category found
    end
  elseif data.raw.item[fluid_name] then -- item voids
    if void_category == "bio" then
      void_amount = void_amount or 1
      void_input_amount = void_amount > 1 and void_amount or 1
      void_input_type = "item"
      void_input_subgroup = data.raw.item[fluid_name].subgroup or "angels-void"
      void_process_time = 1
      void_output_item = "angels-solid-compost"
      void_output_amount = void_amount < 1 and 1 / void_amount or 1
      void_output_probability = 1
    else
      recipe = nil -- no valid void category found
    end
  else
    recipe = nil -- no valid void object found
  end

  if recipe then -- valid
    recipe.type = "recipe"
    recipe.name = "angels-" .. void_category .. "-void-" .. fluid_name
    recipe.localised_name = { "recipe-name.angels-" .. void_category .. "-void", { void_input_type.."-name." .. fluid_name }}
    recipe.category = "angels-" .. void_category .. "-void"
    recipe.enabled = true
    recipe.hide_from_player_crafting = angelsmods.trigger.enable_hide_void
    recipe.energy_required = void_process_time
    recipe.ingredients = {
      {
        type = void_input_type,
        name = fluid_name,
        amount = void_input_amount,
      },
    }
    recipe.results = {
      {
        type = "item",
        name = void_output_item,
        amount = void_output_amount,
        probability = void_output_probability ~= 1 and void_output_probability or nil,
      },
    }
    recipe.main_product = void_output_item
    recipe.show_amount_in_title = false
    recipe.always_show_products = void_output_amount * void_output_probability > 0
    recipe.always_show_made_in = true
    recipe.allow_decomposition = false
    recipe.allow_as_intermediate = false
    recipe.crafting_machine_tint = void_tint or nil
    recipe.hide_from_stats = false
    recipe.subgroup = "angels-" .. void_category .. "-void"
    recipe.order = data.raw["item-group"][data.raw["item-subgroup"][void_input_subgroup].group].order or "z"
    --recipe.order = recipe.order .. "[" .. data.raw["item-subgroup"][void_input_subgroup].group .. "]"
    recipe.order = recipe.order .. "-"
    recipe.order = recipe.order .. data.raw["item-subgroup"][void_input_subgroup].order
    --recipe.order = recipe.order .. "[" .. void_input_subgroup .. "]"
    recipe.order = recipe.order .. "-"
    recipe.order = recipe.order .. ((data.raw.fluid[fluid_name] or data.raw.item[fluid_name] or {}).order or "z")
    --recipe.order = recipe.order .. "[" .. fluid_name .. "]"
    recipe.order = string.len(recipe.order) <= 200 and recipe.order or recipe.order:sub(1, 200) -- order limited to 200 characters

    recipe.icons =
      util.table.deepcopy(get_icons(void_output_item) or { { icon = "__angelsrefininggraphics__/graphics/icons/void.png", icon_size = 32 } })
    local fluid_icon = util.table.deepcopy(get_icons(fluid_name) or {})
    for _, iconLayer in pairs(fluid_icon) do
      table.insert(recipe.icons, {
        icon = iconLayer.icon,
        icon_size = iconLayer.icon_size or nil,
        scale = (iconLayer.scale or recipe.icon_size / (iconLayer.icon_size or 32)) * 0.5,
        shift = {
          ((iconLayer.shift or {})[1] or (iconLayer.shift or {})["x"] or 0) * 0.5 - 8,
          ((iconLayer.shift or {})[2] or (iconLayer.shift or {})["y"] or 0) * 0.5 - 8,
        },
        tint = iconLayer.tint,
      })
    end

    data:extend({ recipe })
  end
end

-------------------------------------------------------------------------------
-- ORE HANDLING ---------------------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.ore_exists(ore_name)
  return data.raw.item[ore_name] and true or false
end

function angelsmods.functions.is_special_vanilla()
  return (not mods["angelssmelting"]) and (not mods["bobplates"]) and true or false
end

function angelsmods.functions.get_trigger_names()
  local special_vanilla = angelsmods.functions.is_special_vanilla()
  return {
    -- TIER 1 ORES
    ["iron-ore"] = "iron",
    ["angels-iron-nugget"] = special_vanilla and "iron" or "unused", -- special vanilla only
    ["angels-iron-pebbles"] = special_vanilla and "iron" or "unused", -- special vanilla only
    ["angels-iron-slag"] = special_vanilla and "iron" or "unused", -- special vanilla only
    ["copper-ore"] = "copper",
    ["angels-copper-nugget"] = special_vanilla and "copper" or "unused", -- special vanilla only
    ["angels-copper-pebbles"] = special_vanilla and "copper" or "unused", -- special vanilla only
    ["angels-copper-slag"] = special_vanilla and "copper" or "unused", -- special vanilla only
    -- TIER 1.5 ORES
    ["angels-tin-ore"] = "tin",
    ["angels-lead-ore"] = "lead",
    ["angels-quartz"] = "silicon",
    ["angels-nickel-ore"] = "nickel",
    ["angels-manganese-ore"] = "manganese",
    -- TIER 2 ORES
    ["angels-zinc-ore"] = "zinc",
    ["angels-bauxite-ore"] = "aluminium",
    ["angels-cobalt-ore"] = "cobalt",
    ["angels-silver-ore"] = "silver",
    ["angels-fluorite-ore"] = "fluorite", -- byproduct
    -- TIER 2.5 ORES
    ["angels-gold-ore"] = "gold",
    -- TIER 3 ORES
    ["angels-rutile-ore"] = "titanium",
    ["uranium-ore"] = "uranium",
    -- TIER 4 ORES
    ["angels-tungsten-ore"] = "tungsten",
    ["angels-thorium-ore"] = "thorium",
    ["angels-chrome-ore"] = "chrome",
    ["angels-platinum-ore"] = "platinum",
  }
end

function angelsmods.functions.ore_enabled(ore_name)
  if angelsmods.trigger.ores[angelsmods.functions.get_trigger_names()[ore_name] or ore_name] then
    return true
  end
  if angelsmods.trigger.refinery_products[ore_name] then
    return true
  end
  return false
end

function angelsmods.functions.get_ore_name(ore_name)
  local ore_lookup_table = {
    ["angels-copper-nugget"] = "angels-copper-nugget",
    ["angels-copper-pebbles"] = "angels-copper-pebbles",
    ["angels-copper-slag"] = "angels-copper-slag",
    ["angels-iron-nugget"] = "angels-iron-nugget",
    ["angels-iron-pebbles"] = "angels-iron-pebbles",
    ["angels-iron-slag"] = "angels-iron-slag",
    ["angels-bauxite-ore"] = mods["bobores"] and "bob-bauxite-ore" or "angels-bauxite-ore",
    ["angels-chrome-ore"] = "angels-chrome-ore",
    ["angels-cobalt-ore"] = mods["bobores"] and "bob-cobalt-ore" or "angels-cobalt-ore",
    ["copper-ore"] = "copper-ore",
    ["angels-fluorite-ore"] = "angels-fluorite-ore",
    ["angels-gold-ore"] = mods["bobores"] and "bob-gold-ore" or "angels-gold-ore",
    ["iron-ore"] = "iron-ore",
    ["angels-lead-ore"] = mods["bobores"] and "bob-lead-ore" or "angels-lead-ore",
    ["angels-nickel-ore"] = mods["bobores"] and "bob-nickel-ore" or "angels-nickel-ore",
    ["angels-platinum-ore"] = "angels-platinum-ore",
    ["angels-quartz"] = mods["bobores"] and "bob-quartz" or "angels-quartz",
    ["angels-rutile-ore"] = mods["bobores"] and "bob-rutile-ore" or "angels-rutile-ore",
    ["angels-silver-ore"] = mods["bobores"] and "bob-silver-ore" or "angels-silver-ore",
    ["angels-thorium-ore"] = mods["bobores"] and "bob-thorium-ore" or "angels-thorium-ore",
    ["angels-tin-ore"] = mods["bobores"] and "bob-tin-ore" or "angels-tin-ore",
    ["angels-tungsten-ore"] = mods["bobores"] and "bob-tungsten-ore" or "angels-tungsten-ore",
    ["uranium-ore"] = "uranium-ore",
    ["angels-zinc-ore"] = mods["bobores"] and "bob-zinc-ore" or "angels-zinc-ore",
  }
  return ore_lookup_table[ore_name] or ore_name
end

-------------------------------------------------------------------------------
-- MODIFY CRAFTING_CATEGORY ---------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.add_crafting_category(crafting_machine_type, crafting_machine_name, crafting_category)
  if not data.raw[crafting_machine_type] then
    return
  end
  if not data.raw[crafting_machine_type][crafting_machine_name] then
    return
  end

  if type(crafting_category) == "table" then
    for _, category in pairs(crafting_category) do
      angelsmods.functions.add_crafting_category(crafting_machine_type, crafting_machine_name, category)
    end
  end
  if not data.raw["recipe-category"][crafting_category] then
    return
  end

  local crafting_machine_prototype = data.raw[crafting_machine_type][crafting_machine_name]
  crafting_machine_prototype.crafting_categories = crafting_machine_prototype.crafting_categories or {}

  for _, category_name in pairs(crafting_machine_prototype.crafting_categories) do
    if category_name == crafting_category then
      return -- already present
    end
  end

  table.insert(crafting_machine_prototype.crafting_categories, crafting_category)

  if crafting_category ~= "angels-unused-machine" then
    angelsmods.functions.remove_crafting_category(crafting_machine_type, crafting_machine_name, "angels-unused-machine")
  end
end

function angelsmods.functions.remove_crafting_category(crafting_machine_type, crafting_machine_name, crafting_category)
  if not data.raw[crafting_machine_type] then
    return
  end
  if not data.raw[crafting_machine_type][crafting_machine_name] then
    return
  end

  local crafting_machine_categories = data.raw[crafting_machine_type][crafting_machine_name].crafting_categories
  if not crafting_machine_categories then
    return
  end

  if type(crafting_category) == "table" then
    for _, category in pairs(crafting_category) do
      angelsmods.functions.remove_crafting_category(crafting_machine_type, crafting_machine_name, category)
    end
  end

  for category_index, category_name in pairs(crafting_machine_categories) do
    if category_name == crafting_category then
      table.remove(crafting_machine_categories, category_index)

      if next(crafting_machine_categories) then
        return
      else
        angelsmods.functions.add_crafting_category(
          crafting_machine_type,
          crafting_machine_name,
          "angels-unused-machine"
        )
      end
    end
  end
end

local function box_equal(b1, b2)
  if not (b1 and b2) then
    return false
  end

  local function pos_equal(p1, p2)
    if not (p1 and p2) then
      return false
    end

    local p1x = p1.x or p1[1] or nil
    local p2x = p2.x or p2[1] or nil
    if not (p1x and p1x == p2x) then
      return false
    end

    local p1y = p1.y or p1[2] or nil
    local p2y = p2.y or p2[2] or nil

    return (p1y and p1y == p2y)
  end

  if not pos_equal(b1.left_top or b1[1], b2.left_top or b2[1]) then
    return false
  end
  return pos_equal(b1.right_bottom or b1[2], b2.right_bottom or b2[2])
end

-------------------------------------------------------------------------------
-- MODIFY FAST_REPLACE_CATEGORY -----------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.set_fast_replace_category(crafting_machine_type, crafting_machine_name, next_upgrade)
  --search for new category (if needed), skip if identical
  if not data.raw[crafting_machine_type] then
    return
  end
  local crafting_machine1 = crafting_machine_name and data.raw[crafting_machine_type][crafting_machine_name]
  if not crafting_machine1 then
    return
  end
  local crafting_machine2 = next_upgrade and data.raw[crafting_machine_type][next_upgrade]
  if not crafting_machine2 then
    return
  end
  --get current FRC
  local FRC1 = crafting_machine1.fast_replaceable_group
  local FRC2 = crafting_machine2.fast_replaceable_group
  if FRC1 == FRC2 then
    return
  end

  if FRC2 then --change it
    if box_equal(crafting_machine1.collision_box, crafting_machine2.collision_box) then
      crafting_machine1.fast_replaceable_group = FRC2
      angelsmods.functions.set_fast_replace_category(
        crafting_machine_type,
        crafting_machine1.next_upgrade,
        crafting_machine1.name
      )
    else
      --boxes don't match... nil out the properties
      crafting_machine1.fast_replaceable_group = nil
      --clobber next_upgrade too
      crafting_machine1.next_upgrade = nil
    end
  else -- FRC2==nil
    crafting_machine2.fast_replaceable_group = FRC1 --transition 2 to 1?
    angelsmods.functions.set_fast_replace_category(
      crafting_machine_type,
      crafting_machine2.next_upgrade,
      crafting_machine2.name
    )
  end
end

-------------------------------------------------------------------------------
-- MODIFY NEXT_UPGRADE --------------------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.set_next_upgrade(crafting_machine_type, crafting_machine_name, next_upgrade)
  if not data.raw[crafting_machine_type] then
    return
  end
  local crafting_machine = data.raw[crafting_machine_type][crafting_machine_name]

  if not crafting_machine then
    return
  end

  crafting_machine.next_upgrade = next_upgrade
  if next_upgrade then
    angelsmods.functions.remove_flag(
      crafting_machine.minable and crafting_machine.minable.result or crafting_machine_name,
      "not-upgradable"
    )
  end
  --check upgrade_category
  angelsmods.functions.set_fast_replace_category(crafting_machine_type, crafting_machine_name, next_upgrade)
end

-------------------------------------------------------------------------------
-- CHECK IF TECH USES SCIENCE PACK --------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.tech_uses_science_pack(tech_name, pack)
  if type(tech_name) == "string" then
    local technology = data.raw.technology[tech_name]
    if technology and technology.unit and technology.unit.ingredients then
      local addit = true
      for i, ingredient in pairs(technology.unit.ingredients) do
        if ingredient[1] == pack then
          return true
        end
      end
    end
  end

  return false
end

-------------------------------------------------------------------------------
-- SET ELEVATED RAIL COLLISION FOR BUILDINGS --------------------------------------------
-------------------------------------------------------------------------------
function angelsmods.functions.set_building_collision_mask(b_type, layers_to_add)
    -- Function can also be used for adding other collision layers

    if b_type == 'asm' then
        b_type = 'assembling-machine'
    end

    local mask_util = require('__core__/lualib/collision-mask-util')

    -- Default layers for buildings that elevated rails can pass over freely
    local collision_mask = mask_util.get_default_mask(b_type)

    -- Add elevated rail collision layer (and any other layers if applicable)
    for _, layer in pairs(layers_to_add) do
        collision_mask.layers[layer] = true
    end

    return collision_mask
end
