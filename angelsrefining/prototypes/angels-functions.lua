--GET ICON/ICONS FROM FLUID/ITEM
local function get_icon_or_icons(object_name)
  local prototype_list = {"item", "fluid"}
  for _, prototype in pairs(prototype_list) do
    local object = data.raw[prototype][object_name]
    if object then
      if object.icon then
        return object.icon
      end
      if object.icons then
        return object.icons
      end
    end
  end
  --something is wrong here but we need to return something
  return "__angelsrefining__/graphics/icons/void.png"
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
    local fluid_icon = get_icon_or_icons(fluid_name)
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
