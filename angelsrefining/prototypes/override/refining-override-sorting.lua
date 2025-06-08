local OV = angelsmods.functions.OV

-- lookup table to convert ore name to trigger name
local special_vanilla = angelsmods.functions.is_special_vanilla()
local get_trigger_name = angelsmods.functions.get_trigger_names()
local get_ore_name = angelsmods.functions.get_ore_name

local icon_lookup_table_fallback = { icon = "__angelsrefininggraphics__/graphics/icons/void.png", icon_size = 32 }
local icon_lookup_table = {
  ["bauxite-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-bauxite.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/bauxite-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["cobalt-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-cobalt.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/cobalt-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["copper-nugget"] = { icon = "__angelsrefininggraphics__/graphics/icons/copper-nugget.png", icon_size = 32 },

  ["copper-ore"] = { icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, scale = 0.5 },

  ["copper-slag"] = { icon = "__angelsrefininggraphics__/graphics/icons/copper-slag.png", icon_size = 32 },

  ["fluorite-ore"] = { icon = "__angelsrefininggraphics__/graphics/icons/ore-fluorite.png", icon_size = 32 },

  ["gold-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-gold.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/gold-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["iron-nugget"] = { icon = "__angelsrefininggraphics__/graphics/icons/iron-nugget.png", icon_size = 32 },

  ["iron-ore"] = { icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, scale = 0.5 },

  ["iron-slag"] = { icon = "__angelsrefininggraphics__/graphics/icons/iron-slag.png", icon_size = 32 },

  ["lead-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-lead.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/lead-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["nickel-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-nickel.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/nickel-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["platinum-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-platinum.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["rutile-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-rutile.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/rutile-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["quartz"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-silica.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/quartz.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["silver-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-silver.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/silver-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["thorium-ore"] = mods["angelsindustries"] and angelsmods.industries.overhaul and {
    icon = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png",
    icon_size = 64,
    scale = 0.5,
  } or mods["bobplates"] and {
    icon = "__boblibrary__/graphics/icons/ore-5.png",
    icon_size = 32,
    tint = { b = 0.25, g = 1, r = 1 },
  } or icon_lookup_table_fallback,

  ["tin-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-tin.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/tin-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["tungsten-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-tungsten.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/tungsten-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["uranium-ore"] = { icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64, scale = 0.5 },

  ["zinc-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-zinc.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/zinc-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,
}

local function tweaked_icon_lookup(icon_name, scale, shift)
  if not icon_lookup_table[icon_name] then
    return icon_lookup_table_fallback
  end
  if not icon_lookup_table[icon_name].icon then
    return icon_lookup_table_fallback
  end

  return {
    icon = icon_lookup_table[icon_name].icon,
    icon_size = icon_lookup_table[icon_name].icon_size,
    scale = 32 / (icon_lookup_table[icon_name].icon_size or 64) * (scale or 1),
    shift = (shift[1] or shift["x"] or shift[2] or shift["y"]) and {
      shift[1] or shift["x"] or 0,
      shift[2] or shift["y"] or 0,
    } or nil,
    tint = icon_lookup_table[icon_name].tint,
  }
end

local ore_enabled = angelsmods.functions.ore_enabled

-- function to create localised descriptions for the regular sorting ores
local function create_basic_sorting_localisation(localised_base_name, sorting_tier_names, sorting_results, has_ore)
  -- extract the higher tier sorting results
  local higher_tiers_additional_results = {}
  local any_tier_results = {}
  local any_tier_results_present = {}
  for tier, tier_results in pairs(sorting_results or {}) do
    local results = {}
    for _, result in pairs(tier_results) do
      -- register all results in this tier
      results[result] = true
      if not any_tier_results_present[result] then
        table.insert(any_tier_results, result)
        any_tier_results_present[result] = true
      end
    end
    local higher_results = {}
    for result_tier, result_tier_results in pairs(sorting_results or {}) do
      -- register results only from higher tiers
      if result_tier > tier then
        for _, result in pairs(result_tier_results) do
          if not results[result] and not higher_results[result] then
            if not higher_tiers_additional_results[tier] then
              higher_tiers_additional_results[tier] = {}
            end
            table.insert(higher_tiers_additional_results[tier], result)
            higher_results[result] = true
          end
        end
      end
    end
  end
  if has_ore then
    sorting_results[0] = any_tier_results
    higher_tiers_additional_results[0] = any_tier_results
  end

  -- create a list of localised sorting results for each tier
  local localised_sorting_results = {}
  for tier, tier_results in pairs(sorting_results or {}) do
    local higher_tier_results = higher_tiers_additional_results[tier]
    localised_sorting_results[tier] = {
      sorting = {},
      refining = higher_tier_results and {} or nil,
    }
    if tier > 0 and localised_sorting_results[tier].sorting then
      for _, tier_result in pairs(tier_results) do
        table.insert(localised_sorting_results[tier].sorting, {
          "",
          string.format("[img=item/%s]", tier_result),
          { "item-description.loc-space" },
          {
            string.format(
              "item-description.loc-%s",
              (special_vanilla and tier_result or nil) or get_trigger_name[tier_result] or tier_result
            ),
          },
        })
      end
    end
    if localised_sorting_results[tier].refining then
      for _, tier_result in pairs(higher_tier_results) do
        table.insert(localised_sorting_results[tier].refining, {
          "",
          string.format("[img=item/%s]", tier_result),
          { "item-description.loc-space" },
          {
            string.format(
              "item-description.loc-%s",
              (special_vanilla and tier_result or nil) or get_trigger_name[tier_result] or tier_result
            ),
          },
        })
      end
    end
  end

  -- construct the localised description
  local tiered_localised_description = {}
  local localised_indentation = { "" }
  for _ = 1, 7 do
    table.insert(localised_indentation, { "item-description.loc-space" })
  end
  for tier, tier_localisation in pairs(localised_sorting_results) do
    tiered_localised_description[tier] = { "" }

    if tier_localisation.sorting and next(tier_localisation.sorting) then
      local sorting = { "" }
      if #tiered_localised_description[tier] > 1 then
        table.insert(sorting, { "item-description.loc-nl" })
      end
      table.insert(sorting, { "item-description.angels-ore-sorting" })
      for _, sorting_localised_result in pairs(tier_localisation.sorting) do
        table.insert(sorting, { "", { "item-description.loc-nl" }, localised_indentation })
        table.insert(sorting, sorting_localised_result)
      end
      table.insert(tiered_localised_description[tier], sorting)
    end
    if tier_localisation.refining and next(tier_localisation.refining) then
      local refining = { "" }
      if #tiered_localised_description[tier] > 1 then
        table.insert(refining, { "item-description.loc-nl" })
      end
      if tier_localisation.sorting and next(tier_localisation.sorting) then
        table.insert(refining, { "item-description.angels-ore-refining-again" })
      else
        table.insert(refining, { "item-description.angels-ore-refining" })
      end
      for _, refining_localised_result in pairs(tier_localisation.refining) do
        table.insert(refining, { "", { "item-description.loc-nl" }, localised_indentation })
        table.insert(refining, refining_localised_result)
      end
      table.insert(tiered_localised_description[tier], refining)
    end
  end

  -- add the localisation to the the item
  for tier, tier_localised_description in pairs(tiered_localised_description) do
    if tier == 0 then
      local item_name = string.format(localised_base_name, "")
      local item = data.raw.item[item_name]
      if item then
        if item.localised_description then
          item.localised_description = { "", item.localised_description, tier_localised_description }
        else
          item.localised_description = tier_localised_description
        end
      end
      local resource = data.raw.resource[item_name]
      if resource then
        if resource.localised_description then
          resource.localised_description = { "", resource.localised_description, tier_localised_description }
        else
          resource.localised_description = tier_localised_description
        end
      end
      resource = data.raw.resource["infinite-" .. item_name]
      if resource then
        if resource.localised_description then
          resource.localised_description = { "", resource.localised_description, tier_localised_description }
        else
          resource.localised_description = tier_localised_description
        end
      end
    else
      local item_name = string.format(localised_base_name, "-" .. (sorting_tier_names[tier] or ""))
      local item = data.raw.item[item_name]
      if item then
        if item.localised_description then
          item.localised_description = { "", item.localised_description, tier_localised_description }
        else
          item.localised_description = tier_localised_description
        end
      end
    end
  end
end

-- function to create the (regular) sorted results for an ore, disables it if it is unused
local function create_sorting_recipes(refinery_product, recipe_base_name, sorted_ore_results, advanced_sorting)
  local recipes = {}
  local sorting_results = {}
  local tiers = advanced_sorting and { "crushed", "powder", "dust", "crystal" }
    or { "crushed", "chunk", "crystal", "pure" }
  for tier, tier_name in pairs(tiers) do
    local recipe_used = false
    local recipe = { name = string.format(recipe_base_name, "-" .. tier_name .. "-processing"), results = {} }
    if angelsmods.trigger.refinery_products[refinery_product] then
      for result_name, ore_amounts in pairs(sorted_ore_results or {}) do
        local ore_name = get_ore_name(result_name)
        local ore_amount = (ore_amounts or {})[tier]
        if result_name == "!!" then
          if ore_amount then
            table.insert(recipe.results, { "!!" })
          end
        else
          if not angelsmods.trigger.ores[get_trigger_name[result_name]] then
            ore_amount = 0
          end
          if ore_amount and ore_amount > 0 then
            table.insert(recipe.results, { type = "item", name = ore_name, amount = ore_amount })
            recipe_used = true

            if not sorting_results[tier] then
              sorting_results[tier] = {}
            end
            table.insert(sorting_results[tier], ore_name)
          end
        end
      end
    else
      angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "-" .. tier_name))
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

  create_basic_sorting_localisation(
    string.format("angels-ore%s", string.sub(recipe_base_name, -3, -3) .. "%s"),
    tiers,
    sorting_results,
    not advanced_sorting
  )

  return recipes
end

-- function to create the mixed sorted results for an ore, disables it if it is unused
local function create_sorting_mix_recipe(recipe_data)
  if recipe_data.result then
    local ore_name = get_ore_name(recipe_data.result.name)
    local ore_amount = recipe_data.result.amount
    local type_name = recipe_data.result.type
    if angelsmods.trigger.ores[get_trigger_name[recipe_data.result.name]] and ore_amount > 0 then
      local recipe = {
        name = recipe_data.name,
        localised_name = { type_name .. "-name." .. ore_name },
        results = {
          { "!!" },
          {
            type = type_name,
            name = ore_name,
            amount = ore_amount,
          },
        },
        icons = recipe_data.icons,
      }
      local ingredients_override = recipe_data.ingredients_override
      if ingredients_override then
        local ingredients_override_used = false
        local ingredients = { { "!!" } }
        for _, ingredient in pairs(ingredients_override) do
          local ingredient_name = ingredient.name
          local ingredient_amount = ingredient.amount
          if ingredient_amount > 0 then -- todo: check if ingredient exist in triggers?
            table.insert(
              ingredients,
              { type = ingredient.type or "item", name = ingredient_name, amount = ingredient_amount }
            )
            ingredients_override_used = true
          end
        end
        if ingredients_override_used then
          recipe.ingredients = ingredients
        end
      end

      return { recipe }
    end
  end

  angelsmods.functions.OV.disable_recipe(recipe_data.name)
end

-- function to create the slag sorting results disables it if it is unused
local function create_slag_recipes(recipe_base_name, ore_result_products, recipe_icons)
  local recipes = {}
  for recipe_index = 1, 9 do
    local recipe =
      { name = string.format(recipe_base_name, string.format("-%i", recipe_index)), results = { { "!!" } } }
    local recipe_used = false
    local locale_index = {}
    for result_name, ore_amounts in pairs(ore_result_products or {}) do
      local ore_name = get_ore_name(result_name)
      local ore_amount = ore_amounts[recipe_index]
      local ore_probability = nil
      if angelsmods.trigger.ores[get_trigger_name[result_name]] and ore_amount > 0 then
        if ore_amount < 1 then
          ore_probability, ore_amount = ore_amount, 1
        end
        table.insert(
          recipe.results,
          { name = ore_name, type = "item", amount = ore_amount, probability = ore_probability }
        )
        locale_index[#locale_index + 1] = { "item-name." .. ore_name }
        recipe_used = true
      end
    end
    if recipe_used then
      recipe.icons = recipe_icons[recipe_index] -- maybe improve this?
      table.insert(recipes, recipe)
    else
      OV.disable_recipe(recipe.name)
    end
    --localisation set-up
    if #locale_index == 2 then
      recipe.localised_name = { "recipe-name.slag_processing_2", locale_index[1], locale_index[2] }
    elseif #locale_index == 3 then
      recipe.localised_name = { "recipe-name.slag_processing_3", locale_index[1], locale_index[2], locale_index[3] }
    else
      recipe.localised_name = { "recipe-name.slag_processing_1", locale_index[1] }
    end
  end

  return recipes
end

-- function to merge tables, but not override indexes, but keep (different) contents
local function merge_table_of_tables(recipes_table)
  local big_table = {}
  for _, recipes in pairs(recipes_table) do
    for _, recipe in pairs(recipes or {}) do
      table.insert(big_table, recipe)
    end
  end
  return big_table
end

-------------------------------------------------------------------------------
-- REGULAR SORTING ------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(merge_table_of_tables({
  -- SAPHIRITE
  create_sorting_recipes("saphirite", "angelsore1%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["iron-ore"] = special_vanilla and { 1, 1, 2, 2 } or { 2, 2, 3, 3 },
    ["angels-iron-nugget"] = special_vanilla and { 1, 2, 3, 5 },
    ["angels-iron-pebbles"] = special_vanilla and { 2, 4, 3, 3 },
    ["angels-iron-slag"] = special_vanilla and { 0, 0, 1, 1 },
    ["copper-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["quartz"] = not special_vanilla and { 0, 1, 1, 1 },
    ["nickel-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["rutile-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["tungsten-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- JIVOLITE
  create_sorting_recipes("jivolite", "angelsore2%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["iron-ore"] = special_vanilla and { 2, 2, 3, 5 } or { 2, 2, 3, 3 },
    ["angels-iron-nugget"] = special_vanilla and { 1, 2, 3, 4 },
    ["angels-iron-pebbles"] = special_vanilla and { 1, 1, 2, 4 },
    ["angels-iron-slag"] = special_vanilla and { 0, 1, 2, 2 },
    ["copper-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["bauxite-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["zinc-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["cobalt-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["tungsten-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- STIRATITE
  create_sorting_recipes("stiratite", "angelsore3%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["copper-ore"] = special_vanilla and { 2, 2, 4, 3 } or { 2, 2, 3, 3 },
    ["angels-copper-nugget"] = special_vanilla and { 1, 2, 2, 4 },
    ["angels-copper-pebbles"] = special_vanilla and { 0, 2, 3, 5 },
    ["angels-copper-slag"] = special_vanilla and { 0, 0, 1, 1 },
    ["iron-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["silver-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["tin-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["uranium-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["tungsten-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- CROTINIUM
  create_sorting_recipes("crotinnium", "angelsore4%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["copper-ore"] = special_vanilla and { 0, 1, 2, 3 } or { 2, 2, 3, 3 },
    ["angels-copper-nugget"] = special_vanilla and { 2, 2, 4, 5 },
    ["angels-copper-pebbles"] = special_vanilla and { 1, 3, 3, 4 },
    ["angels-copper-slag"] = special_vanilla and { 0, 1, 1, 2 },
    ["iron-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["lead-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["bauxite-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["rutile-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["cobalt-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- RUBYTE
  create_sorting_recipes("rubyte", "angelsore5%s", {
    ["!!"] = not special_vanilla and { false, false, false, true },
    ["lead-ore"] = not special_vanilla and { 2, 2, 3, 3 },
    ["nickel-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["bauxite-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["quartz"] = not special_vanilla and { 0, 1, 1, 1 },
    ["gold-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["uranium-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- BOBMONIUM
  create_sorting_recipes("bobmonium", "angelsore6%s", {
    ["!!"] = not special_vanilla and { false, false, false, true },
    ["tin-ore"] = not special_vanilla and { 2, 2, 3, 3 },
    ["quartz"] = not special_vanilla and { 1, 1, 1, 2 },
    ["silver-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["zinc-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["gold-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["cobalt-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- FERROUS
  ore_enabled("ferrous")
      and create_sorting_recipes("ferrous", "angelsore8%s", {
        ["!!"] = not special_vanilla and { true, true, true, true },
        ["iron-ore"] = not special_vanilla and { 2, 3, 4, 4 },
        ["manganese-ore"] = not special_vanilla and { 2, 2, 2, 2 },
        ["nickel-ore"] = not special_vanilla and { 0, 1, 1, 1 },
        ["cobalt-ore"] = not special_vanilla and { 0, 0, 1, 1 },
        ["chrome-ore"] = not special_vanilla and { 0, 0, 0, 1 },
      }, true)
    or nil,
  -- CUPRIC
  ore_enabled("cupric")
      and create_sorting_recipes("cupric", "angelsore9%s", {
        ["!!"] = not special_vanilla and { true, true, true, true },
        ["copper-ore"] = not special_vanilla and { 2, 3, 4, 4 },
        ["tin-ore"] = not special_vanilla and { 2, 2, 2, 2 },
        ["silver-ore"] = not special_vanilla and { 0, 1, 1, 1 },
        ["gold-ore"] = not special_vanilla and { 0, 0, 1, 1 },
        ["platinum-ore"] = not special_vanilla and { 0, 0, 0, 1 },
        ["quartz"] = not (special_vanilla or ore_enabled("platinum-ore")) and { 0, 0, 0, 1 },
      }, true)
    or nil,
}))

if special_vanilla then
  OV.remove_prereq("uranium-processing", "ore-leaching")
  OV.add_prereq("uranium-processing", "slag-processing-2")
  OV.remove_unlock("slag-processing-3", "slag-processing-9")
  OV.add_unlock("slag-processing-2", "slag-processing-9")
  OV.patch_recipes({
    {
      name = "slag-processing-9",
      category = "crystallizing-2",
    },
  })
else
  -- disable the nuggets and pebbles
  OV.disable_recipe({
    "angels-iron-nugget-smelting",
    "angels-iron-pebbles-smelting",
    "angels-copper-nugget-smelting",
    "angels-copper-pebbles-smelting",
    "angels-iron-pebbles",
    "angels-copper-pebbles",
  })
  angelsmods.functions.hide("angels-iron-nugget")
  angelsmods.functions.hide("angels-iron-pebbles")
  angelsmods.functions.hide("angels-iron-slag")
  angelsmods.functions.hide("angels-copper-nugget")
  angelsmods.functions.hide("angels-copper-pebbles")
  angelsmods.functions.hide("angels-copper-slag")
end

if ore_enabled("ferrous") or ore_enabled("cupric") then
else
  OV.disable_technology({
    "ore-advanced-crushing",
    "ore-powderizer",
    "ore-advanced-floatation",
    "ore-electro-whinning-cell",
  })
  OV.remove_prereq("advanced-ore-refining-3", "ore-advanced-floatation")
  OV.remove_prereq("advanced-ore-refining-4", "ore-electro-whinning-cell")

  -- hide electro winning cells
  OV.hide_recipe({
    "electro-whinning-cell",
    "electro-whinning-cell-2",
  })
  angelsmods.functions.hide("electro-whinning-cell")
  angelsmods.functions.hide("electro-whinning-cell-2")
  OV.remove_unlock("advanced-ore-refining-4", "electro-whinning-cell-2")

  if angelsmods.bioprocessing then
  else
    -- hide milling drums
    OV.hide_recipe({
      "ore-powderizer",
      "ore-powderizer-2",
      "ore-powderizer-3",
      "milling-drum",
      "milling-drum-used",
    })
    angelsmods.functions.hide("ore-powderizer")
    angelsmods.functions.hide("ore-powderizer-2")
    angelsmods.functions.hide("ore-powderizer-3")
    angelsmods.functions.hide("milling-drum")
    angelsmods.functions.hide("milling-drum-used")
    OV.remove_unlock("advanced-ore-refining-3", "ore-powderizer-3")
  end
end

if ore_enabled("ferrous") and ore_enabled("cupric") then
else
  OV.remove_unlock("advanced-ore-refining-3", "angelsore-crystal-mix6-processing")
  OV.disable_recipe("angelsore-crystal-mix6-processing")
end
if not ore_enabled("ferrous") then --I DON'T KNOW WHY THIS IS STILL GETTING THROUGH!!!
  OV.disable_recipe({ "angelsore8-crushed", "angelsore8-crushed-processing" })
end
if not ore_enabled("cupric") then --I DON'T KNOW WHY THIS IS STILL GETTING THROUGH!!!
  OV.disable_recipe({ "angelsore9-crushed", "angelsore9-crushed-processing" })
end

-------------------------------------------------------------------------------
-- MIXED SORTING --------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(merge_table_of_tables({
  -- CRUSHED
  create_sorting_mix_recipe({
    name = "angelsore-crushed-mix1-processing",
    result = { type = "item", name = "iron-ore", amount = 4 },
    icons = special_vanilla 
      and {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32, },
        tweaked_icon_lookup("iron-nugget", 0.5, { -10, -10 }),
        tweaked_icon_lookup("iron-ore", 0.5, { 10, 10 }),
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("iron-ore", 0.5, { 10, 10 }),
      },
    ingredients_override = special_vanilla and {
      { type = "item", name = "angels-iron-pebbles", amount = 4 },
      { type = "item", name = "angels-iron-nugget", amount = 1 },
    } or nil,
  }),  
  create_sorting_mix_recipe({
    name = "angelsore-crushed-mix2-processing",
    result = { type = "item", name = "copper-ore", amount = 4 },
    icons = special_vanilla
      and {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("copper-nugget", 0.5, { -10, -10 }),
        tweaked_icon_lookup("copper-ore", 0.5, { 10, 10 }),
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("copper-ore", 0.5, { 10, 10 }),
      },
    ingredients_override = special_vanilla and {
      { type = "item", name = "angels-copper-pebbles", amount = 4 },
      { type = "item", name = "angels-copper-nugget", amount = 1 },
    } or nil,
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crushed-mix3-processing",
    result = (not special_vanilla) and { type = "item", name = "lead-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("lead-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crushed-mix4-processing",
    result = (not special_vanilla) and { type = "item", name = "tin-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("tin-ore", 0.5, { 10, 10 }),
    },
  }),

  -- CHUNK
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix1-processing",
    result = special_vanilla and { type = "item", name = "iron-ore", amount = 3 }
      or { type = "item", name = "quartz", amount = 4 },
    icons = special_vanilla
      and {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("iron-slag", 0.5, { -10, -10 }),
        tweaked_icon_lookup("iron-ore", 0.5, { 10, 10 }),
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("quartz", 0.5, { 10, 10 }),
      },
    ingredients_override = special_vanilla and {
      { type = "item", name = "angels-iron-pebbles", amount = 3 },
      { type = "item", name = "angels-iron-slag", amount = 1 },
    } or nil,
  }),
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix2-processing",
    result = special_vanilla and { type = "item", name = "copper-ore", amount = 3 }
      or { type = "item", name = "nickel-ore", amount = 4 },
    icons = special_vanilla
      and {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("copper-slag", 0.5, { -10, -10 }),
        tweaked_icon_lookup("copper-ore", 0.5, { 10, 10 }),
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("nickel-ore", 0.5, { 10, 10 }),
      },
    ingredients_override = special_vanilla and {
      { type = "item", name = "angels-copper-pebbles", amount = 3 },
      { type = "item", name = "angels-copper-slag", amount = 1 },
    } or nil,
  }),
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix3-processing",
    result = { type = "item", name = "bauxite-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("bauxite-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix4-processing",
    result = { type = "item", name = "zinc-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("zinc-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix5-processing",
    result = { type = "item", name = "silver-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("silver-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix6-processing",
    result = { type = "item", name = "fluorite-ore", amount = 2 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("fluorite-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-chunk-mix7-processing",
  }),

  -- CRYSTAL
  create_sorting_mix_recipe({
    name = "angelsore-crystal-mix1-processing",
    result = special_vanilla and { type = "item", name = "uranium-ore", amount = 3 }
      or { type = "item", name = "rutile-ore", amount = 6 },
    icons = special_vanilla
        and angelsmods.functions.add_icon_layer(
          angelsmods.functions.add_number_icon_layer({
            {
              icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
              icon_size = 32,
            },
          }, 1, angelsmods.refining.number_tint),
          tweaked_icon_lookup("uranium-ore", 0.5, { 10, 10 })
        )
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("rutile-ore", 0.5, { 10, 10 }),
      },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crystal-mix2-processing",
    result = { type = "item", name = "gold-ore", amount = 6 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("gold-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crystal-mix3-processing",
    result = { type = "item", name = "cobalt-ore", amount = 6 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("cobalt-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crystal-mix4-processing",
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crystal-mix5-processing",
    result = (not special_vanilla) and { type = "item", name = "uranium-ore", amount = 3 } or nil,
  }),
  create_sorting_mix_recipe({
    name = "angelsore-crystal-mix6-processing",
    result = { type = "item", name = "thorium-ore", amount = 3 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("thorium-ore", 0.5, { 10, 10 }),
    },
  }),

  -- PURE
  create_sorting_mix_recipe({
    name = "angelsore-pure-mix1-processing",
    result = special_vanilla and { type = "item", name = "uranium-ore", amount = 6 }
      or { type = "item", name = "tungsten-ore", amount = 6 },
    icons = special_vanilla
        and angelsmods.functions.add_icon_layer(
          angelsmods.functions.add_number_icon_layer({
            {
              icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
              icon_size = 32,
            },
          }, 2, angelsmods.refining.number_tint),
          tweaked_icon_lookup("uranium-ore", 0.5, { 10, 10 })
        )
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("tungsten-ore", 0.5, { 10, 10 }),
      },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-pure-mix2-processing",
    result = { type = "item", name = "platinum-ore", amount = 3 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      ore_enabled("platinum") and tweaked_icon_lookup("platinum-ore", 0.5, { 10, 10 }) or nil,
    },
  }),
  create_sorting_mix_recipe({
    name = "angelsore-pure-mix3-processing",
  }),
}))

if special_vanilla then
  OV.patch_recipes({
    {
      name = "angelsore-crushed-mix1-processing",
      order = "a[iron]-a[nugget]",
    },
    {
      name = "angelsore-crushed-mix3-processing",
      order = "b[copper]-a[nugget]",
    },
    {
      name = "angelsore-chunk-mix1-processing",
      order = "a[iron]-b[slag]",
    },
    {
      name = "angelsore-chunk-mix2-processing",
      order = "b[copper]-b[slag]",
    },
    {
      name = "angelsore-crystal-mix1-processing",
      ingredients = {
        { type = "item", name = "catalysator-orange", amount = 0 },
        { type = "item", name = "angels-ore5-crystal", amount = 0 },
      },
      order = "c[uranium]-a[ore]-a",
    },
    {
      name = "angelsore-pure-mix1-processing",
      ingredients = {
        { type = "item", name = "catalysator-orange", amount = 0 },
        { type = "item", name = "angels-ore3-pure", amount = 0 },
        { type = "item", name = "angels-ore4-pure", amount = "angels-ore6-pure" },
      },
      order = "c[uranium]-a[ore]-b",
    },
  })
end

-------------------------------------------------------------------------------
-- SLAG SORTING ---------------------------------------------------------------
-------------------------------------------------------------------------------
local slag_color = { { 202, 099, 017 }, { 097, 052, 020 }, { 097, 052, 020 } }
OV.patch_recipes(merge_table_of_tables({
  create_slag_recipes("slag-processing%s", {
    ["iron-ore"] = { special_vanilla and 0.8 or 0.4, 0, 0, 0, 0, 0, 0, 0, 0 },
    ["angels-iron-pebbles"] = special_vanilla and { 0, 0, 0, 3 * 0.8, 0, 0, 0, 0, 0 } or nil,
    ["copper-ore"] = { special_vanilla and 0 or 0.4, special_vanilla and 0.8 or 0, 0, 0, 0, 0, 0, 0, 0 },
    ["angels-copper-pebbles"] = special_vanilla and { 0, 0, 0, 0, 3 * 0.8, 0, 0, 0, 0 } or nil,
    ["lead-ore"] = { 0, 0.4, 0, 0, 0, 0, 0, 0, 0 },
    ["tin-ore"] = { 0, 0.4, 0, 0, 0, 0, 0, 0, 0 },
    ["quartz"] = { 0, 0, 0.4, 0, 0, 0, 0, 0, 0 },
    ["silver-ore"] = { 0, 0, 0.4, 0, 0, 0, 0, 0, 0 },
    ["gold-ore"] = { 0, 0, 0, 0.4, 0, 0, 0, 0, 0 },
    ["nickel-ore"] = { 0, 0, 0, 0.4, 0, 0, 0, 0, 0 },
    ["zinc-ore"] = { 0, 0, 0, 0, 0.4, 0, 0, 0, 0 },
    ["rutile-ore"] = { 0, 0, 0, 0, 0.4, 0, 0, 0, 0 },
    ["bauxite-ore"] = { 0, 0, 0, 0, 0, 0.4, 0, 0, 0 },
    ["manganese-ore"] = {
      0,
      0,
      0,
      0,
      0,
      ore_enabled("platinum-ore") and ore_enabled("chrome-ore") and 0.4 or ore_enabled("chrome-ore") and 0.2 or 0.4,
      0,
      0,
      0,
    },
    ["chrome-ore"] = {
      0,
      0,
      0,
      0,
      0,
      ore_enabled("platinum-ore") and 0 or 0.2,
      ore_enabled("platinum-ore") and 0.4 or 0,
      0,
      0,
    },
    ["platinum-ore"] = { 0, 0, 0, 0, 0, 0, 0.4, 0, 0 },
    ["cobalt-ore"] = { 0, 0, 0, 0, 0, 0, 0, 0.4, 0 },
    ["tungsten-ore"] = { 0, 0, 0, 0, 0, 0, 0, 0.4, 0 },
    ["uranium-ore"] = { 0, 0, 0, 0, 0, 0, 0, 0, 0.4 },
    ["fluorite-ore"] = { 0, 0, 0, 0, 0, 0, 0, 0, 0.2 },
    ["thorium-ore"] = { 0, 0, 0, 0, 0, 0, 0, 0, 0.005 },
  }, {
    --[[1]]
    angelsmods.functions.create_liquid_recipe_icon({
      get_ore_name("iron-ore"),
      not special_vanilla and get_ore_name("copper-ore") or nil,
    }, slag_color),
    --[[2]]
    angelsmods.functions.create_liquid_recipe_icon({
      special_vanilla and get_ore_name("copper-ore") or get_ore_name("lead-ore"),
      not special_vanilla and get_ore_name("tin-ore") or nil,
    }, slag_color),
    --[[3]]
    angelsmods.functions.create_liquid_recipe_icon({
      get_ore_name("silver-ore"),
      get_ore_name("quartz"),
    }, slag_color),
    --[[4]]
    angelsmods.functions.create_liquid_recipe_icon({
      special_vanilla and get_ore_name("angels-iron-pebbles") or get_ore_name("gold-ore"),
      not special_vanilla and get_ore_name("nickel-ore") or nil,
    }, slag_color),
    --[[5]]
    angelsmods.functions.create_liquid_recipe_icon({
      special_vanilla and get_ore_name("angels-copper-pebbles") or get_ore_name("zinc-ore"),
      not special_vanilla and get_ore_name("rutile-ore") or nil,
    }, slag_color),
    --[[6]]
    angelsmods.functions.create_liquid_recipe_icon({
      get_ore_name("bauxite-ore"),
      ore_enabled("manganese-ore") and get_ore_name("manganese-ore") or nil,
      (not ore_enabled("platinum-ore")) and ore_enabled("chrome-ore") and get_ore_name("chrome-ore") or nil,
    }, slag_color),
    --[[7]]
    ore_enabled("platinum-ore")
        and angelsmods.functions.create_liquid_recipe_icon({
          get_ore_name("platinum-ore"),
          get_ore_name("chrome-ore"),
        }, slag_color)
      or nil,
    --[[8]]
    angelsmods.functions.create_liquid_recipe_icon({
      get_ore_name("cobalt-ore"),
      get_ore_name("tungsten-ore"),
    }, slag_color),
    --[[9]]
    angelsmods.functions.create_liquid_recipe_icon({
      get_ore_name("uranium-ore"),
      ore_enabled("fluorite-ore") and get_ore_name("fluorite-ore") or nil,
      ore_enabled("thorium-ore") and get_ore_name("thorium-ore") or nil,
    }, slag_color),
  }),
}))
