local OV = angelsmods.functions.OV

-- function to know if this is special vanilla or not
local is_special_vanilla = function (ores)
  for ore_name,ore_enabled in pairs(ores or {}) do
    if ore_enabled and (ore_name ~= "iron" and ore_name ~= "copper") then
      return false
    end
  end
  return true
end
local special_vanilla = is_special_vanilla(angelsmods.trigger.ores)

-- lookup table to convert ore name to trigger name
local get_trigger_name = {
  ["iron-ore"             ] = "iron",
  ["angels-iron-nugget"   ] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["angels-iron-pebbles"  ] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["angels-iron-slag"     ] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["copper-ore"           ] = "copper",
  ["angels-copper-nugget" ] = special_vanilla and "copper" or "unused", -- special vanilla only
  ["angels-copper-pebbles"] = special_vanilla and "copper" or "unused", -- special vanilla only
  ["angels-copper-slag"   ] = special_vanilla and "copper" or "unused", -- special vanilla only

  ["tin-ore"              ] = "tin",
  ["lead-ore"             ] = "lead",
  ["quartz"               ] = "silicon",
  ["nickel-ore"           ] = "nickel",

  ["rutile-ore"           ] = "titanium",
  ["zinc-ore"             ] = "zinc",
  ["bauxite-ore"          ] = "aluminium",
  ["tungsten-ore"         ] = "tungsten",
  ["cobalt-ore"           ] = "cobalt",
  ["silver-ore"           ] = "silver",
  ["gold-ore"             ] = "gold",
  ["uranium-ore"          ] = "uranium",

  ["manganese-ore"        ] = "manganese",
  ["chrome-ore"           ] = "chrome",
}

-- function to create the sorted results for an ore, disables it if it is unused
local create_sorting_recipes = function (refinery_product, recipe_base_name, sorted_ore_results, advanced_sorting)
  local recipes = {}
  for tier, tier_name in pairs(advanced_sorting and { "crushed", "powder", "dust", "crystal" } or { "crushed", "chunk", "crystal", "pure" }) do
    local recipe_used = false
    local recipe = { name = string.format(recipe_base_name, tier_name..'-processing'), results = {} }
    if angelsmods.trigger.refinery_products[refinery_product] then
      for ore_name, ore_amounts in pairs(sorted_ore_results or {}) do
        local ore_amount = (ore_amounts or {})[tier]
        if ore_name == "!!" then
          if ore_amount then
            table.insert(recipe.results, {"!!"})
          end
        else
          if not angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] then ore_amount = 0 end
          if ore_amount and ore_amount > 0 then
            table.insert(recipe.results, { ore_name, ore_amount })
            recipe_used = true
          end
        end
      end
    else
      angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, tier_name))
    end
    if recipe_used then
      table.insert(recipes, recipe)
    else
      angelsmods.functions.OV.disable_recipe(recipe.name)
    end
  end
  if advanced_sorting and not angelsmods.trigger.refinery_products[refinery_product] then
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "sludge"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "solution"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "anode-sludge-filtering"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "anode-sludge"))
  end
  return recipes
end

-- function to merge tables, but not override indexes, but keep (different) contents
local merge_table_of_tables = function (recipes_table)
  local big_table = {}
  for _,recipes in pairs(recipes_table) do
    for _,recipe in pairs(recipes or {}) do
      table.insert(big_table, recipe)
    end
  end
  return big_table
end

