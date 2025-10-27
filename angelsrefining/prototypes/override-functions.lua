local RB = require("prototypes.recipe-builder")
require("prototypes.angels-functions")

local ov_functions = {}
-- OVERRIDE DATA TABLES
local substitution_table, disable_table, modify_table, override_table, patch_table
-- HELPER FUNCTIONS
local building_types = {
  "assembling-machine",
  "mining-drill",
  "lab",
  "furnace",
  "offshore-pump",
  "pump",
  "rocket-silo",
  "radar",
  "beacon",
  "boiler",
  "generator",
  "solar-panel",
  "accumulator",
  "reactor",
  "electric-pole",
  "wall",
  "gate",
}

local function initialize_tables()
  substitution_table = {
    recipe_icons = {},
    recipe_items = {},
    technologies = {},
    science_packs = {},
  }

  disable_table = {
    recipes = {},
    technologies = {},
  }

  modify_table = {
    recipes = {},
    technologies = {},
  }

  override_table = {
    technologies = {},
  }

  patch_table = {}
end

local function guarantee_subtable(t, s)
  if not t[s] then
    t[s] = {}
  end
end

local function d_c(t)
  if type(t) == "table" then
    local result = {}
    for k, v in pairs(t) do
      result[k] = d_c(t[k])
    end
    return result
  else
    return t
  end
end

local function merge_ops(old, new)
  local i = #old + 1
  for j = 1, #new do
    old[i] = new[j]
    i = i + 1
  end
end

local function merge_patches(old, new)
  for k, v in pairs(new) do
    if k == "ingredients" or k == "results" then
      if old[k] then
        merge_ops(old[k], v)
      else
        old[k] = v
      end
    else
      old[k] = v
    end
  end
end

local function generate_gas_canister_icons(fluid)
  if mods["boblibrary"] then
    return {
      { icon = "__boblibrary__/graphics/icons/cylinder/gas-canister.png", icon_size = 32 },
      { icon = "__boblibrary__/graphics/icons/cylinder/cylinder-top.png", icon_size = 32, tint = fluid.flow_color },
      { icon = "__boblibrary__/graphics/icons/cylinder/cylinder-mid.png", icon_size = 32, tint = fluid.base_color },
    }
  else
    --something is wrong here but we need to return something
    return {
      { icon = "__angelsrefininggraphics__/graphics/icons/void.png", icon_size = 32 },
    }
  end
end

local function generate_liquid_canister_icons(fluid)
  if mods["boblibrary"] then
    return {
      { icon = "__boblibrary__/graphics/icons/cylinder/empty-canister.png", icon_size = 32 },
      { icon = "__boblibrary__/graphics/icons/cylinder/canister-top.png", icon_size = 32, tint = fluid.flow_color },
      { icon = "__boblibrary__/graphics/icons/cylinder/canister-bottom.png", icon_size = 32, tint = fluid.base_color },
    }
  else
    --something is wrong here but we need to return something
    return {
      { icon = "__angelsrefininggraphics__/graphics/icons/void.png", icon_size = 32 },
    }
  end
end

