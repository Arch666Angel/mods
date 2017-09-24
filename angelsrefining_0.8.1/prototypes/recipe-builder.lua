local RB = {}
local fallbacks = {
   item = {},
   fluid = {}
}

local item_subtypes = { -- add additional item subtypes here as necessary for recipes
   "item",
   "tool",
   "ammo"
}

local function check_raw_for (i_type, i_name)
   if i_type == "item" then
      local dr = data.raw
      for _, it in pairs(item_subtypes) do
         local result = dr[it][i_name]
         if result then
            return result
         end
      end
      return nil
   else
      return data.raw[i_type][i_name]
   end
end

RB.set_fallback = function (i_type, i_name, fb_list, i_condition) -- i_type either "item" or "fluid", i_name the name of the item, fb_list a table containing subtables { name, multiplier, condition } where item_name is a string, multiplier is a positive number (defaults to 1), and condition is a function taking i_type and i_name as arguments and returning a boolean (defaults to return true) can also be formatted { name = name, multiplier = multiplier, condition = condition }, condition (optional) is like the condition field in a subtable of fb_list but for i_name
   local parent = fallbacks[i_type]
   if parent then
      if check_raw_for(i_type, i_name) and (not i_condition or i_condition(i_type, i_name)) then
         parent[i_name] = nil
      else
         local sentinel = true
         for _, fb in pairs(fb_list) do
            local n, m, c
            if fb[1] then
               n, m, c = fb[1], fb[2] or 1, fb[3]
            else
               n, m, c = fb.name, fb.multiplier or 1, fb.condition
            end
            if check_raw_for(i_type, n) and (not c or c(i_type, n)) then
               parent[i_name] = { n, m }
               sentinel = false
               break
            end
         end
         if sentinel then
            parent[i_name] = { "fallback-sentinel", 0 }
         end
      end
   end
end

local function get_fallback (i_type, i_name)
   local parent = fallbacks[i_type]
   if parent then
      local fb = parent[i_name]
      if fb then
         return fb[1], fb[2]
      end
   end
   return i_name, 1
end

local function check_ingredients (ingredients)
   local ingredient_map = {
      item = {},
      fluid = {}
   }

   local i, l = 1, #ingredients
   while i <= l do
      local item = ingredients[i]
      local i_type, i_name, i_count
      if not item.name then
         i_type = "item"
         i_name = item[1]
         i_count = item[2]
      else
         i_type = item.type
         i_name = item.name
         i_count = item.amount
      end
      local n, m = get_fallback(i_type, i_name)
      i_name, i_count = n, math.ceil(i_count * m)
      local j = ingredient_map[i_type][i_name]
      if j then -- ingredient is already present, add to existing ingredient
         ingredients[j].amount = ingredients[j].amount + i_count
         table.remove(ingredients, i)
         l = l - 1
      elseif i_count == 0 then -- delete ingredient on fallback sentinel
         table.remove(ingredients, i)
         l = l - 1
      else -- adjust ingredient for fallback
         ingredients[i] = { type = i_type, name = i_name, amount = i_count }
         ingredient_map[i_type][i_name] = i
         i = i + 1
      end
   end
end

local function check_recipe (recipe)
   if recipe.normal or recipe.expensive then
      if recipe.normal then
         check_ingredients(recipe.normal.ingredients)
      end
      if recipe.expensive then
         check_ingredients(recipe.expensive.ingredients)
      end
   else
      check_ingredients(recipe.ingredients)
   end
end

RB.build = function (recipe_list) -- use like data:extend
   for _, recipe in pairs(recipe_list) do
      check_recipe(recipe)
   end
   data:extend(recipe_list)
end

local p_blocked = {
   type = true,
   name = true,
   expensive = true,
   normal = true,
   result = true,
   result_count = true,
   results = true,
   amount = true,
   amount_min = true,
   amount_max = true
}
local p_splittable = {
   ingredients = true,
   enabled = true,
   energy_required = true,
   main_product = true
}

local function prioritize(a, b)
   if a == nil then -- not 'return a or b' to handle some edge cases where the distinction between nil and false matters
      return b
   else
      return a
   end
end

local function get_op(arg)
   local o, a
   if type(arg) == "string" then
      if arg == "><" then
         o, a = "=", arg
      else
         o, a = string.match(arg, "^([%*%+~=])(.+)")
         if o then
            if o == "+" then
               if a ~= "><" then
                  a = tonumber(a) or 0
               end
            elseif o == "=" then
               if a ~= "><" then
                  a = tonumber(a) or 1
               end
            elseif o == "*" then
               a = tonumber(a) or 1
            end
         else
            o, a = "~", arg
         end
      end
   else
      o, a = "=", tonumber(arg) or 1
   end
   return o, a
end