-- REGULAR SORTING
OV.patch_recipes(merge_table_of_tables{
  -- SAPHIRITE
  create_sorting_recipes("saphirite", "angelsore1-%s", {
    ["!!"                 ] = {special_vanilla, special_vanilla, special_vanilla, true},
    ["iron-ore"           ] = special_vanilla and {1, 2, 4, 4} or {2, 2, 3, 3},
    ["angels-iron-nugget" ] = special_vanilla and {1, 1, 1, 2},
    ["angels-iron-pebbles"] = special_vanilla and {2, 4, 4, 1},
    ["angels-iron-slag"   ] = special_vanilla and {0, 0, 0, 1},
    ["copper-ore"         ] = (not special_vanilla) and {1, 1, 1, 2},
    ["quartz"             ] = (not special_vanilla) and {0, 1, 1, 1},
    ["nickel-ore"         ] = (not special_vanilla) and {0, 1, 1, 1},
    ["rutile-ore"         ] = (not special_vanilla) and {0, 0, 1, 1},
    ["zinc-ore"           ] = (not special_vanilla) and {0, 0, 0, 1},
  }),
  -- JIVOLITE
  create_sorting_recipes("jivolite", "angelsore2-%s", {
    ["!!"                 ] = {special_vanilla, special_vanilla, special_vanilla, true},
    ["iron-ore"           ] = special_vanilla and {1, 2, 4, 2} or {2, 2, 3, 3},
    ["angels-iron-nugget" ] = special_vanilla and {2, 2, 2, 3},
    ["angels-iron-pebbles"] = special_vanilla and {1, 2, 2, 2},
    ["angels-iron-slag"   ] = special_vanilla and {0, 0, 0, 1},
    ["copper-ore"         ] = (not special_vanilla) and {1, 1, 1, 2},
    ["bauxite-ore"        ] = (not special_vanilla) and {0, 1, 1, 1},
    ["zinc-ore"           ] = (not special_vanilla) and {0, 1, 1, 1},
    ["silver-ore"         ] = (not special_vanilla) and {0, 0, 1, 1},
    ["tungsten-ore"       ] = (not special_vanilla) and {0, 0, 0, 1},
  }),
  -- STIRATITE
  create_sorting_recipes("stiratite", "angelsore3-%s", {
    ["!!"                   ] = {special_vanilla, special_vanilla, special_vanilla, true},
    ["copper-ore"           ] = special_vanilla and {2, 2, 3, 5} or {2, 2, 3, 3},
    ["angels-copper-nugget" ] = special_vanilla and {0, 1, 1, 1},
    ["angels-copper-pebbles"] = special_vanilla and {3, 4, 6, 3},
    ["angels-copper-slag"   ] = special_vanilla and {0, 0, 0, 1},
    ["iron-ore"             ] = (not special_vanilla) and {1, 1, 1, 2},
    ["cobalt-ore"           ] = (not special_vanilla) and {0, 1, 1, 1},
    ["tin-ore"              ] = (not special_vanilla) and {0, 1, 1, 1},
    ["uranium-ore"          ] = (not special_vanilla) and {0, 0, 1, 1},
    ["bauxite-ore"          ] = (not special_vanilla) and {0, 0, 0, 1},
  }),
  -- CROTINIUM
  create_sorting_recipes("crotinnium", "angelsore4-%s", {
    ["!!"                   ] = {special_vanilla, special_vanilla, special_vanilla, true},
    ["copper-ore"           ] = special_vanilla and {2, 4, 4, 2} or {2, 2, 3, 3},
    ["angels-copper-nugget" ] = special_vanilla and {1, 1, 2, 3},
    ["angels-copper-pebbles"] = special_vanilla and {1, 1, 2, 2},
    ["angels-copper-slag"   ] = special_vanilla and {0, 0, 0, 1},
    ["iron-ore"             ] = (not special_vanilla) and {1, 1, 1, 2},
    ["lead-ore"             ] = (not special_vanilla) and {0, 1, 1, 1},
    ["silver-ore"           ] = (not special_vanilla) and {0, 1, 1, 1},
    ["gold-ore"             ] = (not special_vanilla) and {0, 0, 1, 1},
    ["rutile-ore"           ] = (not special_vanilla) and {0, 0, 0, 1},
  }),
  -- RUBYTE
  create_sorting_recipes("rubyte", "angelsore5-%s", {
    ["!!"          ] = (not special_vanilla) and {false, false, false, true},
    ["lead-ore"    ] = (not special_vanilla) and {2, 2, 3, 3},
    ["nickel-ore"  ] = (not special_vanilla) and {1, 1, 1, 2},
    ["bauxite-ore" ] = (not special_vanilla) and {0, 1, 1, 1},
    ["gold-ore"    ] = (not special_vanilla) and {0, 1, 1, 1},
    ["rulite-ore"  ] = (not special_vanilla) and {0, 0, 1, 1},
    ["tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1},
  }),
  -- BOBMONIUM
  create_sorting_recipes("bobmonium", "angelsore6-%s", {
    ["!!"         ] = (not special_vanilla) and {false, false, false, true},
    ["tin-ore"    ] = (not special_vanilla) and {2, 2, 3, 3},
    ["quartz"     ] = (not special_vanilla) and {1, 1, 1, 2},
    ["cobalt-ore" ] = (not special_vanilla) and {0, 1, 1, 1},
    ["zinc-ore"   ] = (not special_vanilla) and {0, 1, 1, 1},
    ["bauxite-ore"] = (not special_vanilla) and {0, 0, 1, 1},
    ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1},
  }),
  -- FERROUS
  create_sorting_recipes("ferrous", "angelsore8-%s", {
    ["!!"           ] = (not special_vanilla) and {true, true, true, true},
    ["iron-ore"     ] = (not special_vanilla) and {2, 3, 4, 4},
    ["manganese-ore"] = (not special_vanilla) and {2, 2, 2, 2},
    ["nickel-ore"   ] = (not special_vanilla) and {0, 1, 1, 1},
    ["cobalt-ore"   ] = (not special_vanilla) and {0, 0, 1, 1},
    ["chrome-ore"   ] = (not special_vanilla) and {0, 0, 0, 1},
  }, true),
  -- CUPRIC
  create_sorting_recipes("cupric", "angelsore9-%s", {
    ["!!"        ] = (not special_vanilla) and {true, true, true, true},
    ["copper-ore"] = (not special_vanilla) and {2, 3, 4, 4},
    ["tin-ore"   ] = (not special_vanilla) and {2, 2, 2, 2},
    ["quartz"    ] = (not special_vanilla) and {0, 1, 1, 1},
    ["silver-ore"] = (not special_vanilla) and {0, 0, 1, 1},
    ["gold-ore"  ] = (not special_vanilla) and {0, 0, 0, 1},
  }, true),
})

-- MIXED SORTING
