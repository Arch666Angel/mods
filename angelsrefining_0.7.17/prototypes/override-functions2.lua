local ov_functions = {}
-- OVERRIDE DATA TABLES
local substitution_table, hide_table, disable_table, modify_table, override_table
-- HELPER FUNCTIONS

local function initialize_tables ()
   substitution_table = {
      recipe_icons = {},
      recipe_items = {},
      technologies = {},
      science_packs = {}
   }

   hide_table = {}

   disable_table = {
      recipes = {},
      hard_recipes = {},
      technologies = {}
   }

   modify_table = {
      recipes = {},
      force_difficulty_split = {},
      technologies = {}
   }

   override_table = {
      recipes = {},
      technologies = {}
   }
end

local function guarantee_subtable (t, s)
   if not t[s] then t[s] = {} end
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

local function force_difficulty_split (recipe)
   modify_table.force_difficulty_split[recipe] = true
end

local function set_normal_input (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "inputs")
   modify_table.recipes[recipe].inputs[item] = { type = i_type, amount = amount }
end

ov_functions.set_normal_input = function (recipe, item, i_type, amount)
   set_normal_input(recipe, item, i_type, amount)
   force_difficulty_split(recipe)
end

local function set_hard_input (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "hard")
   guarantee_subtable(modify_table.recipes[recipe].hard, "inputs")
   modify_table.recipes[recipe].hard.inputs[item] = { type = i_type, amount = amount }
end

ov_functions.set_hard_input = function (recipe, item, i_type, amount)
   set_hard_input(recipe, item, i_type, amount)
   force_difficulty_split(recipe)
end

ov_functions.set_input = function (recipe, item, i_type, amount)
   set_normal_input(recipe, item, i_type, amount)
   set_hard_input(recipe, item, i_type, amount)
end

local function set_normal_output (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "outputs")
   if type(amount) == "table" then
      if amount.amount and amount.probability then
         modify_table.recipes[recipe].outputs[item] = { type = i_type, amount = amount.amount, probability = amount.probability }
      elseif amount.amount_min and amount.amount_max and amount.probability then
         modify_table.recipes[recipe].outputs[item] = { type = i_type, amount_min = amount.amount_min, amount_max = amount.amount_max, probability = amount.probability }
      end
   else
      modify_table.recipes[recipe].outputs[item] = { type = i_type, amount = amount }
   end
end

ov_functions.set_normal_output = function (recipe, item, i_type, amount) -- amount may be a table containing probability-related values
   set_normal_output(recipe, item, i_type, amount)
   force_difficulty_split(recipe)
end

local function set_hard_output (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "hard")
   guarantee_subtable(modify_table.recipes[recipe].hard, "outputs")
   if type(amount) == "table" then
      if amount.amount and amount.probability then
         modify_table.recipes[recipe].hard.outputs[item] = { type = i_type, amount = amount.amount, probability = amount.probability }
      elseif amount.amount_min and amount.amount_max and amount.probability then
         modify_table.recipes[recipe].hard.outputs[item] = { type = i_type, amount_min = amount.amount_min, amount_max = amount.amount_max, probability = amount.probability }
      end
   else
      modify_table.recipes[recipe].hard.outputs[item] = { type = i_type, amount = amount }
   end
end

ov_functions.set_hard_output = function (recipe, item, i_type, amount) -- amount may be a table containing probability-related values
   set_hard_output(recipe, item, i_type, amount)
   force_difficulty_split(recipe)
end

ov_functions.set_output = function (recipe, item, i_type, amount) -- amount may be a table containing probability-related values
   set_normal_output(recipe, item, i_type, amount)
   set_hard_output(recipe, item, i_type, amount)
end

local function remove_normal_input (recipe, item)
   if type(item) == "table" then
      for ik, it in pairs(item) do
         ov_functions.remove_input(recipe, it)
      end
   else
      guarantee_subtable(modify_table.recipes, recipe)
      guarantee_subtable(modify_table.recipes[recipe], "inputs")
      modify_table.recipes[recipe].inputs[item] = { amount = 0 }
   end
end

ov_functions.remove_normal_input = function (recipe, item) -- remove item from input of recipe (item may be a table containing a list of items to remove)
   remove_normal_input(recipe, item)
   force_difficulty_split(recipe)
end

local function remove_hard_input (recipe, item)
   if type(item) == "table" then
      for ik, it in pairs(item) do
         ov_functions.remove_input(recipe, it)
      end
   else
      guarantee_subtable(modify_table.recipes, recipe)
      guarantee_subtable(modify_table.recipes[recipe], "hard")
      guarantee_subtable(modify_table.recipes[recipe].hard, "inputs")
      modify_table.recipes[recipe].hard.inputs[item] = { amount = 0 }
   end
