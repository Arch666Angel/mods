local OV = angelsmods.functions.OV

-- lookup table to convert ore name to trigger name
local special_vanilla = angelsmods.functions.is_special_vanilla()
local get_trigger_name = angelsmods.functions.get_trigger_names()
local get_ore_name = angelsmods.functions.get_ore_name

local icon_lookup_table_fallback = { icon = "__angelsrefininggraphics__/graphics/icons/void.png", icon_size = 32 }
local icon_lookup_table = {
  ["angels-bauxite-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-bauxite.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/bauxite-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-cobalt-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-cobalt.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/cobalt-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["copper-nugget"] = { icon = "__angelsrefininggraphics__/graphics/icons/copper-nugget.png", icon_size = 32 },

  ["copper-ore"] = { icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, scale = 0.5 },

  ["copper-slag"] = { icon = "__angelsrefininggraphics__/graphics/icons/copper-slag.png", icon_size = 32 },

  ["angels-fluorite-ore"] = { icon = "__angelsrefininggraphics__/graphics/icons/ore-fluorite.png", icon_size = 32 },

  ["angels-gold-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-gold.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/gold-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["iron-nugget"] = { icon = "__angelsrefininggraphics__/graphics/icons/iron-nugget.png", icon_size = 32 },

  ["iron-ore"] = { icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, scale = 0.5 },

  ["iron-slag"] = { icon = "__angelsrefininggraphics__/graphics/icons/iron-slag.png", icon_size = 32 },

  ["angels-lead-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-lead.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/lead-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-nickel-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-nickel.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/nickel-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-platinum-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-platinum.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-rutile-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-rutile.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/rutile-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-quartz"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-silica.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/quartz.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-silver-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-silver.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/silver-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-thorium-ore"] = mods["angelspetrochem"] and {
    icon = "__angelspetrochemgraphics__/graphics/icons/ore-thorium.png",
    icon_size = 64,
    scale = 0.5,
  } or mods["bobplates"] and {
    icon = "__boblibrary__/graphics/icons/ore-5.png",
    icon_size = 32,
    tint = { b = 0.25, g = 1, r = 1 },
  } or icon_lookup_table_fallback,

  ["angels-tin-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-tin.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/tin-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["angels-tungsten-ore"] = mods["angelssmelting"]
      and { icon = "__angelssmeltinggraphics__/graphics/icons/ore-tungsten.png", icon_size = 32 }
    or mods["bobores"] and { icon = "__bobores__/graphics/icons/tungsten-ore.png", icon_size = 32 }
    or icon_lookup_table_fallback,

  ["uranium-ore"] = { icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64, scale = 0.5 },

  ["angels-zinc-ore"] = mods["angelssmelting"]
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
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "angels-anode-sludge-filtering"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "angels-anode-sludge"))
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
  create_sorting_recipes("saphirite", "angels-ore1%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["iron-ore"] = special_vanilla and { 1, 1, 2, 2 } or { 2, 2, 3, 3 },
    ["angels-iron-nugget"] = special_vanilla and { 1, 2, 3, 5 },
    ["angels-iron-pebbles"] = special_vanilla and { 2, 4, 3, 3 },
    ["angels-iron-slag"] = special_vanilla and { 0, 0, 1, 1 },
    ["copper-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["angels-quartz"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-nickel-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-rutile-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["angels-tungsten-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- JIVOLITE
  create_sorting_recipes("jivolite", "angels-ore2%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["iron-ore"] = special_vanilla and { 2, 2, 3, 5 } or { 2, 2, 3, 3 },
    ["angels-iron-nugget"] = special_vanilla and { 1, 2, 3, 4 },
    ["angels-iron-pebbles"] = special_vanilla and { 1, 1, 2, 4 },
    ["angels-iron-slag"] = special_vanilla and { 0, 1, 2, 2 },
    ["copper-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["angels-bauxite-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-zinc-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-cobalt-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["angels-tungsten-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- STIRATITE
  create_sorting_recipes("stiratite", "angels-ore3%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["copper-ore"] = special_vanilla and { 2, 2, 4, 3 } or { 2, 2, 3, 3 },
    ["angels-copper-nugget"] = special_vanilla and { 1, 2, 2, 4 },
    ["angels-copper-pebbles"] = special_vanilla and { 0, 2, 3, 5 },
    ["angels-copper-slag"] = special_vanilla and { 0, 0, 1, 1 },
    ["iron-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["angels-silver-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-tin-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["uranium-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["angels-tungsten-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- CROTINIUM
  create_sorting_recipes("crotinnium", "angels-ore4%s", {
    ["!!"] = { special_vanilla, special_vanilla, special_vanilla, true },
    ["copper-ore"] = special_vanilla and { 0, 1, 2, 3 } or { 2, 2, 3, 3 },
    ["angels-copper-nugget"] = special_vanilla and { 2, 2, 4, 5 },
    ["angels-copper-pebbles"] = special_vanilla and { 1, 3, 3, 4 },
    ["angels-copper-slag"] = special_vanilla and { 0, 1, 1, 2 },
    ["iron-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["angels-lead-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-bauxite-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-rutile-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["angels-cobalt-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- RUBYTE
  create_sorting_recipes("rubyte", "angels-ore5%s", {
    ["!!"] = not special_vanilla and { false, false, false, true },
    ["angels-lead-ore"] = not special_vanilla and { 2, 2, 3, 3 },
    ["angels-nickel-ore"] = not special_vanilla and { 1, 1, 1, 2 },
    ["angels-bauxite-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-quartz"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-gold-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["uranium-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- BOBMONIUM
  create_sorting_recipes("bobmonium", "angels-ore6%s", {
    ["!!"] = not special_vanilla and { false, false, false, true },
    ["angels-tin-ore"] = not special_vanilla and { 2, 2, 3, 3 },
    ["angels-quartz"] = not special_vanilla and { 1, 1, 1, 2 },
    ["angels-silver-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-zinc-ore"] = not special_vanilla and { 0, 1, 1, 1 },
    ["angels-gold-ore"] = not special_vanilla and { 0, 0, 1, 1 },
    ["angels-cobalt-ore"] = not special_vanilla and { 0, 0, 0, 1 },
  }),
  -- FERROUS
  ore_enabled("ferrous")
      and create_sorting_recipes("ferrous", "angels-ore8%s", {
        ["!!"] = not special_vanilla and { true, true, true, true },
        ["iron-ore"] = not special_vanilla and { 2, 3, 4, 4 },
        ["angels-manganese-ore"] = not special_vanilla and { 2, 2, 2, 2 },
        ["angels-nickel-ore"] = not special_vanilla and { 0, 1, 1, 1 },
        ["angels-cobalt-ore"] = not special_vanilla and { 0, 0, 1, 1 },
        ["angels-chrome-ore"] = not special_vanilla and { 0, 0, 0, 1 },
      }, true)
    or nil,
  -- CUPRIC
  ore_enabled("cupric")
      and create_sorting_recipes("cupric", "angels-ore9%s", {
        ["!!"] = not special_vanilla and { true, true, true, true },
        ["copper-ore"] = not special_vanilla and { 2, 3, 4, 4 },
        ["angels-tin-ore"] = not special_vanilla and { 2, 2, 2, 2 },
        ["angels-silver-ore"] = not special_vanilla and { 0, 1, 1, 1 },
        ["angels-gold-ore"] = not special_vanilla and { 0, 0, 1, 1 },
        ["angels-platinum-ore"] = not special_vanilla and { 0, 0, 0, 1 },
        ["angels-quartz"] = not (special_vanilla or ore_enabled("angels-platinum-ore")) and { 0, 0, 0, 1 },
      }, true)
    or nil,
}))

if special_vanilla then
  OV.remove_unlock("angels-slag-processing-1", "angels-slag-processing-3")
  OV.add_prereq("angels-thorium-power", "angels-advanced-ore-refining-4")
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
    "angels-ore-advanced-crushing",
    "angels-ore-powderizer",
    "angels-ore-advanced-floatation",
    "angels-ore-electro-whinning-cell",
  })
  OV.remove_prereq("angels-advanced-ore-refining-3", "angels-ore-advanced-floatation")
  OV.remove_prereq("angels-advanced-ore-refining-4", "angels-ore-electro-whinning-cell")

  -- hide electro winning cells
  OV.hide_recipe({
    "angels-electro-whinning-cell",
    "angels-electro-whinning-cell-2",
  })
  angelsmods.functions.hide("angels-electro-whinning-cell")
  angelsmods.functions.hide("angels-electro-whinning-cell-2")
  OV.remove_unlock("angels-advanced-ore-refining-4", "angels-electro-whinning-cell-2")

  if angelsmods.bioprocessing then
  else
    -- hide milling drums
    OV.hide_recipe({
      "angels-ore-powderizer",
      "angels-ore-powderizer-2",
      "angels-ore-powderizer-3",
      "angels-milling-drum",
      "angels-milling-drum-lubricated",
    })
    angelsmods.functions.hide("angels-ore-powderizer")
    angelsmods.functions.hide("angels-ore-powderizer-2")
    angelsmods.functions.hide("angels-ore-powderizer-3")
    angelsmods.functions.hide("angels-milling-drum")
    angelsmods.functions.hide("angels-milling-drum-lubricated")
    OV.remove_unlock("angels-advanced-ore-refining-3", "angels-ore-powderizer-3")
  end
end

if ore_enabled("ferrous") and ore_enabled("cupric") then
else
  OV.remove_unlock("angels-advanced-ore-refining-3", "angels-ore-crystal-mix6-processing")
  OV.disable_recipe("angels-ore-crystal-mix6-processing")
end
if not ore_enabled("ferrous") then --I DON'T KNOW WHY THIS IS STILL GETTING THROUGH!!!
  OV.disable_recipe({ "angels-ore8-crushed", "angels-ore8-crushed-processing" })
end
if not ore_enabled("cupric") then --I DON'T KNOW WHY THIS IS STILL GETTING THROUGH!!!
  OV.disable_recipe({ "angels-ore9-crushed", "angels-ore9-crushed-processing" })
end

-------------------------------------------------------------------------------
-- MIXED SORTING --------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(merge_table_of_tables({
  -- CRUSHED
  create_sorting_mix_recipe({
    name = "angels-ore-crushed-mix1-processing",
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
    name = "angels-ore-crushed-mix2-processing",
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
    name = "angels-ore-crushed-mix3-processing",
    result = (not special_vanilla) and { type = "item", name = "angels-lead-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-lead-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-crushed-mix4-processing",
    result = (not special_vanilla) and { type = "item", name = "angels-tin-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-tin-ore", 0.5, { 10, 10 }),
    },
  }),

  -- CHUNK
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix1-processing",
    result = special_vanilla and { type = "item", name = "iron-ore", amount = 3 }
      or { type = "item", name = "angels-quartz", amount = 4 },
    icons = special_vanilla
      and {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("iron-slag", 0.5, { -10, -10 }),
        tweaked_icon_lookup("iron-ore", 0.5, { 10, 10 }),
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("angels-quartz", 0.5, { 10, 10 }),
      },
    ingredients_override = special_vanilla and {
      { type = "item", name = "angels-iron-pebbles", amount = 3 },
      { type = "item", name = "angels-iron-slag", amount = 1 },
    } or nil,
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix2-processing",
    result = special_vanilla and { type = "item", name = "copper-ore", amount = 3 }
      or { type = "item", name = "angels-nickel-ore", amount = 4 },
    icons = special_vanilla
      and {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("copper-slag", 0.5, { -10, -10 }),
        tweaked_icon_lookup("copper-ore", 0.5, { 10, 10 }),
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("angels-nickel-ore", 0.5, { 10, 10 }),
      },
    ingredients_override = special_vanilla and {
      { type = "item", name = "angels-copper-pebbles", amount = 3 },
      { type = "item", name = "angels-copper-slag", amount = 1 },
    } or nil,
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix3-processing",
    result = special_vanilla and { type = "item", name = "uranium-ore", amount = 1 }
      or { type = "item", name = "angels-bauxite-ore", amount = 4 },
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
        tweaked_icon_lookup("angels-bauxite-ore", 0.5, { 10, 10 }),
      },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix4-processing",
    result = { type = "item", name = "angels-zinc-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-zinc-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix5-processing",
    result = { type = "item", name = "angels-silver-ore", amount = 4 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-silver-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix6-processing",
    result = { type = "item", name = "angels-fluorite-ore", amount = 2 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-fluorite-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-chunk-mix7-processing",
  }),

  -- CRYSTAL
  create_sorting_mix_recipe({
    name = "angels-ore-crystal-mix1-processing",
    result = special_vanilla and { type = "item", name = "uranium-ore", amount = 3 }
      or { type = "item", name = "angels-rutile-ore", amount = 6 },
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
        tweaked_icon_lookup("angels-rutile-ore", 0.5, { 10, 10 }),
      },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-crystal-mix2-processing",
    result = { type = "item", name = "angels-gold-ore", amount = 6 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-gold-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-crystal-mix3-processing",
    result = { type = "item", name = "angels-cobalt-ore", amount = 6 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-cobalt-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-crystal-mix4-processing",
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-crystal-mix5-processing",
    result = (not special_vanilla) and { type = "item", name = "uranium-ore", amount = 3 } or nil,
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("uranium-ore", 0.5, { 10, 10 }),
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-crystal-mix6-processing",
    result = { type = "item", name = "angels-thorium-ore", amount = 3 },
    icons = {
      { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
      tweaked_icon_lookup("angels-thorium-ore", 0.5, { 10, 10 }),
    },
  }),

  -- PURE
  create_sorting_mix_recipe({
    name = "angels-ore-pure-mix1-processing",
    result = special_vanilla and { type = "item", name = "uranium-ore", amount = 6 }
      or { type = "item", name = "angels-tungsten-ore", amount = 6 },
    icons = special_vanilla
        and angelsmods.functions.add_icon_layer(
          angelsmods.functions.add_number_icon_layer({
            {
              icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
              icon_size = 32,
            },
          }, 3, angelsmods.refining.number_tint),
          tweaked_icon_lookup("uranium-ore", 0.5, { 10, 10 })
        )
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        tweaked_icon_lookup("angels-tungsten-ore", 0.5, { 10, 10 }),
      },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-pure-mix2-processing",
    result = special_vanilla and { type = "item", name = "angels-thorium-ore", amount = 3 }
      or { type = "item", name = "angels-platinum-ore", amount = 3 },
    icons = special_vanilla
      and {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png",
          icon_size = 32,
        },
        tweaked_icon_lookup("angels-thorium-ore", 0.5, { 10, 10 })
      }
      or {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        ore_enabled("platinum") and tweaked_icon_lookup("angels-platinum-ore", 0.5, { 10, 10 }) or nil,
    },
  }),
  create_sorting_mix_recipe({
    name = "angels-ore-pure-mix3-processing",
  }),
}))

if special_vanilla then
  OV.patch_recipes({
    {
      name = "angels-ore-crushed-mix1-processing",
      order = "a[iron]-a[nugget]",
    },
    {
      name = "angels-ore-crushed-mix3-processing",
      order = "b[copper]-a[nugget]",
    },
    {
      name = "angels-ore-chunk-mix1-processing",
      order = "a[iron]-b[slag]",
    },
    {
      name = "angels-ore-chunk-mix2-processing",
      order = "b[copper]-b[slag]",
    },
    {
      name = "angels-ore-chunk-mix3-processing",
      ingredients = {
        { type = "item", name = "angels-catalysator-green", amount = 0 },
        { type = "item", name = "angels-ore1-chunk", amount = "angels-ore2-chunk" },
      },
      order = "c[uranium]-a[ore]-a",
    },
    {
      name = "angels-ore-crystal-mix1-processing",
      ingredients = {
        { type = "item", name = "angels-catalysator-orange", amount = 0 },
        { type = "item", name = "angels-ore5-crystal", amount = 0 },
      },
      order = "c[uranium]-a[ore]-b",
    },
    {
      name = "angels-ore-pure-mix1-processing",
      ingredients = {
        { type = "item", name = "angels-catalysator-orange", amount = 0 },
        { type = "item", name = "angels-ore3-pure", amount = 0 },
        { type = "item", name = "angels-ore4-pure", amount = "angels-ore2-pure" },
      },
      order = "c[uranium]-a[ore]-c",
    },
    {
      name = "angels-ore-pure-mix2-processing",
      ingredients = {
        { type = "item", name = "angels-catalysator-orange", amount = 0 },
        { type = "item", name = "angels-ore2-pure", amount = "angels-ore5-pure" },
        { type = "item", name = "angels-ore5-pure", amount = 0 },
        { type = "item", name = "angels-ore6-pure", amount = 0 },
      },
      order = "d[thorium]-a[ore]-a",
    }
  })
end

-------------------------------------------------------------------------------
-- SLAG SORTING ---------------------------------------------------------------
-------------------------------------------------------------------------------
local slag_color = { { 202, 099, 017 }, { 097, 052, 020 }, { 097, 052, 020 } }

if angelsmods.functions.is_special_vanilla() then
  -- Rubyte and Bobmonium ore are disabled (5 and 6)
  -- saphirite + crotinnium (1+4)
  -- jivolite  + stiratite  (2+3)
  OV.patch_recipes({
    {
      name = "angels-slag-processing-1",
      localised_name = { "recipe-name.angels-slag_processing_2", { "item-name.angels-ore1" }, { "item-name.angels-ore4" } },
      results = {
        { "!!" },
        { type = "item", name = "angels-ore1", amount = 1, probability = 0.4 },
        { type = "item", name = "angels-ore4", amount = 1, probability = 0.4 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
          "angels-ore1",
          "angels-ore4",
        }, slag_color),
      hidden = false,
    },
    {
      name = "angels-slag-processing-2",
      localised_name = { "recipe-name.angels-slag_processing_2", { "item-name.angels-ore2" }, { "item-name.angels-ore3" } },
      results = {
        { "!!" },
        { type = "item", name = "angels-ore2", amount = 1, probability = 0.4 },
        { type = "item", name = "angels-ore3", amount = 1, probability = 0.4 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
          "angels-ore2",
          "angels-ore3",
        }, slag_color),
      hidden = false,
    },
  })
else
  -- saphirite + bobmonium  (1+6)
  -- jivolite  + crotinnium (2+4)
  -- stiratite + rubyte     (3+5)
  OV.patch_recipes({
    {
      name = "angels-slag-processing-1",
      localised_name = { "recipe-name.angels-slag_processing_2", { "item-name.angels-ore1" }, { "item-name.angels-ore6" } },
      results = {
        { "!!" },
        { type = "item", name = "angels-ore1", amount = 1, probability = 0.4 },
        { type = "item", name = "angels-ore6", amount = 1, probability = 0.4 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
          "angels-ore1",
          "angels-ore6",
        }, slag_color),
      hidden = false,
    },
    {
      name = "angels-slag-processing-2",
      localised_name = { "recipe-name.angels-slag_processing_2", { "item-name.angels-ore2" }, { "item-name.angels-ore4" } },
      results = {
        { "!!" },
        { type = "item", name = "angels-ore2", amount = 1, probability = 0.4 },
        { type = "item", name = "angels-ore4", amount = 1, probability = 0.4 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
          "angels-ore2",
          "angels-ore4",
        }, slag_color),
      hidden = false,
    },
    {
      name = "angels-slag-processing-3",
      localised_name = { "recipe-name.angels-slag_processing_2", { "item-name.angels-ore3" }, { "item-name.angels-ore5" } },
      results = {
        { "!!" },
        { type = "item", name = "angels-ore3", amount = 1, probability = 0.4 },
        { type = "item", name = "angels-ore5", amount = 1, probability = 0.4 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
          "angels-ore3",
          "angels-ore5",
        }, slag_color),
      hidden = false,
    },
  })
end

