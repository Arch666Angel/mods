-- This unit test checks for items and fluids that are unused
local unit_test_functions = require("unit-test-functions")

local item_recipes_to_ignore = {}

local fluid_recipes_to_ignore = {}

local function has_recipe(recipe_filters, recipes_to_ignore)
  local recipe_prototypes = prototypes.get_recipe_filtered(recipe_filters)

  if #recipe_prototypes == 0 then
    return false
  else
    local used = false
    for recipe_name, recipe in pairs(recipe_prototypes) do
      if not recipes_to_ignore[recipe_name] then
        used = true
        break
      end
    end

    return used
  end
end

local function has_generator(fluid_name)
  local generator_filters = {
    { filter = "type", type = "fusion-generator", mode = "and" },
  }
  local generator_prototypes = prototypes.get_entity_filtered(generator_filters)
  for _, generator_prototype in pairs(generator_prototypes) do
    for _, fluidbox in pairs(generator_prototype.fluidbox_prototypes) do
      if fluidbox.production_type == "input" and fluidbox.filter and fluidbox.filter.name == fluid_name then
        return true
      end
    end
  end
  return false
end

local unit_test_007 = function()
  local unit_test_result = unit_test_functions.test_successful

  local items_to_ignore = {}

  -- Ignore recipe result items that create rockets, which are 'used' to launch to space
  local rocket_silo_filters = {}
  table.insert(rocket_silo_filters, { filter = "type", invert = false, mode = "and", type = "rocket-silo" })
  local rocket_silo_prototypes = prototypes.get_entity_filtered(rocket_silo_filters)
  local rocket_silo_fixed_recipe_names = {} -- fixed recipe names in rocket silos
  local rocket_silo_recipe_categories = {} -- rocket silo crafting categories without fixed recipes
  for _, rocket_silo_prototype in pairs(rocket_silo_prototypes) do
    if rocket_silo_prototype.fixed_recipe then
      table.insert(rocket_silo_fixed_recipe_names, rocket_silo_prototype.fixed_recipe)
    else
      for rocket_silo_crafting_category, _ in pairs(rocket_silo_prototype.crafting_categories) do
        rocket_silo_recipe_categories[rocket_silo_crafting_category] = true
      end
    end
  end
  local rocket_silo_recipe_filters = {} -- create list of recipes using the list of rocket silo crafting categories
  for rocket_silo_recipe_category, _ in pairs(rocket_silo_recipe_categories) do
    table.insert(
      rocket_silo_recipe_filters,
      { filter = "category", invert = false, mode = "or", category = rocket_silo_recipe_category }
    )
  end
  local rocket_silo_recipes = {} -- create a list of all recipes that can be made in a rocket silo
  if #rocket_silo_recipe_filters > 0 then
    rocket_silo_recipes = prototypes.get_recipe_filtered(rocket_silo_recipe_filters)
  end
  local recipe_prototypes = prototypes.recipe
  for _, rocket_silo_fixed_recipe_name in pairs(rocket_silo_fixed_recipe_names) do
    table.insert(rocket_silo_recipes, recipe_prototypes[rocket_silo_fixed_recipe_name]) -- extend the recipe list with the fixed recipes
  end
  for _, rocket_silo_recipe in pairs(rocket_silo_recipes) do
    for _, rocket_silo_product in pairs(rocket_silo_recipe.products) do
      if
        rocket_silo_product.type == "item"
        and (rocket_silo_product.amount or (rocket_silo_product.amount_min and rocket_silo_product.probability))
      then
        table.insert(items_to_ignore, rocket_silo_product.name)
      end
    end
  end

  -- Add vanilla items that are intentionally not used in crafting
  table.insert(items_to_ignore, "satellite")

  -- Add SpaceMod items that are intentinally not used in crafting
  if script.active_mods["SpaceMod"] then
    table.insert(items_to_ignore, "drydock-assembly")
    table.insert(items_to_ignore, "drydock-structural")
    table.insert(items_to_ignore, "fission-reactor")
    table.insert(items_to_ignore, "hull-component")
    table.insert(items_to_ignore, "protection-field")
    table.insert(items_to_ignore, "space-thruster")
    table.insert(items_to_ignore, "fuel-cell")
    table.insert(items_to_ignore, "habitation")
    table.insert(items_to_ignore, "life-support")
    table.insert(items_to_ignore, "command")
    table.insert(items_to_ignore, "astrometrics")
    table.insert(items_to_ignore, "ftl-drive")
  end

  -- Populate fluid_recipes_to_ignore with voiding and barreling recipes
  local recipe_filters = {}
  table.insert(recipe_filters, {
    filter = "has-product-item",
    invert = false,
    mode = "or",
    elem_filters = { { filter = "name", name = "angels-chemical-void" } },
  })
  table.insert(recipe_filters, {
    filter = "has-product-item",
    invert = false,
    mode = "or",
    elem_filters = { { filter = "name", name = "angels-water-void" } },
  })

  local recipe_prototypes = prototypes.get_recipe_filtered(recipe_filters)

  for recipe_name, recipe in pairs(recipe_prototypes) do
    fluid_recipes_to_ignore[recipe_name] = true
  end

  -- Check items that do not have a purpose specified in their ItemPrototype (such as being placeable as a tile or being fuel)
  local item_filters = {}
  table.insert(item_filters, { filter = "tool", invert = true, mode = "and" })
  table.insert(item_filters, { filter = "selection-tool", invert = true, mode = "and" })
  table.insert(item_filters, { filter = "fuel", invert = true, mode = "and" })
  table.insert(item_filters, { filter = "place-result", invert = true, mode = "and" })
  table.insert(item_filters, { filter = "place-as-tile", invert = true, mode = "and" })
  table.insert(item_filters, { filter = "placed-as-equipment-result", invert = true, mode = "and" })
  table.insert(item_filters, { filter = "type", invert = false, mode = "and", type = "item" })
  table.insert(item_filters, { filter = "name", invert = true, mode = "and", name = items_to_ignore })
  table.insert(item_filters, { filter = "subgroup", invert = true, mode = "and", subgroup = "parameters" })
  table.insert(item_filters, { filter = "subgroup", invert = true, mode = "and", subgroup = "spawnables" })

  local item_prototypes = prototypes.get_item_filtered(item_filters)

  for item_name, item in pairs(item_prototypes) do
    -- TODO: Remove this check when "hidden" can be used as and ItemPrototypeFilter
    if not item.hidden then
      local recipe_filters = {}
      table.insert(recipe_filters, { filter = "hidden", invert = true, mode = "and" })
      table.insert(recipe_filters, {
        filter = "has-ingredient-item",
        invert = false,
        mode = "and",
        elem_filters = { { filter = "name", name = item_name } },
      })

      if not has_recipe(recipe_filters, item_recipes_to_ignore) then
        unit_test_functions.print_msg(string.format("No (useful) recipe is using item %q as an ingredient.", item_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  -- Check fluids
  local fluid_filters = {}
  table.insert(fluid_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(fluid_filters, { filter = "fuel-value", invert = true, mode = "and", comparison = ">", value = 0.0 })
  table.insert(fluid_filters, { filter = "subgroup", invert = true, mode = "and", subgroup = "parameters" })

  local fluid_prototypes = prototypes.get_fluid_filtered(fluid_filters)

  for fluid_name, fluid in pairs(fluid_prototypes) do
    local recipe_filters = {}
    table.insert(recipe_filters, { filter = "hidden", invert = true, mode = "and" })
    table.insert(recipe_filters, {
      filter = "has-ingredient-fluid",
      invert = false,
      mode = "and",
      elem_filters = { { filter = "name", name = fluid_name } },
    })

    if not has_recipe(recipe_filters, fluid_recipes_to_ignore) and not has_generator(fluid_name) then
      unit_test_functions.print_msg(string.format("No (useful) recipe is using fluid %q as an ingredient.", fluid_name))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  return unit_test_result
end

return unit_test_007