local function p_merge_item_lists(base, patch)
   local base = base
   local result
   if next(patch) then
      result = {}
      local add_list, add_map
      local i, j

      local function init()
         add_list, add_map = {}, { item = {}, fluid = {} }
         i, j = 1, 1
      end

      local function clear()
         init()
         base = {}
      end

      local function add(n, t, a)
         if a > 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount = add_list[k].amount + a
               else
                  add_list[k].amount_min = add_list[k].amount_min + a
                  add_list[k].amount_max = add_list[k].amount_max + a
               end
            else
               add_list[j] = { name = n, type = t, amount = a }
               add_map[t][n] = j
               j = j + 1
            end
         end
      end

      local function add2(n, t, mn, mx)
         if mn > 0 and mx > 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount_min = add_list[k].amount + mn
                  add_list[k].amount_max = add_list[k].amount + math.max(mn, mx)
                  add_list[k].amount = nil
               else
                  add_list[k].amount_min = add_list[k].amount_min + mn
                  add_list[k].amount_max = math.max(add_list[k].amount_max + mx, add_list[k].amount_min)
               end
            else
               add_list[j] = { name = n, type = t, amount_min = mn, amount_max = math.max(mx, mn) }
               add_map[t][n] = j
               j = j + 1
            end
         elseif mn > 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount_min = add_list[k].amount + mn
                  add_list[k].amount_max = add_list[k].amount_min
                  add_list[k].amount = nil
               else
                  add_list[k].amount_min = add_list[k].amount_min + mn
                  add_list[k].amount_max = math.max(add_list[k].amount_max, add_list[k].amount_min)
               end
            else
               add_list[j] = { name = n, type = t, amount_min = mn, amount_max = mn }
               add_map[t][n] = j
               j = j + 1
            end
         elseif mx > 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount_min = add_list[k].amount
                  add_list[k].amount_max = add_list[k].amount + mx
                  add_list[k].amount = nil
               else
                  add_list[k].amount_max = add_list[k].amount_max + mx
               end
            else
               add_list[j] = { name = n, type = t, amount_min = 0, amount_max = mx }
               add_map[t][n] = j
               j = j + 1
            end
         end
      end

      local function set(n, t, a)
         if a > 0 then
            local k = add_map[t][n]
            if k then
               add_list[k].amount = a
               add_list[k].amount_min = nil
               add_list[k].amount_max = nil
            else
               add_list[j] = { name = n, type = t, amount = a }
               add_map[t][n] = j
               j = j + 1
            end
         elseif a == 0 then
            local k = add_map[t][n]
            if k then
               add_list[k] = nil
               add_map[t][n] = nil
            end
         end
      end

      local function set2(n, t, mn, mx)
         if mn == 0 and mx == 0 then
            local k = add_map[t][n]
            if k then
               add_list[k] = nil
               add_map[t][n] = nil
            end
         elseif mn >= 0 and mx >= 0 then
            local k = add_map[t][n]
            if k then
               add_list[k].amount_min = mn
               add_list[k].amount_max = math.max(mx, mn)
            else
               add_list[j] = { name = n, type = t, amount_min = mn, amount_max = math.max(mx, mn) }
               add_map[t][n] = j
               j = j + 1
            end
         elseif mn >= 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount_min = mn
                  add_list[k].amount_max = math.max(add_list[k].amount, mn)
                  add_list[k].amount = nil
               else
                  add_list[k].amount_min = mn
                  add_list[k].amount_max = math.max(add_list[k].amount_max, mn)
               end
            elseif mn > 0 then
               add_list[j] = { name = n, type = t, amount_min = mn, amount_max = mn }
               add_map[t][n] = j
               j = j + 1
            end
         elseif mx > 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount_min = add_list[k].amount
                  add_list[k].amount_max = math.max(add_list[k].amount, mx)
                  add_list[k].amount = nil
               else
                  add_list[k].amount_max = math.max(add_list[k].amount_min, mx)
               end
            else
               add_list[j] = { name = n, type = t, amount_min = 0, amount_max = mx }
               add_map[t][n] = j
               j = j + 1
            end
         end
      end

      local function scale(n, t, a)
         if a > 0 then
            local k = add_map[t][n]
            if k then
               if add_list[k].amount then
                  add_list[k].amount = add_list[k].amount * a
               else
                  add_list[k].amount_min = add_list[k].amount_min * a
                  add_list[k].amount_max = add_list[k].amount_max * a
               end
            end
         elseif a == 0 then
            set(n, t, 0)
         end
      end

      local function repl(n, t, a)
         if n ~= a then
            local k = add_map[t][a]
            if k then
               local l = add_map[t][n]
               if l then
                  if k < l then
                     add_map[t][n] = k
                     add_list[k].name = n
                     if add_list[l].amount then
                        add(n, t, add_list[l].amount)
                     else
                        add2(n, t, add_list[l].amount_min, add_list[l].amount_max)
                     end
                     for j, v in pairs(add_list[l]) do
                        if not p_blocked[j] then
                           add_list[k].j = prioritize(add_list[k].j, v)
                        end
                     end
                     add_list[l] = nil
                  else
                     if add_list[l].amount then
                        add(n, t, add_list[k].amount)
                     else
                        add2(n, t, add_list[k].amount_min, add_list[k].amount_max)
                     end
                     for j, v in pairs(add_list[k]) do
                        if not p_blocked[j] then
                           add_list[l].j = v
                        end
                     end
                     add_list[k] = nil
                  end
               else
                  add_map[t][n] = k
                  add_list[k].name = n
               end
               add_map[t][a] = nil
            end
         end
      end

      local function adjust_secondary_atts(n, t, d)
         local l = add_map[t][n]
         if l then
            for k, v in pairs(d) do
               if not p_blocked[k] then
                  add_list[l][k] = v
               end
            end
         end
      end

      init()
      for _, item in pairs(base) do
         local n, t, a = item.name or item[1], item.type or "item", item.amount or item[2]
         add(n, t, a)
         adjust_secondary_atts(n, t, item)
      end
      for _, item in pairs(patch) do
         local n, t, a, o = item.name or item[1], item.type or "item", item.amount or item[2]
         if n == "!!" then
            clear()
         else
            o, a = get_op(a)
            if o == "=" then
               if a == "><" then
                  set2(n, t, item.amount_min or -1, item.amount_max or -1)
               else
                  set(n, t, a)
               end
               adjust_secondary_atts(n, t, item)
            elseif o == "+" then
               if a == "><" then
                  add2(n, t, item.amount_min or -1, item.amount_max or -1)
               else
                  add(n, t, a)
               end
               adjust_secondary_atts(n, t, item)
            elseif o == "*" then
               scale(n, t, a)
               adjust_secondary_atts(n, t, item)
            elseif o == "~" then
               repl(n, t, a)
               adjust_secondary_atts(n, t, item)
            end
         end
      end
      for k = 1, j - 1 do
         if add_list[k] then
            result[i] = add_list[k]
            i = i + 1
         end
      end
   else
      result = base
   end
   return result
