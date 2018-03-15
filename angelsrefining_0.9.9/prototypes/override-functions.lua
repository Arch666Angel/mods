local RB = require "recipe-builder"

local ov_functions = {}
-- OVERRIDE DATA TABLES
local substitution_table, disable_table, modify_table, override_table, patch_table
-- HELPER FUNCTIONS

local function initialize_tables ()
   substitution_table = {
      recipe_icons = {},
      recipe_items = {},
      technologies = {},
      science_packs = {}
   }

   disable_table = {
      recipes = {},
      technologies = {}
   }

   modify_table = {
      technologies = {}
   }

   override_table = {
      technologies = {}
   }

   patch_table = {
   }
end

local function guarantee_subtable (t, s)
   if not t[s] then t[s] = {} end
end

local function d_c (t)
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

local splittable_keys = {
   ingredients = true,
   enabled = true,
   energy_required = true,
   result = true,
   result_count = true,
   results = true,
   main_product = true
}
local function has_splittable_key(recipe)
   for k in pairs(splittable_keys) do
      if recipe[k] ~= nil then
         return true
      end
   end
   return false
end

local function split_patch_difficulty (patch)
   if has_splittable_key(patch) then
      guarantee_subtable(patch, "normal")
      guarantee_subtable(patch, "expensive")
      for k in splittable_keys do
         if patch[k] ~= nil then
            patch.normal[k] = patch.normal[k] or d_c(patch[k])
            patch.expensive[k] = patch.expensive[k] or patch[k]
            patch[k] = nil
         end
      end
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
   if new.normal or new.expensive then
      split_patch_difficulty(old)
      split_patch_difficulty(new)
   elseif old.normal or old.expensive then
      split_patch_difficulty(new)
   end
   for k, v in pairs(new) do
      if k == "ingredients" or k == "results" then
         if old[k] then
            merge_ops(old[k], v)
         else
            old[k] = v
         end
      elseif k == "normal" or k == "expensive" then
         if old[k] then
            merge_patches(old[k], v)
         else
            old[k] = v
         end
      else
         old[k] = v
      end
   end
end

-- OVERRIDE ASSIGNMENT FUNCTIONS

ov_functions.add_unlock = function (technology, recipe)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "unlocks")
   modify_table.technologies[technology].unlocks[recipe] = true
end

ov_functions.remove_unlock = function (technology, recipe)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "unlocks")
   modify_table.technologies[technology].unlocks[recipe] = false
end

ov_functions.add_prereq = function (technology, prereq)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "prereqs")
   modify_table.technologies[technology].prereqs[prereq] = true
end

ov_functions.remove_prereq = function (technology, prereq)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "prereqs")
   modify_table.technologies[technology].prereqs[prereq] = false
end

ov_functions.global_replace_technology = function (old, new)
   substitution_table.technologies[old] = new
end

ov_functions.disable_technology = function (technology) -- disable technology (may be a table containing a list of technologies)
   if type(technology) == "table" then
      for tk, tech in pairs(technology) do
         disable_table.technologies[tech] = true
      end
   else
      disable_table.technologies[technology] = true
   end
end

ov_functions.set_special_technology_override = function (technology, t)
   override_table.technologies[technology] = t
end

ov_functions.patch_recipes = function (patch_list)
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

ov_functions.modify_normal_input = function (recipe, i_data)
   guarantee_subtable(patch_table, recipe)
   local patch = patch_table[recipe]
   if not patch.normal then
      split_patch_difficulty(patch)
      guarantee_subtable(patch, "normal")
   end
   guarantee_subtable(patch.normal, "ingredients")
   table.insert(patch.normal.ingredients, i_data)
end

ov_functions.modify_hard_input = function (recipe, i_data)
   guarantee_subtable(patch_table, recipe)
   local patch = patch_table[recipe]
   if not patch.expensive then
      split_patch_difficulty(patch)
      guarantee_subtable(patch, "expensive")
   end
   guarantee_subtable(patch.expensive, "ingredients")
   table.insert(patch.expensive.ingredients, i_data)
end

ov_functions.modify_input = function (recipe, i_data)
   guarantee_subtable(patch_table, recipe)
   local patch = patch_table[recipe]
   if patch.normal or patch.expensive then
      set_normal_input(recipe, d_c(i_data))
      set_hard_input(recipe, i_data)
   else
      guarantee_subtable(patch, "ingredients")
      table.insert(patch.ingredients, i_data)
   end
end

ov_functions.modify_normal_output = function (recipe, i_data)
   guarantee_subtable(patch_table, recipe)
   local patch = patch_table[recipe]
   if not patch.normal then
      split_patch_difficulty(patch)
      guarantee_subtable(patch, "normal")
   end
   guarantee_subtable(patch.normal, "results")
   table.insert(patch.normal.results, i_data)
end

ov_functions.modify_hard_output = function (recipe, i_data)
   guarantee_subtable(patch_table, recipe)
   local patch = patch_table[recipe]
   if not patch.expensive then
      split_patch_difficulty(patch)
      guarantee_subtable(patch, "expensive")
   end
   guarantee_subtable(patch.expensive, "results")
   table.insert(patch.expensive.results, i_data)
