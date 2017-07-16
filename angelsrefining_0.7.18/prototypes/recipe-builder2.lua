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

RB.set_fallback = function (i_type, i_name, fb_list) -- i_type either "item" or "fluid", i_name the name of the item, fb_list a table containing subtables { name, multiplier } where item_name is a string, multiplier is a positive number (defaults to 1) can also be formatted { name = name, multiplier = multiplier }
   -- WARNING: make sure some item in the fallback list is "safe" (either provided by this mod or by a hard dependency)
   local parent = fallbacks[i_type]
   if parent then
      if check_raw_for(i_type, i_name) then
         parent[i_name] = nil
      else
         for _, fb in pairs(fb_list) do
            local n, m
            if fb[1] then
               n, m = fb[1], fb[2] or 1
            else
               n, m = fb.name, fb.multiplier or 1
            end
            if check_raw_for(i_type, n) then
               parent[i_name] = { n, m }
               break
            end
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
      if j then
         ingredients[j].amount = ingredients[j].amount + i_count
         table.remove(ingredients, i)
         l = l - 1
      else
         ingredients[i] = { type = i_type, name = i_name, amount = i_count }
         ingredient_map[i_type][i_name] = i
         i = i + 1
      end
   end
end

local function check_recipe (recipe)
   if recipe.normal or recipe.expensive then
      check_ingredients(recipe.normal.ingredients)
      check_ingredients(recipe.expensive.ingredients)
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

return RB