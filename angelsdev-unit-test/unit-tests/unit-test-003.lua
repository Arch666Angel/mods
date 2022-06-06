-- This unit test validates all inputs and outputs of visible recipes to make
-- sure that they are also visible.
local unit_test_functions = require("unit-test-functions")

local recipes_to_ignore =
{
  ["electric-energy-interface"] = true, -- base game
}
local products_to_ignore =
{
  ["chemical-void"] = true,
  ["water-void"] = true,
  ["void"] = true -- Bob's void
}

local unit_test_003 = function()
  local unit_test_result = unit_test_functions.test_successful
  
  local recipe_prototypes = game.recipe_prototypes
  local item_prototypes = game.item_prototypes
  local fluid_prototypes = game.fluid_prototypes
  for recipe_name, recipe_data in pairs(recipe_prototypes) do
    if (not recipe_data.hidden) and (not recipes_to_ignore[recipe_name]) then -- only test recipes that are not hidden or ignored

      local recipe_ingredients = recipe_data.ingredients
      for _, recipe_ingredient in pairs(recipe_ingredients) do
        if recipe_ingredient.type == "item" then
          if item_prototypes[recipe_ingredient.name].has_flag("hidden") then
            unit_test_functions.print_msg(string.format("Recipe %q requires %q (item), which is hidden.", recipe_name, recipe_ingredient.name))
            unit_test_result = unit_test_functions.test_failed -- soft failure
          end
        elseif recipe_ingredient.type == "fluid" then
          if fluid_prototypes[recipe_ingredient.name].hidden then
            unit_test_functions.print_msg(string.format("Recipe %q requires %q (fluid), which is hidden.", recipe_name, recipe_ingredient.name))
            unit_test_result = unit_test_functions.test_failed -- soft failure
          end
        else
          unit_test_functions.print_msg(string.format("Unhandled testing case for recipe ingredient type %q!", recipe_ingredient.type))
          return unit_test_functions.test_invalid -- hard failure
        end
      end

      local recipe_products = recipe_data.products
      for _, recipe_product in pairs(recipe_products) do
        --add exception list for results (void results)
        if not products_to_ignore[recipe_product.name] then
          if recipe_product.type == "item" then
            if item_prototypes[recipe_product.name].has_flag("hidden") then
              unit_test_functions.print_msg(string.format("Recipe %q makes %q (item), which is hidden.", recipe_name, recipe_product.name))
              unit_test_result = unit_test_functions.test_failed -- soft failure
            end
          elseif recipe_product.type == "fluid" then
            if fluid_prototypes[recipe_product.name].hidden then
              unit_test_functions.print_msg(string.format("Recipe %q makes %q (fluid), which is hidden.", recipe_name, recipe_product.name))
              unit_test_result = unit_test_functions.test_failed -- soft failure
            end
          else
            unit_test_functions.print_msg(string.format("Unhandled testing case for recipe result type %q!", recipe_product.type))
            return unit_test_functions.test_invalid -- hard failure
          end
        end
      end
    end
  end
  return unit_test_result
end

return unit_test_003