end

ov_functions.modify_output = function (recipe, i_data)
   guarantee_subtable(patch_table, recipe)
   local patch = patch_table[recipe]
   if patch.normal or patch.expensive then
      ov_functions.modify_normal_output(recipe, d_c(i_data))
      ov_functions.modify_hard_output(recipe, i_data)
   else
      guarantee_subtable(patch, "results")
      table.insert(patch.results, i_data)
   end
end

ov_functions.remove_normal_input = function (recipe, item) -- remove item from input of recipe (item may be a table containing a list of items to remove)
   if type(item) == "table" then
      for _, it in pairs(item) do
         ov_functions.modify_normal_input(recipe, {it, 0})
      end
   else
      ov_functions.modify_normal_input(recipe, {item, 0})
   end
end

ov_functions.remove_hard_input = function (recipe, item)
   if type(item) == "table" then
      for _, it in pairs(item) do
         ov_functions.modify_hard_input(recipe, {it, 0})
      end
   else
      ov_functions.modify_hard_input(recipe, {item, 0})
   end
end

ov_functions.remove_input = function (recipe, item)
   if type(item) == "table" then
      for _, it in pairs(item) do
         ov_functions.modify_input(recipe, {it, 0})
      end
   else
      ov_functions.modify_input(recipe, {item, 0})
   end
end

ov_functions.remove_normal_output = function (recipe, item) -- remove item from output of recipe (item may be a table containing a list of items to remove)
   if type(item) == "table" then
      for _, it in pairs(item) do
         ov_functions.modify_normal_output(recipe, {it, 0})
      end
   else
      ov_functions.modify_normal_output(recipe, {item, 0})
   end
end

ov_functions.remove_hard_output = function (recipe, item)
   if type(item) == "table" then
      for _, it in pairs(item) do
         ov_functions.modify_hard_output(recipe, {it, 0})
      end
   else
      ov_functions.modify_hard_output(recipe, {item, 0})
   end
end

ov_functions.remove_output = function (recipe, item)
   if type(item) == "table" then
      for _, it in pairs(item) do
         ov_functions.modify_output(recipe, {it, 0})
      end
   else
      ov_functions.modify_output(recipe, {item, 0})
   end
end

ov_functions.global_replace_item = function (old, new) -- replace all occurrences of old in recipes with new (old may be a table containing a list of items)
   if type(old) == "table" then
      for ik, item in pairs(old) do
         substitution_table.recipe_items[item] = new
      end
   else
      substitution_table.recipe_items[old] = new
   end
end

ov_functions.global_replace_icon = function (old, new)
   substitution_table.recipe_icons[old] = new
end

ov_functions.hide_recipe = function (recipe) -- hides recipe (may be a table containing a list of recipes)
   if type(recipe) == "table" then
      for _, rec in pairs(recipe) do
         guarantee_subtable(patch_table, rec)
         patch_table[rec].hidden = true
      end
   else
      guarantee_subtable(patch_table, recipe)
      patch_table[recipe].hidden = true
   end
end

ov_functions.disable_recipe = function (recipe) -- disables recipe (may be a table containing a list of recipes)
   if type(recipe) == "table" then
      for _, rec in pairs(recipe) do
         guarantee_subtable(patch_table, rec)
         local patch = patch_table[rec]
         if patch.normal or patch.expensive then
            disable_normal_recipe(rec)
            disable_hard_recipe(rec)
         else
            patch.enabled = false
         end
         disable_table.recipes[rec] = true
      end
   else
      guarantee_subtable(patch_table, recipe)
      local patch = patch_table[recipe]
      if patch.normal or patch.expensive then
         disable_normal_recipe(recipe)
         disable_hard_recipe(recipe)
      else
         patch.enabled = false
      end
      disable_table.recipes[recipe] = true
   end
end

ov_functions.global_replace_science_packs = function (primary_old, secondary_old, new, amount) -- if a technology uses primary_old science packs for research, replaces them with new science packs and also removes any science packs in secondary_old (may be a table containing a list of packs)
   substitution_table.science_packs[primary_old] = { add = new, amount = amount or 1 }
   if secondary_old then
      if type(secondary_old) == "table" then
         substitution_table.science_packs[primary_old].remove = secondary_old
      else
         substitution_table.science_packs[primary_old].remove = { secondary_old }
      end
   end
end

ov_functions.set_science_pack = function (technology, pack, amount) -- adds science packs of type pack to technology (both may be tables), may optionally take an amount of science packs to set to (default 1)
   if type(technology) == "table" then
      for k, tech in pairs(technology) do
         ov_functions.set_science_pack(tech, pack, amount)
      end
   elseif type(pack) == "table" then
      for k, sp in pairs(pack) do
         ov_functions.set_science_pack(technology, sp, amount)
      end
   else
      guarantee_subtable(modify_table.technologies, technology)
      guarantee_subtable(modify_table.technologies[technology], "packs")
      modify_table.technologies[technology].packs[pack] = amount or 1
   end
end

ov_functions.remove_science_pack = function (technology, pack) -- removes science packs of type pack from technology (both may be tables)
   ov_functions.set_science_pack(technology, pack, 0)
