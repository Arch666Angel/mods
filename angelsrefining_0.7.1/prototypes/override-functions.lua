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
      technologies = {}
   }

   modify_table = {
      recipes = {},
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

ov_functions.set_input = function (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "inputs")
   modify_table.recipes[recipe].inputs[item] = { type = i_type, amount = amount }
end

ov_functions.set_output = function (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "outputs")
   modify_table.recipes[recipe].outputs[item] = { type = i_type, amount = amount }
end

ov_functions.remove_input = function (recipe, item) -- remove item from input of recipe (item may be a table containing a list of items to remove)
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

ov_functions.remove_output = function (recipe, item) -- remove item from output of recipe (item may be a table containing a list of items to remove)
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

ov_functions.disable_recipe = function (recipe) -- disables recipe (may be a table containing a list of recipes)
   if type(recipe) == "table" then
      for rk, rec in pairs(recipe) do
         disable_table.recipes[rec] = true
      end
   else
      disable_table.recipes[recipe] = true
   end
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

local function adjust_recipe (recipe, k) -- check a recipe for basic adjustments based on tables and make any necessary changes
   local function adjust_member (member, substitution_type)
      if recipe[member] then
         local new = substitution_table[substitution_type][recipe[member]]
         if new then
            recipe[member] = new
         end
      end
   end
   local function adjust_subtable (subtable, substitution_type)
      local st = recipe[subtable]
      if st then
         for ix, item in pairs(st) do
            if not item.name then -- shift to uniform format for ease of handling
               item.name = item[1]
               item.type = "item"
               item.amount = item[2]
               item[1] = nil
               item[2] = nil
            end
            local new = substitution_table[substitution_type][item.name or item[1]]
            if new then
               if item.name then
                  item.name = new
               else
                  item[1] = new
               end
            end
         end
      end
   end
   if recipe.category ~= "angels-converter" then -- leave converter recipes alone so we can still use them if necessary
      adjust_subtable("ingredients", "recipe_items")
      adjust_member("result", "recipe_items")
      adjust_subtable("results", "recipe_items")
      adjust_member("main_product", "recipe_items")
      adjust_member("icon", "recipe_icons")
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
      if disable_table.recipes[k] then
         recipe.enabled = false
      else
       if hide_table[k] then
         recipe.hidden = true
       end
         adjust_recipe(recipe, k)
         local modifications = modify_table.recipes[k]
         if modifications then
            local to_remove = {}
            for ik, input in pairs(recipe.ingredients) do
               if modifications.inputs and modifications.inputs[input.name] then
                  if modifications.inputs[input.name].amount == 0 then
                     to_remove[ik] = true
                  else
                     input.amount = modifications.inputs[input.name].amount
                  end
                  modifications.inputs[input.name] = nil
               end
               if modifications.substitutions and modifications.substitutions[input.name] and not to_remove[ik] then
                  input.name = modifications.substitutions[input.name]
               end
            end
            for ik = #recipe.ingredients, 1, -1 do
               if to_remove[ik] then
                  table.remove(recipe.ingredients, ik)
               end
            end
            if modifications.inputs then
               for item, info in pairs(modifications.inputs) do
                  if info.amount > 0 then
                     table.insert(recipe.ingredients, { name = item, type = info.type, amount = info.amount })
                  end
               end
            end
            if recipe.results then
               to_remove = {}
               for ok, output in pairs(recipe.results) do
                  if modifications.outputs and modifications.outputs[output.name] then
                     if modifications.outputs[output.name].amount == 0 then
                        to_remove[ok] = true
                     else
                        recipe.results[ok].amount = modifications.outputs[output.name].amount
                     end
                     modifications.outputs[output.name] = nil
                  end
                  if modifications.substitutions and modifications.substitutions[output.name] and not to_remove[ok] then
                     output.name = modifications.substitutions[output.name]
                  end
               end
               for ok = #recipe.results, 1, -1 do
                  if to_remove[ok] then
                     table.remove(recipe.results, ok)
                  end
               end
               if modifications.outputs then
                  for item, info in pairs(modifications.outputs) do
                     if info.amount > 0 then
                        table.insert(recipe.results, { name = item, type = info.type, amount = info.amount })
                     end
                  end
               end
               if modifications.substitutions then
                  recipe.main_product = modifications.substitutions[recipe.main_product]
               end
            elseif recipe.result then
               if modifications.outputs and modifications.outputs[recipe.result] then
                  recipe.result_count = modifications.outputs[recipe.result].amount
                  modifications.outputs[recipe.result] = nil
               end
               if modifications.substitutions and modifications.substitutions[recipe.result] then
                  recipe.result = modifications.substitutions[recipe.result]
               end
               if modifications.outputs and next(modifications.outputs) then -- transition from one output to multiple
                  recipe.main_product = recipe.result
                  recipe.results = { { name = recipe.result, type = "item", amount = recipe.result_count } }
                  recipe.result = nil
                  recipe.result_count = nil
                  for item, info in pairs(modifications.outputs) do
                     if info.amount > 0 then
                        table.insert(recipe.results, { name = item, type = info.type, amount = info.amount })
                     end
                  end
               end
            end
            
         end
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