-- Generates the icons definition for a full-barrel recipe with the provided barrel name and fluid definition
local function generate_fill_barrel_icons(fluid, style)
  local f_icon
  if style == "gas" then
    f_icon = generate_gas_canister_icons(fluid)
  elseif style == "acid" then
    f_icon = generate_liquid_canister_icons(fluid)
  else
    f_icon = {
      { icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png", icon_size = 64 },
      {
        icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png",
        icon_size = 64,
        tint = fluid.base_color,
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png",
        icon_size = 64,
        tint = fluid.flow_color,
      },
    }
  end
  if fluid.icon and fluid.icon_size then
    table.insert(
      f_icon,
      { icon = fluid.icon, icon_size = fluid.icon_size, scale = 16.0 / fluid.icon_size, shift = { 4, -8 } }
    )
  elseif fluid.icons and util.combine_icons then
    f_icon = util.combine_icons(f_icon, util.table.deepcopy(fluid.icons), { scale = 0.5, shift = { 4, -8 } })
  end
  return f_icon
end

-- Generates the icons definition for a full-barrel item with the provided barrel name and fluid definition
local function generate_barrel_icons(fluid, style)
  local f_icon
  if style == "gas" then
    f_icon = generate_gas_canister_icons(fluid)
  elseif style == "acid" then
    f_icon = generate_liquid_canister_icons(fluid)
  else
    f_icon = {
      { icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png", icon_size = 64 },
      {
        icon = "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png",
        icon_size = 64,
        tint = fluid.base_color,
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png",
        icon_size = 64,
        tint = fluid.flow_color,
      },
    }
  end
  return f_icon
end

-- Generates the icons definition for a empty-barrel recipe with the provided barrel name and fluid definition
local function generate_empty_barrel_icons(fluid, style)
  local e_icon
  if style == "gas" then
    e_icon = generate_gas_canister_icons(fluid)
  elseif style == "acid" then
    e_icon = generate_liquid_canister_icons(fluid)
  else
    e_icon = {
      { icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png", icon_size = 64 },
      {
        icon = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png",
        icon_size = 64,
        tint = fluid.base_color,
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png",
        icon_size = 64,
        tint = fluid.flow_color,
      },
    }
  end
  if fluid.icon and fluid.icon_size then
    table.insert(
      e_icon,
      { icon = fluid.icon, icon_size = fluid.icon_size, scale = 16.0 / fluid.icon_size, shift = { 7, 8 } }
    )
  elseif fluid.icons and util.combine_icons then
    e_icon = util.combine_icons(e_icon, util.table.deepcopy(fluid.icons), { scale = 0.5, shift = { 7, 8 } })
  end
  return e_icon
end

-------------------------------------------------------------------------------
-- OVERRIDE TECHNOLOGY FUNCTIONS ----------------------------------------------
-------------------------------------------------------------------------------
ov_functions.add_unlock = function(technology, recipe)
  guarantee_subtable(modify_table.technologies, technology)
  guarantee_subtable(modify_table.technologies[technology], "unlocks")
  modify_table.technologies[technology].unlocks[recipe] = true
end

ov_functions.remove_unlock = function(technology, recipe)
  guarantee_subtable(modify_table.technologies, technology)
  guarantee_subtable(modify_table.technologies[technology], "unlocks")
  modify_table.technologies[technology].unlocks[recipe] = false
end

ov_functions.add_prereq = function(technology, prereq) --handles tech OR prereq as table
  if type(technology) == "table" then
    for tk, tech in pairs(technology) do
      guarantee_subtable(modify_table.technologies, tech)
      guarantee_subtable(modify_table.technologies[tech], "prereqs")
      modify_table.technologies[tech].prereqs[prereq] = true
    end
  else
    guarantee_subtable(modify_table.technologies, technology)
    guarantee_subtable(modify_table.technologies[technology], "prereqs")
    if type(prereq) == "table" then
      for pr, req in pairs(prereq) do
        modify_table.technologies[technology].prereqs[req] = true
      end
    else
      modify_table.technologies[technology].prereqs[prereq] = true
    end
  end
end

ov_functions.remove_prereq = function(technology, prereq) --handles tech OR prereq as table
  if type(technology) == "table" then
    for tk, tech in pairs(technology) do
      guarantee_subtable(modify_table.technologies, tech)
      guarantee_subtable(modify_table.technologies[tech], "prereqs")
      modify_table.technologies[tech].prereqs[prereq] = false
    end
  else
    guarantee_subtable(modify_table.technologies, technology)
    guarantee_subtable(modify_table.technologies[technology], "prereqs")
    if type(prereq) == "table" then
      for pr, req in pairs(prereq) do
        modify_table.technologies[technology].prereqs[req] = false
      end
    else
      modify_table.technologies[technology].prereqs[prereq] = false
    end
  end
end

ov_functions.global_replace_technology = function(old, new)
  substitution_table.technologies[old] = new
end

ov_functions.disable_technology = function(technology) -- disable technology (may be a table containing a list of technologies)
  if type(technology) == "table" then
    for tk, tech in pairs(technology) do
      disable_table.technologies[tech] = true
    end
  else
    disable_table.technologies[technology] = true
  end
end

ov_functions.set_special_technology_override = function(technology, t)
  if type(technology) == "table" then
    for _, tech in pairs(technology) do
      override_table.technologies[tech] = t
    end
  else
    override_table.technologies[technology] = t
  end
end

-------------------------------------------------------------------------------
-- OVERRIDE RECIPE FUNCTIONS --------------------------------------------------
-------------------------------------------------------------------------------
ov_functions.patch_recipes = function(patch_list)
  for _, patch in pairs(patch_list) do
    local name = patch.name
    if name then
      if patch_table[name] then
        merge_patches(patch_table[name], patch)
      else
        patch_table[name] = patch
      end
    end
  end
end

ov_functions.modify_input = function(recipe, i_data)
  guarantee_subtable(patch_table, recipe)
  local patch = patch_table[recipe]
  guarantee_subtable(patch, "ingredients")
  table.insert(patch.ingredients, i_data)
end

ov_functions.modify_output = function(recipe, i_data)
  guarantee_subtable(patch_table, recipe)
  local patch = patch_table[recipe]
  guarantee_subtable(patch, "results")
  table.insert(patch.results, i_data)
end

ov_functions.remove_input = function(recipe, item)
  if type(item) == "table" then
    for _, it in pairs(item) do
      ov_functions.modify_input(recipe, { it, 0 })
    end
  else
    ov_functions.modify_input(recipe, { item, 0 })
  end
end

ov_functions.remove_output = function(recipe, item)
  if type(item) == "table" then
    for _, it in pairs(item) do
      ov_functions.modify_output(recipe, { it, 0 })
    end
  else
    ov_functions.modify_output(recipe, { item, 0 })
  end
end

ov_functions.global_replace_item = function(old, new) -- replace all occurrences of old in recipes with new (old may be a table containing a list of items)
  if type(old) == "table" then
    for ik, item in pairs(old) do
      substitution_table.recipe_items[item] = new
    end
  else
    substitution_table.recipe_items[old] = new
    for _, type in pairs(building_types) do
      for name, entity in pairs(data.raw[type]) do
        if entity and entity.next_upgrade then
          if entity.next_upgrade == old then
            angelsmods.functions.set_next_upgrade(type, name, new)
          end
        end
      end
    end
  end
end

ov_functions.copy_item_properties = function(from, to)
  local from_item = data.raw.item[from]
  local to_item = data.raw.item[to]
  to_item.localised_name = { "item-name."..from_item.name }
  to_item.icon = from_item.icon
  to_item.icon_size = from_item.icon_size
  to_item.icons = from_item.icons
  to_item.pictures = from_item.pictures
  to_item.subgroup = from_item.subgroup
  to_item.order = from_item.order
end

ov_functions.converter_fluid = function(old_fluid_name, new_fluid_name)
  local new_fluid = data.raw.fluid[new_fluid_name]
  local old_fluid = data.raw.fluid[old_fluid_name]
  if not (new_fluid and old_fluid) then
    return
  end

  ov_functions.global_replace_item(old_fluid_name, new_fluid_name)
  angelsmods.functions.hide(old_fluid_name)
  angelsmods.functions.disable_barreling_recipes(old_fluid_name)
end

ov_functions.global_replace_icon = function(old, new)
  substitution_table.recipe_icons[old] = new
end

ov_functions.hide_recipe = function(recipe) -- hides recipe (may be a table containing a list of recipes)
  if type(recipe) == "table" then
    for _, rec in pairs(recipe) do
      guarantee_subtable(patch_table, rec)
      patch_table[rec].hidden = true
      patch_table[rec].localised_name = { "item-name.angels-void" }
    end
  else
    guarantee_subtable(patch_table, recipe)
    patch_table[recipe].hidden = true
    patch_table[recipe].localised_name = { "item-name.angels-void" }
  end
end

ov_functions.disable_recipe = function(recipe) -- disables recipe (may be a table containing a list of recipes)
  if type(recipe) == "table" then
    for _, rec in pairs(recipe) do
      guarantee_subtable(patch_table, rec)
      local patch = patch_table[rec]
      patch.enabled = false
      disable_table.recipes[rec] = true
      ov_functions.hide_recipe(rec)
    end
  else
    guarantee_subtable(patch_table, recipe)
    local patch = patch_table[recipe]
    patch.enabled = false
    disable_table.recipes[recipe] = true
    ov_functions.hide_recipe(recipe)
  end
end

ov_functions.add_additional_category = function(recipe, category)
  if type(recipe) == "table" then
    for _, rec in pairs(recipe) do
      add_additional_category(rec, category)
    end
  else
    guarantee_subtable(modify_table, recipe)
    local modify = modify_table[recipe]
    guarantee_subtable(modify, "additional_categories")
    modify.additional_categories[category] = true
  end
end

ov_functions.remove_additional_category = function(recipe, category)
  if type(recipe) == "table" then
    for _, rec in pairs(recipe) do
      remove_additional_category(rec, category)
    end
  else
    guarantee_subtable(modify_table, recipe)
    local modify = modify_table[recipe]
    guarantee_subtable(modify, "additional_categories")
    modify.additional_categories[category] = false
  end
end

-------------------------------------------------------------------------------
-- OVERRIDE ITEM FUNCTIONS ----------------------------------------------------
-------------------------------------------------------------------------------
ov_functions.global_replace_science_packs = function(primary_old, secondary_old, new, amount)
  -- if a technology uses primary_old science packs for research, replaces them with new science packs and also removes any science packs in secondary_old (may be a table containing a list of packs)
  substitution_table.science_packs[primary_old] = { add = new, amount = amount or 1 }
  if secondary_old then
    if type(secondary_old) == "table" then
      substitution_table.science_packs[primary_old].remove = secondary_old
    else
      substitution_table.science_packs[primary_old].remove = { secondary_old }
    end
  end
end

ov_functions.set_science_pack = function(technology, pack, amount)
  -- adds science packs of type pack to technology (both may be tables), may optionally take an amount of science packs (or a table if packs is a table) to set to (default 1)
  if type(technology) == "table" then
    for _, tech in pairs(technology) do
      ov_functions.set_science_pack(tech, pack, amount)
    end
  elseif type(pack) == "table" then
    for k, sp in pairs(pack) do
      if type(amount) == "table" then
        ov_functions.set_science_pack(technology, sp, amount[k])
      else
        ov_functions.set_science_pack(technology, sp, amount)
      end
    end
  else
    guarantee_subtable(modify_table.technologies, technology)
    guarantee_subtable(modify_table.technologies[technology], "packs")
    modify_table.technologies[technology].packs[pack] = amount or 1
  end
end

ov_functions.remove_science_pack = function(technology, pack)
  -- removes science packs of type pack from technology (both may be tables)
  ov_functions.set_science_pack(technology, pack, 0)
end

ov_functions.set_research_difficulty = function(technology, unit_time, unit_amount, trigger)
  -- technology is the technology name, or a table of names
  -- unit_time is either time for pack technologies or entity_name used in the trigger format
  -- trigger is unit for default technologies, or the type of trigger:
  --[[
  mine-entity
  craft-item
  craft-fluid
  send-item-to-orbit
  capture-spawner
  build-entity
  create-space-platform
  ]]
  local tab_form = { -- allow for triggered technologies
    ["unit"]={
      time = unit_time,
      amount = unit_amount,
    },
    ["craft-item"]=
    {
      count = unit_amount,
      item = unit_time,
      type = trigger
    },
    ["craft-fluid"]=
    {
      count = unit_amount,
      fluid = unit_time,
      type = "craft-fluid"
    },
    ["mine-entity"]=
    {
      entity = unit_time,
      type = "mine-entity"
    },
    ["send-item-to-orbit"]=
    {
      item = unit_time,
      type = "send-item-to-orbit"
    },
    ["capture-spawner"]=
    {
      item = unit_time,
      type = "capture-spawner"
    },
    ["build-entity"]=
    {
      entity = unit_time,
      type = "build-entity"
    },
    ["create-space-platform"]=
    {
      type="create-space-platform"
    },
  }
  if type(technology) == "table" then
    for _, tech in pairs(technology) do --two types, {unit={count,{ings},time},research_trigger={count,item,type}}
      ov_functions.set_research_difficulty(tech, unit_time, unit_amount,trigger)
    end
  else
    guarantee_subtable(modify_table.technologies, technology)
    guarantee_subtable(modify_table.technologies[technology], "difficulty")
    if trigger == nil then
      local tech = data.raw.technology[technology]
      if tech and type(tech.research_trigger)=="table" then
        trigger = tech.research_trigger.type
      elseif tech and type(tech.unit)=="table" then
        trigger = "unit"
      else
        log("technology ".. technology.." does not have an unlock condition")
      end
    end
    if trigger == "unit" or nil then
      modify_table.technologies[technology].difficulty = tab_form["unit"]
    else
      modify_table.technologies[technology].difficulty = tab_form[trigger]
    end
  end
end

ov_functions.set_temperature_barreling = function(fluid, temp, min_temp, max_temp)
  temp = temp or nil
  min_temp = min_temp or nil
  max_temp = max_temp or nil
  if data.raw.fluid[fluid] then
    local fluid = data.raw.fluid[fluid]
    local fill_barrel = data.raw.recipe[fluid.name .. "-barrel"]
    local empty_barrel = data.raw.recipe["empty-" .. fluid.name .. "-barrel"]
    if fill_barrel then
      for _, ingredient in pairs(fill_barrel.ingredients) do
        if ingredient.type == "fluid" and ingredient.name == fluid.name then
          if temp then
            ingredient.temperature = temp
          else
            ingredient.minimum_temperature = min_temp
            ingredient.maximum_temperature = max_temp
          end
        end
      end
    end
    if empty_barrel then
      for _, ingredient in pairs(empty_barrel.results) do
        if ingredient.type == "fluid" and ingredient.name == fluid.name then
          if temp then
            ingredient.temperature = temp
          else
            ingredient.minimum_temperature = min_temp
            ingredient.maximum_temperature = max_temp
          end
        end
      end
    end
  end
end

ov_functions.barrel_overrides = function(fluid, style) --Bottling override functions for icons, localisation and tech unlocks
  if data.raw.fluid[fluid] then
    --declare variables moving forward
    local fluid_s = data.raw.fluid[fluid]
    local fluid_i
    local F_Fill
    local F_Empty
    --check that the barrel actually exists
    if data.raw.recipe[fluid_s.name .. "-barrel"] then
      --define local function variables
      F_Fill = data.raw.recipe[fluid_s.name .. "-barrel"] --define F_Fill
      F_Empty = data.raw.recipe["empty-" .. fluid_s.name .. "-barrel"] --define F_Empty
      fluid_i = data.raw.item[fluid .. "-barrel"] --define barrel name
      --set common properties
      F_Fill.icons = generate_fill_barrel_icons(fluid_s, style)
      F_Empty.icons = generate_empty_barrel_icons(fluid_s, style)
      fluid_i.icons = generate_barrel_icons(fluid_s, style)
      --results are generic for filled barrels
      F_Fill.results = {
        { type = "item", name = fluid_s.name .. "-barrel", amount = 1 },
      }
      --ingredients are common for emptying recipes
      F_Empty.ingredients = {
        { type = "item", name = fluid_s.name .. "-barrel", amount = 1 },
      }

      if style == "gas" then -- Gas Bottles
        F_Fill.localised_name = {
          "recipe-name.fill-gas-canister",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        F_Fill.ingredients = {
          { type = "fluid", name = fluid_s.name, amount = 50 },
          { type = "item", name = "bob-gas-canister", amount = 1 },
        }
        F_Empty.results = {
          { type = "fluid", name = fluid_s.name, amount = 50 },
          { type = "item", name = "bob-gas-canister", amount = 1 },
        }
        F_Empty.localised_name = {
          "recipe-name.empty-filled-gas-canister",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        fluid_i.localised_name = {
          "item-name.filled-gas-canister",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        ov_functions.remove_unlock("bob-fluid-barrel-processing", fluid_s.name .. "-barrel")
        ov_functions.add_unlock("bob-gas-canisters", fluid_s.name .. "-barrel")
        ov_functions.remove_unlock("bob-fluid-barrel-processing", "empty-" .. fluid_s.name .. "-barrel")
        ov_functions.add_unlock("bob-gas-canisters", "empty-" .. fluid_s.name .. "-barrel")
      elseif style == "acid" then -- Liquid Fuel Canisters
        F_Fill.localised_name = {
          "recipe-name.fill-canister",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        F_Fill.ingredients = {
          { type = "fluid", name = fluid_s.name, amount = 50 },
          { type = "item", name = "bob-empty-canister", amount = 1 },
        }
        F_Empty.results = {
          { type = "fluid", name = fluid_s.name, amount = 50 },
          { type = "item", name = "bob-empty-canister", amount = 1 },
        }
        F_Empty.localised_name = {
          "recipe-name.empty-filled-canister",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        fluid_i.localised_name = {
          "item-name.filled-canister",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        ov_functions.remove_unlock("bob-fluid-barrel-processing", fluid_s.name .. "-barrel")
        ov_functions.add_unlock("bob-fluid-canister-processing", fluid_s.name .. "-barrel")
        ov_functions.remove_unlock("bob-fluid-barrel-processing", "empty-" .. fluid_s.name .. "-barrel")
        ov_functions.add_unlock("bob-fluid-canister-processing", "empty-" .. fluid_s.name .. "-barrel")
      else -- Vanilla Barrel
        F_Fill.localised_name = {
          "recipe-name.fill-barrel",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        F_Fill.ingredients = {
          { type = "fluid", name = fluid_s.name, amount = 50 },
          { type = "item", name = "barrel", amount = 1 },
        }
        F_Empty.results = {
          { type = "fluid", name = fluid_s.name, amount = 50 },
          { type = "item", name = "barrel", amount = 1 },
        }
        F_Empty.localised_name = {
          "recipe-name.empty-filled-barrel",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
        fluid_i.localised_name = {
          "item-name.filled-barrel",
          fluid_s.localised_name or { "fluid-name." .. fluid_s.name },
        }
      end
      angelsmods.functions.patch_recycling_recipes({F_Fill.name})
    end
  end
end

-------------------------------------------------------------------------------
-- OVERRIDE EXECUTION FUNCTIONS -----------------------------------------------
-------------------------------------------------------------------------------
local function adjust_recipe(recipe) -- check a recipe for basic adjustments based on tables and make any necessary changes
  local function adjust_member(parent, member, substitution_type)
    local old = parent[member]
    if old then
      local new = substitution_table[substitution_type][old]
      if new then
        parent[member] = new
      end
    end
  end
  local function adjust_subtable(parent, subtable, substitution_type)
    local st = parent[subtable]
    if st then
      local replace = {}
      for ix, item in pairs(st) do
        if item and not item.name then -- shift to uniform format for ease of handling
          item.name = item[1]
          item.type = "item"
          item.amount = item[2]
          item[1] = nil
          item[2] = nil
          log("recipe "..parent.name.." "..subtable.." is still using the old format")
        end
        local new = substitution_table[substitution_type][item.name]
        if new then
          item.name = new
        end
        if replace[item.name] then
          if item.probability then
            if replace[item.name].probability and replace[item.name].probability ~= item.probability then
              --update probability if it exists in both cases
              replace[item.name].probability = item.probability
            else
              --skip, don't touch recipes that add a probability to a static
              replace[item.name .. "-p"] = item
            end
          elseif item.amount ~= replace[item.name].amount then --check both have amount and update old to new
            replace[item.name].amount = item.amount
          end
        else
          replace[item.name] = item
        end
      end
      parent[subtable] = {}
      for i, v in pairs(replace) do
        table.insert(parent[subtable], v)
      end
    end
  end
  local function adjust_difficulty(path)
    adjust_subtable(path, "ingredients", "recipe_items")
    adjust_subtable(path, "results", "recipe_items")
    adjust_member(path, "main_product", "recipe_items")
  end
  local function safe_insert(array, new_item)
    local addit = true
    for i, item in pairs(array) do
      if item == new_item then
        addit = false
        break
      end
    end
    if addit then
      table.insert(array, new_item)
    end
  end
  local function adjust_additional_categories()
    local modifications = modify_table[recipe.name]
    if modifications then
      for category_name, flag in pairs(modifications.additional_categories) do
        if flag then
          local category = data.raw["recipe-category"][category_name]
          if category then
            guarantee_subtable(recipe, "additional_categories")
            safe_insert(recipe.additional_categories, category_name)
          end
        elseif recipe.additional_categories then
          for i, category in pairs(recipe.additional_categories) do
            table.remove(recipe.additional_categories, i)
            break
          end
        end
      end
    end
  end

  adjust_difficulty(recipe)
  adjust_member(recipe, "icon", "recipe_icons")
  adjust_additional_categories()
end

local function adjust_technology(tech, k) -- check a tech for basic adjustments based on tables and make any necessary changes
  local function override_subtable(subtable, o_subtable) -- handle special case changes (sort of a partial deep copy/overwrite)
    if type(o_subtable) == "string" then
      o_subtable = { o_subtable }
    end
    for ok, ov in pairs(o_subtable) do
      if type(ov) == "table" then
        if not subtable[ok] then
          subtable[ok] = {}
        end
        override_subtable(subtable[ok], ov)
      else
        if ov == "set_to_nil" then
          subtable[ok] = nil
        elseif ov ~= "do_not_modify" then
          subtable[ok] = ov
        end
      end
    end
  end
  if disable_table.technologies[k] or substitution_table.technologies[k] then
    data.raw.technology[k].enabled = false
    data.raw.technology[k].hidden = true
  end
  -- adjust effects
  local dup_table = {}
  local modifications = modify_table.technologies[k] and modify_table.technologies[k].unlocks or nil
  local to_remove = {}
  if tech.effects then
    for ek, effect in pairs(tech.effects) do
      if effect.type == "unlock-recipe" then
        if disable_table.recipes[effect.recipe] or (modifications and modifications[effect.recipe] == false) then
          to_remove[ek] = true
        else
          dup_table[effect.recipe] = true
        end
      end
    end
    for ek = #tech.effects, 1, -1 do
      if to_remove[ek] then
        table.remove(tech.effects, ek)
      end
    end
  end
  if modifications then
    if not tech.effects then
      tech.effects = {}
    end
    for name, add in pairs(modifications) do
      if add and not dup_table[name] then
        table.insert(tech.effects, { type = "unlock-recipe", recipe = name })
      end
    end
  end
  -- adjust prerequisites
  dup_table = {}
  modifications = modify_table.technologies[k] and modify_table.technologies[k].prereqs or nil
  if tech.prerequisites then
    to_remove = {}
    for pk, prereq in pairs(tech.prerequisites) do
      local new = substitution_table.technologies[prereq]
      if new then
        tech.prerequisites[pk] = new
      end
      if modifications and modifications[prereq] == false then
        to_remove[pk] = true
      end
    end
    local actual_remove = {}
    for pk, prereq in pairs(tech.prerequisites) do
      if to_remove[pk] then
        table.insert(actual_remove, pk)
      else
        dup_table[tech.prerequisites[pk]] = true
      end
    end
    for i = #actual_remove, 1, -1 do
      table.remove(tech.prerequisites, actual_remove[i])
    end
  end
  if modifications then
    if not tech.prerequisites then
      tech.prerequisites = {}
    end
    for name, add in pairs(modifications) do
      if add and not dup_table[name] then
        table.insert(tech.prerequisites, name)
      end
    end
  end
  local overrides = override_table.technologies[k]
  if overrides then
    if type(overrides) == "string" then
      tech[overrides] = not tech[overrides] or true
    else
      override_subtable(tech, overrides)
    end
  end
  --adjust difficulty (time and amount of ingredients)
  if modify_table.technologies[k] then
    modifications = modify_table.technologies[k].difficulty
    if modifications then
      if tech.unit then
        tech.unit.time = modifications.time
        tech.unit.count = modifications.amount
      else -- not a unit based technology
        tech.research_trigger = {}
        for i, modification in pairs(modifications) do
          tech.research_trigger[i] = modification
        end
      end
    end
  end
  --adjust ingredient list only if unit based tech
  if tech.unit then
    dup_table = {}
    modifications = modify_table.technologies[k] and modify_table.technologies[k].packs or nil
    to_remove = {}
    tech.unit = tech.unit or {}
    tech.unit.ingredients = tech.unit.ingredients or {}
    for pk, pack in pairs(tech.unit.ingredients) do
      if substitution_table.science_packs[pack[1]] and substitution_table.science_packs[pack[1]].remove then
        for k, rem in pairs(substitution_table.science_packs[pack[1]].remove) do
          to_remove[rem] = true
        end
      end
    end
    for i = #tech.unit.ingredients, 1, -1 do
      local pack = tech.unit.ingredients[i]
      if pack then
        if to_remove[pack[1]] then
          table.remove(tech.unit.ingredients, i)
        else
          if substitution_table.science_packs[pack[1]] then
            pack[2] = substitution_table.science_packs[pack[1]].amount
            pack[1] = substitution_table.science_packs[pack[1]].add
          end
          if modifications and modifications[pack[1]] then
            if modifications[pack[1]] > 0 then
              dup_table[pack[1]] = true
              pack[2] = modifications[pack[1]]
            else
              table.remove(tech.unit.ingredients, i)
            end
          else
            dup_table[pack[1]] = true
          end
        end
      end
    end
    if modifications then
      for name, add in pairs(modifications) do
        if add > 0 and not dup_table[name] then
          table.insert(tech.unit.ingredients, { name, add })
        end
      end
    end
  end
end

ov_functions.execute = function()
  for _, recipe in pairs(data.raw.recipe) do -- run through all recipes to perform substitutions/overrides
    adjust_recipe(recipe)
  end
  for name, patch in pairs(patch_table) do
    patch.name = name
  end
  RB.patch(patch_table)

  for k, tech in pairs(data.raw.technology) do -- run through all technologies to perform substitutions/overrides
    adjust_technology(tech, k)
  end

  initialize_tables() -- reset the data tables after execution to allow for multiple points of execution (eg, one set of adjustments in data-updates and another in data-final-fixes)
end

initialize_tables()

return ov_functions