end

ov_functions.remove_hard_input = function (recipe, item) -- remove item from input of recipe (item may be a table containing a list of items to remove)
   remove_hard_input(recipe, item)
   force_difficulty_split(recipe)
end

ov_functions.remove_input = function (recipe, item) -- remove item from input of recipe (item may be a table containing a list of items to remove)
   remove_normal_input(recipe, item)
   remove_hard_input(recipe, item)
end

local function remove_normal_output (recipe, item)
   if type(item) == "table" then
      for ik, it in pairs(item) do
         ov_functions.remove_output(recipe, it)
      end
   else
      guarantee_subtable(modify_table.recipes, recipe)
      guarantee_subtable(modify_table.recipes[recipe], "outputs")
      modify_table.recipes[recipe].outputs[item] = { amount = 0 }
   end
end

ov_functions.remove_normal_output = function (recipe, item) -- remove item from output of recipe (item may be a table containing a list of items to remove)
   remove_normal_output(recipe, item)
   force_difficulty_split(recipe)
end

local function remove_hard_output (recipe, item)
   if type(item) == "table" then
      for ik, it in pairs(item) do
         ov_functions.remove_output(recipe, it)
      end
   else
      guarantee_subtable(modify_table.recipes, recipe)
      guarantee_subtable(modify_table.recipes[recipe], "hard")
      guarantee_subtable(modify_table.recipes[recipe].hard, "outputs")
      modify_table.recipes[recipe].hard.outputs[item] = { amount = 0 }
   end
end

ov_functions.remove_hard_output = function (recipe, item) -- remove item from output of recipe (item may be a table containing a list of items to remove)
   remove_hard_output(recipe, item)
   force_difficulty_split(recipe)
end

ov_functions.remove_output = function (recipe, item) -- remove item from output of recipe (item may be a table containing a list of items to remove)
   remove_normal_output(recipe, item)
   remove_hard_output(recipe, item)
end

ov_functions.replace_item = function (recipe, old, new) -- replace all occurrences of old with new in recipe (recipe may be a table containing a list of recipes)
   if type(recipe) == "table" then
      for rk, rec in pairs(recipe) do
         ov_functions.replace_item(rec, old, new)
      end
   else
      guarantee_subtable(modify_table.recipes, recipe)
      guarantee_subtable(modify_table.recipes[recipe], "substitutions")
      modify_table.recipes[recipe].substitutions[old] = new
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
      for rk, rec in pairs(recipe) do
         hide_table[rec] = true
      end
   else
      hide_table[recipe] = true
   end
end

local function disable_normal_recipe (recipe)
   if type(recipe) == "table" then
      for rk, rec in pairs(recipe) do
         disable_table.recipes[rec] = true
      end
   else
      disable_table.recipes[recipe] = true
   end
end

ov_functions.disable_normal_recipe = function (recipe) -- disables recipe (may be a table containing a list of recipes)
   disable_normal_recipe(recipe)
   force_difficulty_split(recipe)
end

local function disable_hard_recipe (recipe)
   if type(recipe) == "table" then
      for rk, rec in pairs(recipe) do
         disable_table.hard_recipes[rec] = true
      end
   else
      disable_table.hard_recipes[recipe] = true
   end
end

ov_functions.disable_hard_recipe = function (recipe) -- disables recipe (may be a table containing a list of recipes)
   disable_hard_recipe(recipe)
   force_difficulty_split(recipe)
end

ov_functions.disable_recipe = function (recipe) -- disables recipe (may be a table containing a list of recipes)
   disable_normal_recipe(recipe)
   disable_hard_recipe(recipe)
end

ov_functions.set_special_recipe_override = function (recipe, t)
   override_table.recipes[recipe] = t
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

local function split_recipe_difficulty (recipe)
   recipe.normal = { ingredients = d_c(recipe.ingredients), result = recipe.result, result_count = recipe.result_count, results = d_c(recipe.results), enabled = recipe.enabled, energy_required = recipe.energy_required }
   recipe.expensive = { ingredients = d_c(recipe.ingredients), result = recipe.result, result_count = recipe.result_count, results = d_c(recipe.results), enabled = recipe.enabled, energy_required = recipe.energy_required }
   recipe.ingredients = nil
   recipe.result = nil
   recipe.result_count = nil
   recipe.results = nil
   recipe.enabled = nil
   recipe.energy_required = nil