end

ov_functions.set_research_difficulty = function (technology, unit_time, unit_amount)
   if type(technology) == "table" then
      for k, tech in pairs(technology) do
         ov_functions.set_research_difficulty(tech, unit_time, unit_amount)
      end
   else
      guarantee_subtable(modify_table.technologies, technology)
      guarantee_subtable(modify_table.technologies[technology], "difficulty")
      modify_table.technologies[technology].difficulty = {
         time = unit_time,
         amount = unit_amount
      }
   end
end

-- OVERRIDE EXECUTION
local function adjust_recipe (recipe, k) -- check a recipe for basic adjustments based on tables and make any necessary changes
   local function adjust_member (parent, member, substitution_type)
      local old = parent[member]
      if old then
         local new = substitution_table[substitution_type][old]
         if new then
            parent[member] = new
         end
      end
   end
   local function adjust_subtable (parent, subtable, substitution_type)
      local st = parent[subtable]
      if st then
         for ix, item in pairs(st) do
            if item and not item.name then -- shift to uniform format for ease of handling
               item.name = item[1]
               item.type = "item"
               item.amount = item[2]
               item[1] = nil
               item[2] = nil
            end
            local new = substitution_table[substitution_type][item.name]
            if new then
               item.name = new
            end
         end
      end
   end
   local function adjust_difficulty (path)
      adjust_subtable(path, "ingredients", "recipe_items")
      adjust_member(path, "result", "recipe_items")
      adjust_subtable(path, "results", "recipe_items")
      adjust_member(recipe, "main_product", "recipe_items")
   end
   if recipe.category ~= "angels-converter" then -- leave converter recipes alone so we can still use them if necessary
      if recipe.normal or recipe.expensive then
         if recipe.normal then
            adjust_difficulty(recipe.normal)
         end
         if recipe.expensive then
            adjust_difficulty(recipe.expensive)
         end
      else
         adjust_difficulty(recipe)
      end
      adjust_member(recipe, "icon", "recipe_icons")
   end
end

local function override_subtable (subtable, o_subtable) -- handle special case changes (sort of a partial deep copy/overwrite)
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

ov_functions.execute = function ()
   for k, recipe in pairs(data.raw.recipe) do -- run through all recipes to perform substitutions/overrides
      adjust_recipe(recipe, k)
   end
   for name, patch in pairs(patch_table) do
      patch.name = name
   end
   RB.patch(patch_table)

   for k, tech in pairs(data.raw.technology) do -- run through all technologies to perform substitutions/overrides
      if disable_table.technologies[k] or substitution_table.technologies[k] then
         data.raw.technology[k].enabled = false
      else
         local dup_table = {}
         local modifications = nil
         if modify_table.technologies[k] and modify_table.technologies[k].unlocks then
            modifications = modify_table.technologies[k].unlocks
         end
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
            for name, add in pairs(modifications) do
               if add and not dup_table[name] then
                  table.insert(tech.effects, { type = "unlock-recipe", recipe = name })
               end
            end
         end

         dup_table = {}
         if modify_table.technologies[k] then
            modifications = modify_table.technologies[k].prereqs
         else
            modifications = nil
         end
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
            for pk = #tech.prerequisites, 1, -1 do
               if to_remove[pk] then
                  table.remove(tech.prerequisites, pk)
            else
              dup_table[tech.prerequisites[pk]] = true
               end
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
            override_subtable(tech, overrides)
         end

       if modify_table.technologies[k] then
         modifications = modify_table.technologies[k].difficulty
         if modifications then
            tech.unit.time = modifications.time
            tech.unit.count = modifications.amount
         end
       end

       dup_table = {}
         if modify_table.technologies[k] then
            modifications = modify_table.technologies[k].packs
         else
            modifications = nil
         end
       to_remove = {}
       for pk, pack in pairs(tech.unit.ingredients) do
         local nk
         if pack.name then
            nk = "name"
         else
            nk = 1
         end
         if substitution_table.science_packs[pack[nk]] and substitution_table.science_packs[pack[nk]].remove then
            for k, rem in pairs(substitution_table.science_packs[pack[nk]].remove) do
               to_remove[rem] = true
            end
         end
       end
       for i = #tech.unit.ingredients, 1, -1 do
         local pack = tech.unit.ingredients[i]
         local nk, ak
         if pack.name then
            nk = "name"
            ak = "amount"
         else
            nk = 1
            ak = 2
         end
         if to_remove[pack[nk]] then
            table.remove(tech.unit.ingredients, i)
         else
            if substitution_table.science_packs[pack[nk]] then
               pack[ak] = substitution_table.science_packs[pack[nk]].amount
               pack[nk] = substitution_table.science_packs[pack[nk]].add
            end
            if modifications and modifications[pack[nk]] == 0 then
               table.remove(tech.unit.ingredients, i)
            else
               dup_table[pack[nk]] = true
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

   initialize_tables() -- reset the data tables after execution to allow for multiple points of execution (eg, one set of adjustments in data-updates and another in data-final-fixes)
end

initialize_tables()
return ov_functions