end

local function p_merge(base, patch, k)
   if k == "ingredients" then
      return p_merge_item_lists(base, patch or {})
   else
      return prioritize(patch, base)
   end
end

local function p_split_key(t, k, e, d)
   local v, v_e, v_n = t[k], t.expensive and t.expensive[k], t.normal and t.normal[k]
   if e then
      if d then
         return prioritize(v_e, prioritize(v, v_n))
      else
         return prioritize(v_e, v)
      end
   else
      if d then
         return prioritize(v_n, prioritize(v, v_e))
      else
         return prioritize(v_n, v)
      end
   end
end

local function p_result_merge(target, base, patch, split, e)
   local b, bc, bs
   local p, pc, ps
   if split then
      b, bc, bs = p_split_key(base, "result", e, true), p_split_key(base, "result_count", e, true), p_split_key(base, "results", e, true)
      p, pc, ps = p_split_key(patch, "result", e), p_split_key(patch, "result_count", e), p_split_key(patch, "results", e)
   else
      b, bc, bs = base.result, base.result_count, base.results
      p, pc, ps = patch.result, patch.result_count, patch.results
   end
   if ps then
      local rs = p_merge_item_lists(bs or {{ name = b, type = "item", amount = bc or 1 }}, ps)
      if not next(rs) then
         rs[1] = { "angels-void", 1 }
      end
      target.results = rs
   elseif p then
      target.result = p
      target.result_count = prioritize(pc, bc)
   elseif bs then
      target.results = bs
   else
      target.result = b
      target.result_count = prioritize(pc, bc)
   end
end

local function p_copy(patch)
   local result = nil
   local name = patch.name
   local base = name and data.raw.recipe[name]
   if base then
      result = {
         type = "recipe",
         name = name
      }
      local split = false
      if patch.normal or base.normal or patch.expensive or base.expensive then
         result.normal = {}
         result.expensive = {}
         for k in pairs(p_splittable) do
            result.normal[k] = p_merge(p_split_key(base, k, false), p_split_key(patch, k, false), k)
            result.expensive[k] = p_merge(p_split_key(base, k, true), p_split_key(patch, k, true), k)
         end
         p_result_merge(result.normal, base, patch, true, false)
         p_result_merge(result.expensive, base, patch, true, true)
         split = true
      else
         p_result_merge(result, base, patch)
      end
      for k, v in pairs(base) do
         if not (p_blocked[k] or split and p_splittable[k]) then
            result[k] = p_merge(base[k], patch[k], k)
            patch[k] = nil
         end
      end
      for k, v in pairs(patch) do
         if not (p_blocked[k] or split and p_splittable[k]) then
            result[k] = patch[k]
         end
      end
   end
   return result
end

RB.patch = function (recipe_patch_list)
   local recipe_list = {}
   local i = 1
   for _, patch in pairs(recipe_patch_list) do
      local recipe = p_copy(patch)
      if recipe then
         recipe_list[i] = recipe
         i = i + 1
      end
   end
   if i > 1 then
      RB.build(recipe_list)
   end
end

return RB