end

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
            if not item.name then -- shift to uniform format for ease of handling
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
      adjust_member(recipe, "main_product", "recipe_items")
      adjust_member(recipe, "icon", "recipe_icons")
   end
end

local function modify_recipe (recipe, modifications)
   local function modify_difficulty (path, mod_path)
      local to_remove = {}
      for ik, input in pairs(path.ingredients) do
         if mod_path and mod_path.inputs and mod_path.inputs[input.name] then
            if mod_path.inputs[input.name].amount == 0 then
               to_remove[ik] = true
            else
               input.amount = mod_path.inputs[input.name].amount
            end
            mod_path.inputs[input.name] = nil
         end
         if modifications.substitutions and modifications.substitutions[input.name] and not to_remove[ik] then
            input.name = modifications.substitutions[input.name]
         end
      end
      for ik = #path.ingredients, 1, -1 do
         if to_remove[ik] then
            table.remove(path.ingredients, ik)
         end
      end
      if mod_path and mod_path.inputs then
         for item, info in pairs(mod_path.inputs) do
            if info.amount > 0 then
               table.insert(path.ingredients, { name = item, type = info.type, amount = info.amount })
            end
         end
      end
      if path.results then
         to_remove = {}
         for ok, output in pairs(path.results) do
            if mod_path and mod_path.outputs and mod_path.outputs[output.name] then
               if mod_path.outputs[output.name].amount == 0 then
                  to_remove[ok] = true
               else
                  path.results[ok].amount = mod_path.outputs[output.name].amount
               end
               mod_path.outputs[output.name] = nil
            end
            if modifications.substitutions and modifications.substitutions[output.name] and not to_remove[ok] then
               output.name = modifications.substitutions[output.name]
            end
         end
         for ok = #path.results, 1, -1 do
            if to_remove[ok] then
               table.remove(path.results, ok)
            end
         end
         if mod_path and mod_path.outputs then
            for item, info in pairs(mod_path.outputs) do
               if not info.amount or info.amount > 0 then
                  table.insert(path.results, { name = item, type = info.type, amount = info.amount, amount_min = info.amount_min, amount_max = info.amount_max, probability = info.probability })
               end
            end
         end
      elseif path.result then
         if mod_path and mod_path.outputs and mod_path.outputs[path.result] then
            path.result_count = mod_path.outputs[path.result].amount
            mod_path.outputs[path.result] = nil
         end
         if modifications.substitutions and modifications.substitutions[path.result] then
            path.result = modifications.substitutions[path.result]
         end
         if mod_path and mod_path.outputs and next(mod_path.outputs) then -- transition from one output to multiple
            recipe.main_product = path.result
            path.results = { { name = path.result, type = "item", amount = path.result_count } }
            path.result = nil
            path.result_count = nil
            for item, info in pairs(mod_path.outputs) do
               if not info.amount or info.amount > 0 then
                  table.insert(path.results, { name = item, type = info.type, amount = info.amount, amount_min = info.amount_min, amount_max = info.amount_max, probability = info.probability })
               end
            end
         end
      end
   end
   if modifications then
      if modifications.substitutions and recipe.main_product and modifications.substitutions[recipe.main_product] then
         recipe.main_product = modifications.substitutions[recipe.main_product]
      end
      if recipe.normal or recipe.expensive then
         if recipe.normal then
            modify_difficulty(recipe.normal, modifications)
         end
         if recipe.expensive then
            modify_difficulty(recipe.expensive, modifications.hard)
         end
      else
         modify_difficulty(recipe, modifications)
      end
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
      if disable_table.recipes[k] and disable_table.hard_recipes[k] then
         if recipe.normal or recipe.expensive then
            if recipe.normal then
               recipe.normal.enabled = false
            end
            if recipe.expensive then
               recipe.expensive.enabled = false
            end
         else
            recipe.enabled = false
         end
      else
         if modify_table.force_difficulty_split[k] and not (recipe.normal or recipe.expensive) then
            split_recipe_difficulty(recipe)
         end
         if disable_table.recipes[k] then
            recipe.normal.enabled = false
         elseif disable_table.hard_recipes[k] then
            recipe.expensive.enabled = false
         end
         if hide_table[k] then
            recipe.hidden = true
         end
         adjust_recipe(recipe, k)
         modify_recipe(recipe, modify_table.recipes[k])
         local overrides = override_table.recipes[k]
         if overrides then
            override_subtable(recipe, overrides)
         end
      end
   end

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