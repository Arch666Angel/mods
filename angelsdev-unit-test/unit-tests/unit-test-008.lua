-- This unit test validates that each visible item and fluid has a valid source:
-- A visible recipe, can be mined, or is dropped as loot
local unit_test_functions = require("unit-test-functions")

local items_to_ignore = {}
local fluids_to_ignore = {}
local item_recipes_to_ignore = {}
local fluid_recipes_to_ignore = {}
local recipe_categories_to_ignore = {
  "barreling-pump",
}

local function has_recipe(recipe_filters, recipes_to_ignore)
  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  if #recipe_prototypes == 0 then
    return false
  elseif #recipes_to_ignore == 0 then
    return true
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

local unit_test_008 = function()
  local unit_test_result = unit_test_functions.test_successful

  -- Populate items_to_ignore with script items
  if game.active_mods["angelsindustries"] and (settings.startup["angels-enable-tech"].value == true) then
    items_to_ignore["angels-main-lab-0"] = true
  end

  -- Populate items_to_ignore with burnt results
  local item_filters = {}
  table.insert(item_filters, { filter = "flag", invert = true, mode = "and", flag = "hidden" })
  table.insert(item_filters, { filter = "burnt-result", invert = false, mode = "and", type = "item" })

  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for item_name, item in pairs(item_prototypes) do
    items_to_ignore[item.burnt_result.name] = true
  end

  -- Populate items_to_ignore and fluids_to_ignore with mining results
  local entity_filters = {}
  table.insert(entity_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(entity_filters, { filter = "minable", invert = false, mode = "and" })
  table.insert(entity_filters, { filter = "autoplace", invert = false, mode = "and" })

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if entity.mineable_properties.products then
      for _, product in pairs(entity.mineable_properties.products) do
        if product.type == "item" then
          items_to_ignore[product.name] = true
        else
          fluids_to_ignore[product.name] = true
        end
      end
    end
  end

  -- Populate items_to_ignore with rocket launch products
  local item_filters = {}
  table.insert(item_filters, { filter = "flag", invert = true, mode = "and", flag = "hidden" })
  table.insert(item_filters, { filter = "has-rocket-launch-products", invert = false, mode = "and" })

  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for item_name, item in pairs(item_prototypes) do
    for _, product in pairs(item.rocket_launch_products) do
      if product.type == "item" then
        items_to_ignore[product.name] = true
      else
        fluids_to_ignore[product.name] = true
      end
    end
  end

  -- Populate items_to_ignore with enemy drops
  local entity_filters = {}
  table.insert(entity_filters, { filter = "hidden", invert = true, mode = "and" })

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    local loot = entity.loot
    if loot then
      for _, loot_item in pairs(loot) do
        if (loot_item.probability > 0) and (loot_item.count_max > 0) then
          items_to_ignore[loot_item.item] = true
        end
      end
    end
  end

  -- Populate fluid_recipes_to_ignore with unbarreling recipes
  local recipe_filters = {}
  if #recipe_categories_to_ignore > 0 then
    for _, category_name in pairs(recipe_categories_to_ignore) do
      if game.recipe_category_prototypes[category_name] then
        table.insert(recipe_filters, { filter = "category", invert = false, mode = "or", category = category_name })
      end
    end
  end

  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  for recipe_name, recipe in pairs(recipe_prototypes) do
    fluid_recipes_to_ignore[recipe_name] = true
  end

  -- Populate fluids_to_ignore with offshore pump results
  local entity_filters = {}
  table.insert(entity_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(entity_filters, { filter = "type", type = "offshore-pump", mode = "and" })

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    local fluid = entity.fluid
    if fluid then
      fluids_to_ignore[fluid.name] = true
    end
  end

  -- Populate fluid_to_ignore with boiler results
  local entity_filters = {}
  table.insert(entity_filters, { filter = "type", type = "boiler", mode = "or" })
  table.insert(entity_filters, { filter = "hidden", mode = "and", invert = true })
  table.insert(entity_filters, { filter = "type", type = "boiler", mode = "or" })
  table.insert(entity_filters, { filter = "flag", flag = "player-creation", mode = "and" })
  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for boiler_name, boiler in pairs(entity_prototypes) do
    for _, fluidbox in pairs(boiler.fluidbox_prototypes) do
      if fluidbox.filter and fluidbox.production_type == "output" then
        fluids_to_ignore[fluidbox.filter.name] = true
        break
      end
    end
  end

  -- Check items
  local item_filters = {}
  table.insert(item_filters, { filter = "flag", invert = true, mode = "and", flag = "hidden" })
  table.insert(item_filters, { filter = "type", invert = true, mode = "and", type = "blueprint" })
  table.insert(item_filters, { filter = "type", invert = true, mode = "and", type = "blueprint-book" })
  table.insert(item_filters, { filter = "type", invert = true, mode = "and", type = "deconstruction-item" })
  table.insert(item_filters, { filter = "type", invert = true, mode = "and", type = "upgrade-item" })

  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for item_name, item in pairs(item_prototypes) do
    if not items_to_ignore[item_name] then
      local recipe_filters = {}
      table.insert(recipe_filters, { filter = "hidden", invert = true, mode = "and" })
      table.insert(recipe_filters, {
        filter = "has-product-item",
        invert = false,
        mode = "and",
        elem_filters = { { filter = "name", name = item_name } },
      })

      if not has_recipe(recipe_filters, item_recipes_to_ignore) then
        unit_test_functions.print_msg(string.format("No recipe is creating item %q as a product.", item_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  -- Check fluids
  local fluid_filters = {}
  table.insert(fluid_filters, { filter = "hidden", invert = true, mode = "and" })

  local fluid_prototypes = game.get_filtered_fluid_prototypes(fluid_filters)

  for fluid_name, fluid in pairs(fluid_prototypes) do
    if not fluids_to_ignore[fluid_name] then
      local recipe_filters = {}
      table.insert(recipe_filters, { filter = "hidden", invert = true, mode = "and" })
      table.insert(recipe_filters, {
        filter = "has-product-fluid",
        invert = false,
        mode = "and",
        elem_filters = { { filter = "name", name = fluid_name } },
      })

      if not has_recipe(recipe_filters, fluid_recipes_to_ignore) then
        unit_test_functions.print_msg(string.format("No recipe is creating fluid %q as a product.", fluid_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  return unit_test_result
end

return unit_test_008
